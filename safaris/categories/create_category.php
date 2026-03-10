<?php
require_once __DIR__ . "/../../includes/headers.php";

try {
    // Get POST data
    $title = $_POST['title'] ?? null;
    $country_id = $_POST['country_id'] ?? null; // New field

    if (!$title || !$country_id) {
        http_response_code(400);
        echo json_encode([
            "success" => false,
            "message" => "Title and country_id are required"
        ]);
        exit;
    }

    $stmt = $pdo->prepare("
        INSERT INTO categories (title, country_id)
        VALUES (:title, :country_id)
    ");

    $stmt->execute([
        'title' => $title,
        'country_id' => $country_id
    ]);

    echo json_encode([
        "success" => true,
        "message" => "Category created successfully",
        "id" => $pdo->lastInsertId()
    ]);

} catch (PDOException $e) {
    http_response_code(500);
    echo json_encode([
        "success" => false,
        "message" => "Failed to create category",
        "error" => $e->getMessage()
    ]);
}