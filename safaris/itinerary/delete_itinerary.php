<?php
require_once __DIR__ . "/../../includes/headers.php";

try {
    $id = $_POST['id'] ?? null;

    if (!$id) {
        http_response_code(400);
        echo json_encode([
            "success" => false,
            "message" => "Day ID required"
        ]);
        exit;
    }

    $stmt = $pdo->prepare("DELETE FROM safari_itinerary WHERE id = :id");
    $stmt->execute(["id" => $id]);

    echo json_encode(["success" => true]);

} catch (PDOException $e) {
    http_response_code(500);
    echo json_encode([
        "success" => false,
        "message" => "Failed to delete itinerary day",
        "error" => $e->getMessage()
    ]);
}