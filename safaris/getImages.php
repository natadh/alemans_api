<?php
require_once __DIR__ . "/../includes/headers.php";

try {

    $safari_id = $_GET['safari_id'] ?? null;

    $query = "
        SELECT id, safari_id, src, alt, caption
        FROM safari_images
        WHERE 1
    ";

    $params = [];

    if ($safari_id) {
        $query .= " AND safari_id = :safari_id";
        $params['safari_id'] = $safari_id;
    }

    // Order first by safari, then by image id
    $query .= " ORDER BY safari_id ASC, id ASC";

    $stmt = $pdo->prepare($query);
    $stmt->execute($params);

    $images = $stmt->fetchAll(PDO::FETCH_ASSOC);

    echo json_encode([
        "success" => true,
        "count" => count($images),
        "data" => $images
    ]);

} catch (PDOException $e) {

    http_response_code(500);

    echo json_encode([
        "success" => false,
        "message" => "Failed to fetch images",
        "error" => $e->getMessage()
    ]);
}