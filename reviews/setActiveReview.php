<?php
require_once __DIR__ . '/../includes/headers.php';

$data = json_decode(file_get_contents("php://input"), true);
$id = $data['id'] ?? null;
$is_active = isset($data['is_active']) ? intval($data['is_active']) : 0;

if (!$id) {
    http_response_code(400);
    echo json_encode(["success" => false, "message" => "Invalid ID"]);
    exit;
}

try {
    $stmt = $pdo->prepare("UPDATE reviews SET is_active = ? WHERE id = ?");
    $stmt->execute([$is_active, $id]);

    echo json_encode(["success" => true, "message" => "Review updated"]);
} catch (Exception $e) {
    http_response_code(500);
    echo json_encode(["success" => false, "message" => "Failed to update review"]);
}