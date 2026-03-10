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

    $stmt = $pdo->prepare("DELETE FROM safaris WHERE id = :id");
    $stmt->execute(['id' => $id]);

    echo json_encode([
        "success" => true,
        "message" => "Safari deleted successfully"
    ]);

} catch (PDOException $e) {
    http_response_code(500);
    echo json_encode([
        "success" => false,
        "message" => "Failed to delete safari",
        "error" => $e->getMessage()
    ]);
}