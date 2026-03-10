<?php
require_once __DIR__ . '/../includes/headers.php';
require_once __DIR__ . '/../includes/config.php';

// Read the incoming JSON
$input = json_decode(file_get_contents('php://input'), true);

if (!$input) {
    http_response_code(400);
    echo json_encode(["error" => "Invalid JSON"]);
    exit;
}

// Validate required fields
$required = ['safariId', 'fullName', 'email', 'phone', 'nationality', 'adults', 'arrivalDate', 'departureDate'];
foreach ($required as $field) {
    if (!isset($input[$field]) || $input[$field] === "") {
        http_response_code(400);
        echo json_encode(["error" => "$field is required"]);
        exit;
    }
}

// Optional fields
$state = $input['state'] ?? null;
$hasChildren = isset($input['hasChildren']) ? (bool)$input['hasChildren'] : false;
$children = $input['children'] ?? 0;
$accommodation = $input['accommodation'] ?? null;
$transport = $input['transport'] ?? null;
$message = $input['message'] ?? null;

try {
    $stmt = $pdo->prepare("
        INSERT INTO bookings (
            safari_id, full_name, email, phone, nationality, state,
            adults, has_children, children, arrival_date, departure_date,
            accommodation, transport, message, `read`
        ) VALUES (
            :safari_id, :full_name, :email, :phone, :nationality, :state,
            :adults, :has_children, :children, :arrival_date, :departure_date,
            :accommodation, :transport, :message, :read
        )
    ");

    $stmt->execute([
        ':safari_id' => $input['safariId'],
        ':full_name' => $input['fullName'],
        ':email' => $input['email'],
        ':phone' => $input['phone'],
        ':nationality' => $input['nationality'],
        ':state' => $state,
        ':adults' => $input['adults'],
        ':has_children' => $hasChildren,
        ':children' => $children,
        ':arrival_date' => $input['arrivalDate'],
        ':departure_date' => $input['departureDate'],
        ':accommodation' => $accommodation,
        ':transport' => $transport,
        ':message' => $message,
        ':read' => 0  // always start as unread
    ]);

    echo json_encode([
        "success" => true,
        "bookingId" => $pdo->lastInsertId()
    ]);
} catch (PDOException $e) {
    http_response_code(500);
    echo json_encode(["error" => "Failed to store booking"]);
}