<?php
// bookings/index.php
header('Content-Type: application/json');
require_once __DIR__ . '/../includes/headers.php'; 

try {
    // Fetch all bookings, newest first
    $stmt = $pdo->query("
        SELECT 
            id,
            safari_id,
            full_name,
            email,
            phone,
            nationality,
            state,
            adults,
            has_children,
            children,
            arrival_date,
            departure_date,
            accommodation,
            transport,
            message,
            `read`,
            created_at
        FROM bookings
        ORDER BY created_at DESC
    ");

    $bookings = $stmt->fetchAll(PDO::FETCH_ASSOC);

    echo json_encode([
        "success" => true,
        "bookings" => $bookings
    ]);
} catch (PDOException $e) {
    http_response_code(500);
    echo json_encode([
        "success" => false,
        "error" => "Failed to fetch bookings"
    ]);
}