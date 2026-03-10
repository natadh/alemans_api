<?php
require_once __DIR__ . "/../../includes/headers.php";

function generateSlug($text)
{
    $text = strtolower($text);
    $text = preg_replace('~[^\pL\d]+~u', '-', $text);
    $text = trim($text, '-');
    $text = preg_replace('~[^-\w]+~', '', $text);

    return $text ?: "safari";
}

try {

    $id = $_POST['id'] ?? null;
    $title = $_POST['title'] ?? null;
    $destination = $_POST['destination'] ?? null;
    $description = $_POST['description'] ?? null;
    $duration_label = $_POST['duration_label'] ?? null;
    $currency = $_POST['currency'] ?? null;
    $price_from = $_POST['price_from'] ?? null;
    $price_note = $_POST['price_note'] ?? null;
    $subcategory_id = $_POST['subcategory_id'] ?? null;

    if (!$id || !$title || !$subcategory_id) {
        http_response_code(400);
        echo json_encode([
            "success" => false,
            "message" => "ID, Title, and subcategory_id are required"
        ]);
        exit;
    }

    /*
    -------------------------
    Generate slug
    -------------------------
    */

    $baseSlug = generateSlug($title);
    $slug = $baseSlug;
    $counter = 1;

    while (true) {
        $stmt = $pdo->prepare("SELECT COUNT(*) FROM safaris WHERE slug = ? AND id != ?");
        $stmt->execute([$slug, $id]);
        $exists = $stmt->fetchColumn();

        if (!$exists) break;

        $slug = $baseSlug . "-" . $counter;
        $counter++;
    }

    /*
    -------------------------
    Update safari
    -------------------------
    */

    $stmt = $pdo->prepare("
        UPDATE safaris
        SET
            slug = :slug,
            title = :title,
            destination = :destination,
            description = :description,
            duration_label = :duration_label,
            currency = :currency,
            price_from = :price_from,
            price_note = :price_note,
            subcategory_id = :subcategory_id
        WHERE id = :id
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
        "message" => "Safari updated successfully",
        "slug" => $slug
    ]);

} catch (Throwable $e) {

    http_response_code(500);

    echo json_encode([
        "success" => false,
        "message" => "Failed to update safari",
        "error" => $e->getMessage()
    ]);
}