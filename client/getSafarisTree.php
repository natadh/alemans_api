<?php

require_once __DIR__ . "/../includes/headers.php";

try {

    $country_id = $_GET['country_id'] ?? 1;

    /*
    ------------------------------------------------
    FETCH ALL DATA
    ------------------------------------------------
    */

    // Categories
    $stmt = $pdo->prepare("
        SELECT id, title
        FROM categories
        WHERE country_id = :country_id
        ORDER BY title
    ");
    $stmt->execute(['country_id' => $country_id]);
    $categories = $stmt->fetchAll(PDO::FETCH_ASSOC);

    // Subcategories
    $stmt = $pdo->prepare("
        SELECT id, title, category_id
        FROM subcategories
        ORDER BY title
    ");
    $stmt->execute();
    $subcategories = $stmt->fetchAll(PDO::FETCH_ASSOC);

    // Safaris
    $stmt = $pdo->prepare("
        SELECT id, slug, title, destination, description,
               duration_label, currency, price_from, price_note,
               subcategory_id
        FROM safaris
        ORDER BY title
    ");
    $stmt->execute();
    $safaris = $stmt->fetchAll(PDO::FETCH_ASSOC);

    // Images
    $stmt = $pdo->prepare("
        SELECT safari_id, src, alt, caption
        FROM safari_images
        ORDER BY id
    ");
    $stmt->execute();
    $images = $stmt->fetchAll(PDO::FETCH_ASSOC);

    // Itineraries
    $stmt = $pdo->prepare("
        SELECT safari_id, day_number, title, description, meals, activities
        FROM safari_itinerary
        ORDER BY safari_id, day_number
    ");
    $stmt->execute();
    $itineraries = $stmt->fetchAll(PDO::FETCH_ASSOC);

    // Safari details (includes, excludes, highlights)
    $stmt = $pdo->prepare("
        SELECT safari_id, includes, excludes, highlights
        FROM safari_details
    ");
    $stmt->execute();
    $details = $stmt->fetchAll(PDO::FETCH_ASSOC);

    /*
    ------------------------------------------------
    GROUP DATA BY SAFARI
    ------------------------------------------------
    */

    $imagesBySafari = [];
    foreach ($images as $img) {
        $imagesBySafari[$img['safari_id']][] = [
            "src" => $img['src'],
            "alt" => $img['alt'],
            "caption" => $img['caption']
        ];
    }

    $itineraryBySafari = [];
    foreach ($itineraries as $day) {
        $itineraryBySafari[$day['safari_id']][] = [
            "dayNumber" => (int)$day['day_number'],
            "title" => $day['title'],
            "description" => $day['description'],
            "meals" => $day['meals'] ? explode(",", $day['meals']) : [],
            "activities" => $day['activities'] ? explode(",", $day['activities']) : []
        ];
    }

    $detailsBySafari = [];
    foreach ($details as $d) {
        $detailsBySafari[$d['safari_id']] = [
            "includes" => $d['includes'] ? json_decode($d['includes'], true) : [],
            "excludes" => $d['excludes'] ? json_decode($d['excludes'], true) : [],
            "highlights" => $d['highlights'] ? json_decode($d['highlights'], true) : []
        ];
    }

    /*
    ------------------------------------------------
    GROUP SAFARIS BY SUBCATEGORY
    ------------------------------------------------
    */

    $safarisBySub = [];

    foreach ($safaris as $s) {

        $safari = [
            "id" => $s['id'],
            "slug" => $s['slug'],
            "title" => $s['title'],
            "destination" => $s['destination'],
            "description" => $s['description'],
            "durationLabel" => $s['duration_label'],
            "images" => $imagesBySafari[$s['id']] ?? [],
            "itinerary" => isset($itineraryBySafari[$s['id']]) ? [
                "durationDays" => count($itineraryBySafari[$s['id']]),
                "days" => $itineraryBySafari[$s['id']]
            ] : null,
            // Attach details if they exist
            "includes" => $detailsBySafari[$s['id']]['includes'] ?? [],
            "excludes" => $detailsBySafari[$s['id']]['excludes'] ?? [],
            "highlights" => $detailsBySafari[$s['id']]['highlights'] ?? []
        ];

        if ($s['price_from']) {
            $safari["price"] = [
                "amountFrom" => (int)$s['price_from'],
                "currency" => $s['currency'],
                "note" => $s['price_note']
            ];
        }

        $safarisBySub[$s['subcategory_id']][] = $safari;
    }

    /*
    ------------------------------------------------
    GROUP SUBCATEGORIES BY CATEGORY
    ------------------------------------------------
    */

    $subsByCategory = [];

    foreach ($subcategories as $sub) {
        $subsByCategory[$sub['category_id']][] = [
            "id" => (string)$sub['id'],
            "title" => $sub['title'],
            "safaris" => $safarisBySub[$sub['id']] ?? []
        ];
    }

    /*
    ------------------------------------------------
    BUILD FINAL TREE
    ------------------------------------------------
    */

    $result = [];

    foreach ($categories as $cat) {
        $result[] = [
            "id" => (string)$cat['id'],
            "title" => $cat['title'],
            "subcategories" => $subsByCategory[$cat['id']] ?? []
        ];
    }

    echo json_encode([
        "success" => true,
        "data" => $result
    ]);

} catch (PDOException $e) {
    http_response_code(500);
    echo json_encode([
        "success" => false,
        "message" => "Failed to load safari tree",
        "error" => $e->getMessage()
    ]);
}