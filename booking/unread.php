<?php
// bookings/unread.php
header('Content-Type: application/json');
require_once __DIR__ . '/../includes/headers.php'; // your PDO connection

try {
    $stmt = $pdo->query("SELECT COUNT(*) AS unreadCount FROM bookings WHERE `read` = 0");
    $result = $stmt->fetch(PDO::FETCH_ASSOC);

    echo json_encode([
        "success" => true,
        "unreadCount" => (int)$result['unreadCount']
    ]);
} catch (PDOException $e) {
    http_response_code(500);
    echo json_encode([
        "success" => false,
        "error" => "Failed to fetch unread bookings"
    ]);
}