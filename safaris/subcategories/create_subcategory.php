<?php
require_once __DIR__ . "/../../includes/headers.php";

try {
    $title = $_POST['title'] ?? null;
    $category_id = $_POST['category_id'] ?? null;

    if (!$title || !$category_id) {
        http_response_code(400);
        echo json_encode([
            "success" => false,
            "message" => "Title and category_id are required"
        ]);
        exit;
    }

    $stmt = $pdo->prepare("
        INSERT INTO subcategories (title, category_id)
        VALUES (:title, :category_id)
    ");

    $stmt->execute([
        'title' => $title,
        'category_id' => $category_id
    ]);

    echo json_encode([
        "success" => true,
        "message" => "Subcategory created successfully",
        "id" => $pdo->lastInsertId()
    ]);

} catch (PDOException $e) {
    http_response_code(500);
    echo json_encode([
        "success" => false,
        "message" => "Failed to create subcategory",
        "error" => $e->getMessage()
    ]);
}