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

    // Optional: check if safaris exist for this subcategory
    $stmtCheck = $pdo->prepare("SELECT COUNT(*) FROM safaris WHERE subcategory_id = :id");
    $stmtCheck->execute(['id' => $id]);
    $count = $stmtCheck->fetchColumn();

    if ($count > 0) {
        http_response_code(400);
        echo json_encode([
            "success" => false,
            "message" => "Cannot delete subcategory with safaris"
        ]);
        exit;
    }

    $stmt = $pdo->prepare("DELETE FROM subcategories WHERE id = :id");
    $stmt->execute(['id' => $id]);

    echo json_encode([
        "success" => true,
        "message" => "Subcategory deleted successfully"
    ]);

} catch (PDOException $e) {
    http_response_code(500);
    echo json_encode([
        "success" => false,
        "message" => "Failed to delete subcategory",
        "error" => $e->getMessage()
    ]);
}