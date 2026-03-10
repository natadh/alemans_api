<?php
require_once __DIR__ . "/../../includes/headers.php";

try {
    $id = $_POST['id'] ?? null;
    $title = $_POST['title'] ?? null;

    if (!$id || !$title) {
        http_response_code(400);
        echo json_encode([
            "success" => false,
            "message" => "ID and Title are required"
        ]);
        exit;
    }

    $stmt = $pdo->prepare("
        UPDATE categories
        SET title = :title
        WHERE id = :id
    ");

    $stmt->execute([
        'id' => $id,
        'title' => $title
    ]);

    echo json_encode([
        "success" => true,
        "message" => "Category updated successfully"
    ]);

} catch (PDOException $e) {
    http_response_code(500);
    echo json_encode([
        "success" => false,
        "message" => "Failed to update category",
        "error" => $e->getMessage()
    ]);
}