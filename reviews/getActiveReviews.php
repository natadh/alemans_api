<?php
require_once __DIR__ . '/../includes/headers.php';

try {
    // Fetch only active reviews, newest first
    $stmt = $pdo->query("SELECT * FROM reviews WHERE is_active = 1 ORDER BY created_at DESC");
    $reviews = $stmt->fetchAll();

    echo json_encode([
        "success" => true,
        "reviews" => $reviews
    ]);
} catch (Exception $e) {
    http_response_code(500);
    echo json_encode([
        "success" => false,
        "message" => "Failed to fetch active reviews"
    ]);
}