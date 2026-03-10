<?php
require_once __DIR__ . "/../includes/headers.php";

try {
    // Optional filters from GET
    $subcategory_id = $_GET['subcategory_id'] ?? null;
    $country_id = $_GET['country_id'] ?? null;

    // Base query with joins to ensure country filter works
    $query = "
        SELECT s.id, s.slug, s.title, s.destination, s.description, s.duration_label,
               s.currency, s.price_from, s.price_note, s.subcategory_id
        FROM safaris s
        INNER JOIN subcategories sc ON s.subcategory_id = sc.id
        INNER JOIN categories c ON sc.category_id = c.id
        WHERE 1
    ";

    $params = [];

    if ($subcategory_id) {
        $query .= " AND s.subcategory_id = :subcategory_id";
        $params['subcategory_id'] = $subcategory_id;
    }

    if ($country_id) {
        $query .= " AND c.country_id = :country_id";
        $params['country_id'] = $country_id;
    }

    $query .= " ORDER BY s.title ASC";

    $stmt = $pdo->prepare($query);
    $stmt->execute($params);

    $safaris = $stmt->fetchAll(PDO::FETCH_ASSOC);

    echo json_encode([
        "success" => true,
        "count" => count($safaris),
        "data" => $safaris
    ]);

} catch (PDOException $e) {
    http_response_code(500);
    echo json_encode([
        "success" => false,
        "message" => "Failed to fetch safaris",
        "error" => $e->getMessage()
    ]);
}