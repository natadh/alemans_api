<?php
require_once __DIR__ . "/../../includes/headers.php";

try {
    $id = $_POST['id'] ?? null;
    $title = $_POST['title'] ?? null;
    $category_id = $_POST['category_id'] ?? null;

    if (!$id || !$title || !$category_id) {
        http_response_code(400);
        echo json_encode([
            "success" => false,
            "message" => "ID, title, and category_id are required"
        ]);
        exit;
    }

    $stmt = $pdo->prepare("
        UPDATE subcategories
        SET title = :title, category_id = :category_id
        WHERE id = :id
    ");

    $stmt->execute([
        'id' => $id,
        'title' => $title,
        'category_id' => $category_id
    ]);

    echo json_encode([
        "success" => true,
        "message" => "Subcategory updated successfully"
    ]);

} catch (PDOException $e) {
    http_response_code(500);
    echo json_encode([
        "success" => false,
        "message" => "Failed to update subcategory",
        "error" => $e->getMessage()
    ]);
}