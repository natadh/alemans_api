<?php
require_once __DIR__ . "/../includes/headers.php";

try {
    // Get optional country_id filter from GET
    $country_id = $_GET['country_id'] ?? null;

    if ($country_id) {
        $stmt = $pdo->prepare("
            SELECT s.id, s.title, s.category_id
            FROM subcategories s
            INNER JOIN categories c ON s.category_id = c.id
            WHERE c.country_id = :country_id
            ORDER BY s.title ASC
        ");
        $stmt->execute(['country_id' => $country_id]);
    } else {
        $stmt = $pdo->prepare("
            SELECT s.id, s.title, s.category_id
            FROM subcategories s
            ORDER BY s.title ASC
        ");
        $stmt->execute();
    }

    $subcategories = $stmt->fetchAll(PDO::FETCH_ASSOC);

    echo json_encode([
        "success" => true,
        "count" => count($subcategories),
        "data" => $subcategories
    ]);

} catch (PDOException $e) {
    http_response_code(500);
    echo json_encode([
        "success" => false,
        "message" => "Failed to fetch subcategories",
        "error" => $e->getMessage()
    ]);
}