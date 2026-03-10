<?php
require_once __DIR__ . "/../../includes/headers.php";

try {
    $id = $_POST['id'] ?? null;

    if (!$id) {
        http_response_code(400);
        echo json_encode([
            "success" => false,
            "message" => "ID is required"
        ]);
        exit;
    }

    // Optional: check if subcategories exist for this category
    $stmtCheck = $pdo->prepare("SELECT COUNT(*) FROM subcategories WHERE category_id = :id");
    $stmtCheck->execute(['id' => $id]);
    $count = $stmtCheck->fetchColumn();

    if ($count > 0) {
        http_response_code(400);
        echo json_encode([
            "success" => false,
            "message" => "Cannot delete category with subcategories"
        ]);
        exit;
    }

    $stmt = $pdo->prepare("DELETE FROM categories WHERE id = :id");
    $stmt->execute(['id' => $id]);

    echo json_encode([
        "success" => true,
        "message" => "Category deleted successfully"
    ]);

} catch (PDOException $e) {
    http_response_code(500);
    echo json_encode([
        "success" => false,
        "message" => "Failed to delete category",
        "error" => $e->getMessage()
    ]);
}