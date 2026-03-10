<?php

require_once __DIR__ . "/../includes/headers.php";

try {
    // Get optional country_id from GET, default to null
    $country_id = $_GET['country_id'] ?? null;

    if ($country_id) {
        $stmt = $pdo->prepare("
            SELECT id, title
            FROM categories
            WHERE country_id = :country_id
            ORDER BY title ASC
        ");
        $stmt->execute(['country_id' => $country_id]);
    } else {
        // If no country_id is provided, return all categories
        $stmt = $pdo->prepare("
            SELECT id, title
            FROM categories
            ORDER BY title ASC
        ");
        $stmt->execute();
    }

    $categories = $stmt->fetchAll(PDO::FETCH_ASSOC);

    echo json_encode([
        "success" => true,
        "count" => count($categories),
        "data" => $categories
    ]);

} catch (PDOException $e) {
    http_response_code(500);
    echo json_encode([
        "success" => false,
        "message" => "Failed to fetch categories",
        "error" => $e->getMessage()
    ]);
}