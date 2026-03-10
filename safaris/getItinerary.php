<?php
require_once __DIR__ . "/../includes/headers.php";

try {
    $safari_id = $_GET['safari_id'] ?? null;

    $query = "
        SELECT id, safari_id, day_number, title, description, meals, activities
        FROM safari_itinerary
        WHERE 1
    ";

    $params = [];

    if ($safari_id) {
        $query .= " AND safari_id = :safari_id";
        $params['safari_id'] = $safari_id;
    }

    $query .= " ORDER BY safari_id ASC, day_number ASC";

    $stmt = $pdo->prepare($query);
    $stmt->execute($params);

    $itinerary = $stmt->fetchAll(PDO::FETCH_ASSOC);

    // make sure nothing else is echoed before this
    echo json_encode([
        "success" => true,
        "count" => count($itinerary),
        "data" => $itinerary
    ]);

} catch (PDOException $e) {
    http_response_code(500);
    echo json_encode([
        "success" => false,
        "message" => "Failed to fetch itinerary",
        "error" => $e->getMessage()
    ]);
}