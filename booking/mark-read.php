<?php
// bookings/mark-read.php
header('Content-Type: application/json');
require_once __DIR__ . '/../includes/headers.php'; // your PDO connection

// Read incoming JSON
$input = json_decode(file_get_contents('php://input'), true);

if (!$input || !isset($input['bookingId'])) {
    http_response_code(400);
    echo json_encode([
        "success" => false,
        "error" => "bookingId is required"
    ]);
    exit;
}

$bookingId = (int)$input['bookingId'];

try {
    $stmt = $pdo->prepare("UPDATE bookings SET `read` = 1 WHERE id = :id");
    $stmt->execute([':id' => $bookingId]);

    // Check if a row was actually updated
    if ($stmt->rowCount() > 0) {
        echo json_encode([
            "success" => true,
            "message" => "Booking marked as read"
        ]);
    } else {
        echo json_encode([
            "success" => false,
            "error" => "Booking not found or already marked as read"
        ]);
    }
} catch (PDOException $e) {
    http_response_code(500);
    echo json_encode([
        "success" => false,
        "error" => "Failed to mark booking as read"
    ]);
}