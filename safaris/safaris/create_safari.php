<?php
require_once __DIR__ . "/../../includes/headers.php";

function generateSlug($text)
{
    $text = strtolower($text);

    // replace non letters or digits with -
    $text = preg_replace('~[^\pL\d]+~u', '-', $text);

    // trim
    $text = trim($text, '-');

    // remove unwanted characters
    $text = preg_replace('~[^-\w]+~', '', $text);

    if (empty($text)) {
        return 'safari';
    }

    return $text;
}

try {

    $title = $_POST['title'] ?? null;
    $destination = $_POST['destination'] ?? null;
    $description = $_POST['description'] ?? null;
    $duration_label = $_POST['duration_label'] ?? null;
    $currency = $_POST['currency'] ?? null;
    $price_from = $_POST['price_from'] ?? null;
    $price_note = $_POST['price_note'] ?? null;
    $subcategory_id = $_POST['subcategory_id'] ?? null;

    if (!$title || !$subcategory_id) {
        http_response_code(400);
        echo json_encode([
            "success" => false,
            "message" => "Title and subcategory_id are required"
        ]);
        exit;
    }

    /*
    ----------------------------------
    Generate slug
    ----------------------------------
    */

    $baseSlug = generateSlug($title);
    $slug = $baseSlug;
    $counter = 1;

    while (true) {
        $stmt = $pdo->prepare("SELECT COUNT(*) FROM safaris WHERE slug = ?");
        $stmt->execute([$slug]);
        $exists = $stmt->fetchColumn();

        if (!$exists) break;

        $slug = $baseSlug . "-" . $counter;
        $counter++;
    }

    /*
    ----------------------------------
    Determine country from subcategory
    ----------------------------------
    */

    $stmt = $pdo->prepare("
        SELECT c.name as country_name
        FROM subcategories sub
        JOIN categories cat ON sub.category_id = cat.id
        JOIN countries c ON cat.country_id = c.id
        WHERE sub.id = ?
        LIMIT 1
    ");

    $stmt->execute([$subcategory_id]);
    $country = $stmt->fetchColumn();

    if (!$country) {
        throw new Exception("Invalid subcategory_id");
    }

    /*
    ----------------------------------
    Generate ID prefix
    ----------------------------------
    */

    $prefix = strtoupper(substr($country, 0, 1)) . "AA";

    /*
    ----------------------------------
    Find largest safari number
    ----------------------------------
    */

    $stmt = $pdo->prepare("
        SELECT id
        FROM safaris
        WHERE UPPER(id) LIKE :prefix
        ORDER BY id DESC
        LIMIT 1
    ");

    $stmt->execute([
        "prefix" => $prefix . "-%"
    ]);

    $last = $stmt->fetchColumn();
    $nextNumber = 1;

    if ($last) {
        preg_match('/(\d+)$/', strtoupper($last), $matches);
        if ($matches) {
            $nextNumber = intval($matches[1]) + 1;
        }
    }

    $id = $prefix . "-" . str_pad($nextNumber, 3, "0", STR_PAD_LEFT);

    /*
    ----------------------------------
    Insert safari
    ----------------------------------
    */

    $stmt = $pdo->prepare("
        INSERT INTO safaris 
        (id, slug, title, destination, description, duration_label, currency, price_from, price_note, subcategory_id)
        VALUES 
        (:id, :slug, :title, :destination, :description, :duration_label, :currency, :price_from, :price_note, :subcategory_id)
    ");

    $stmt->execute([
        "id" => $id,
        "slug" => $slug,
        "title" => $title,
        "destination" => $destination,
        "description" => $description,
        "duration_label" => $duration_label,
        "currency" => $currency,
        "price_from" => $price_from,
        "price_note" => $price_note,
        "subcategory_id" => $subcategory_id
    ]);

    echo json_encode([
        "success" => true,
        "message" => "Safari created successfully",
        "id" => $id,
        "slug" => $slug
    ]);

} catch (Throwable $e) {

    http_response_code(500);

    echo json_encode([
        "success" => false,
        "message" => "Failed to create safari",
        "error" => $e->getMessage()
    ]);
}