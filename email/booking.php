<?php
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require_once __DIR__ . '/../includes/headers.php'; // handles CORS & headers
require 'vendor/autoload.php';
require_once __DIR__ . '/../includes/config.php';  // loads .env

// Only allow POST
if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
    http_response_code(405);
    echo json_encode(["error" => "POST only"]);
    exit;
}

// Parse JSON input
$input = json_decode(file_get_contents('php://input'), true);
if (!$input) {
    http_response_code(400);
    echo json_encode(["error" => "Invalid JSON"]);
    exit;
}

// --- Extract booking info ---
$booking = [
    "fullName" => $input['fullName'] ?? '',
    "email" => $input['email'] ?? '',
    "phone" => $input['phone'] ?? '',
    "nationality" => $input['nationality'] ?? '',
    "state" => $input['state'] ?? '',
    "adults" => $input['adults'] ?? 0,
    "hasChildren" => $input['hasChildren'] ?? false,
    "children" => $input['children'] ?? 0,
    "arrivalDate" => $input['arrivalDate'] ?? '',
    "departureDate" => $input['departureDate'] ?? '',
    "accommodation" => $input['accommodation'] ?? '',
    "transport" => $input['transport'] ?? '',
    "message" => $input['message'] ?? ''
];

// --- Extract safari info ---
$safariId = $input['safariId'] ?? '';
$safariTitle = $input['safariTitle'] ?? '';
$safariImages = $input['safariImages'] ?? [];

// --- Validation ---
if (empty($booking['fullName']) || empty($booking['email'])) {
    http_response_code(400);
    echo json_encode(["error" => "Missing required booking field"]);
    exit;
}

if (empty($safariId) || empty($safariTitle)) {
    http_response_code(400);
    echo json_encode(["error" => "Missing required safari information"]);
    exit;
}

// --- Helper: Load HTML template and replace placeholders ---
function loadTemplate($path, $data) {
    $html = file_get_contents($path);
    foreach ($data as $key => $value) {
        $safeValue = nl2br(htmlspecialchars($value));
        $html = str_replace("{{".$key."}}", $safeValue, $html);
    }
    return $html;
}

// --- Build safari image links ---
$baseUrl = $_ENV['SITE_URL'] ?? 'https://alemansadventures.com';
$imageLinks = '';
if (!empty($safariImages) && is_array($safariImages)) {
    foreach ($safariImages as $img) {
        $fullUrl = ($img[0] === '/') ? $baseUrl . $img : $img;
        $imageLinks .= "<li><a href='$fullUrl' target='_blank'>$fullUrl</a></li>";
    }
}

try {
    $host = $_ENV['SMTP_HOST'];
    $port = $_ENV['SMTP_PORT'];
    $websiteEmail = $_ENV['WEBSITE_EMAIL'];
    $websitePass  = $_ENV['WEBSITE_PASSWORD'];
    $infoEmail    = $_ENV['INFO_EMAIL'];
    $infoPass     = $_ENV['INFO_PASSWORD'];

    // =======================
    // EMAIL 1: Internal Notification
    // =======================
    $mailInternal = new PHPMailer(true);
    $mailInternal->isSMTP();
    $mailInternal->Host = $host;
    $mailInternal->SMTPAuth = true;
    $mailInternal->Username = $websiteEmail;
    $mailInternal->Password = $websitePass;
    $mailInternal->SMTPSecure = PHPMailer::ENCRYPTION_SMTPS;
    $mailInternal->Port = $port;

    $mailInternal->setFrom($websiteEmail, "Website Booking Form");
    $mailInternal->addAddress($infoEmail);
    $mailInternal->isHTML(true);
    $mailInternal->Subject = "New Booking: {$booking['fullName']} - $safariTitle";

    $mailInternal->Body = loadTemplate(__DIR__ . "/templates/internal_booking.html", [
        "name" => $booking['fullName'],
        "email" => $booking['email'],
        "phone" => $booking['phone'],
        "nationality" => $booking['nationality'],
        "state" => $booking['state'],
        "adults" => $booking['adults'],
        "children" => $booking['children'],
        "arrivalDate" => $booking['arrivalDate'],
        "departureDate" => $booking['departureDate'],
        "accommodation" => $booking['accommodation'],
        "transport" => $booking['transport'],
        "message" => $booking['message'],
        "safariTitle" => $safariTitle,
        "safariId" => $safariId,
        "images" => $imageLinks,
    ]);

    $mailInternal->send();

    // =======================
    // EMAIL 2: User Confirmation
    // =======================
    $mailUser = new PHPMailer(true);
    $mailUser->isSMTP();
    $mailUser->Host = $host;
    $mailUser->SMTPAuth = true;
    $mailUser->Username = $infoEmail;
    $mailUser->Password = $infoPass;
    $mailUser->SMTPSecure = PHPMailer::ENCRYPTION_SMTPS;
    $mailUser->Port = $port;

    $mailUser->setFrom($infoEmail, "Alemans Adventures");
    $mailUser->addAddress($booking['email'], $booking['fullName']);
    $mailUser->isHTML(true);
    $mailUser->Subject = "Booking Request Received: $safariTitle";

    $mailUser->Body = loadTemplate(__DIR__ . "/templates/user_booking_confirmation.html", [
        "name" => $booking['fullName'],
        "safariTitle" => $safariTitle,
        "arrivalDate" => $booking['arrivalDate'],
        "departureDate" => $booking['departureDate'],
        "adults" => $booking['adults'],
        "children" => $booking['children'],
        "accommodation" => $booking['accommodation'],
        "transport" => $booking['transport'],
        "message" => $booking['message'],
        "images" => $imageLinks
    ]);
    $mailUser->send();

    echo json_encode(["success" => true]);

} catch (Exception $e) {
    http_response_code(500);
    echo json_encode([
        "success" => false,
        "error" => $e->getMessage()
    ]);
    exit;
}