<?php
require_once __DIR__ . '/../includes/headers.php';

if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
    http_response_code(405);
    exit;
}

$data = json_decode(file_get_contents("php://input"), true);

$name = $data['name'] ?? '';
$age = isset($data['age']) ? intval($data['age']) : null;
$destination = $data['destination'] ?? '';
$comment = $data['comment'] ?? '';
$rating = isset($data['rating']) ? floatval($data['rating']) : 5.0;
$date = $data['date'] ?? null; // e.g., "January 2025"

if (!$name || !$comment) {
    http_response_code(400);
    echo json_encode(["success" => false, "message" => "Name and comment are required"]);
    exit;
}

if ($rating < 0 || $rating > 5) {
    http_response_code(400);
    echo json_encode(["success" => false, "message" => "Rating must be between 0 and 5"]);
    exit;
}

try {
    $stmt = $pdo->prepare("
        INSERT INTO reviews (name, age, rating, destination, comment, date, is_active)
        VALUES (?, ?, ?, ?, ?, ?, 1)
    ");

    $stmt->execute([$name, $age, $rating, $destination, $comment, $date]);

    echo json_encode([
        "success" => true,
        "message" => "Review created (inactive by default)"
    ]);
} catch (Exception $e) {
    http_response_code(500);
    echo json_encode([
        "success" => false,
        "message" => "Failed to create review",
        "error" => $e->getMessage()
    ]);
}