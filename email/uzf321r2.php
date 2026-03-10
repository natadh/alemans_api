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

// Determine content type
$contentType = $_SERVER["CONTENT_TYPE"] ?? '';

if (str_contains($contentType, 'application/json')) {
    $input = json_decode(file_get_contents('php://input'), true);
} elseif (str_contains($contentType, 'application/x-www-form-urlencoded')) {
    $input = $_POST;
} else {
    $input = [];
}

$recipientName  = $input['name'] ?? '';
$recipientEmail = $input['email'] ?? '';
$subject        = $input['subject'] ?? '';
$message        = $input['message'] ?? '';

// Validate
if (!$recipientEmail || !$recipientName || !$subject || !$message) {
    http_response_code(400);
    echo json_encode(["error" => "Missing parameters"]);
    exit;
}

// Template loader
function loadTemplate($path, $data) {
    $html = file_get_contents($path);
    foreach ($data as $key => $value) {
        $safeValue = nl2br(htmlspecialchars($value));
        $html = str_replace("{{".$key."}}", $safeValue, $html);
    }
    return $html;
}

try {
    $host = $_ENV['SMTP_HOST'];
    $port = $_ENV['SMTP_PORT'];
    $websiteEmail = $_ENV['WEBSITE_EMAIL'];
    $websitePass  = $_ENV['WEBSITE_PASSWORD'];
    $infoEmail    = $_ENV['INFO_EMAIL'];
    $infoPass     = $_ENV['INFO_PASSWORD'];

    // EMAIL 1: User → Company
    $mail1 = new PHPMailer(true);
    $mail1->isSMTP();
    $mail1->Host = $host;
    $mail1->SMTPAuth = true;
    $mail1->Username = $websiteEmail;
    $mail1->Password = $websitePass;
    $mail1->SMTPSecure = PHPMailer::ENCRYPTION_SMTPS;
    $mail1->Port = $port;

    $mail1->setFrom($websiteEmail, "Website Contact Form");
    $mail1->addAddress($infoEmail);
    $mail1->isHTML(true);
    $mail1->Subject = $subject;
    $mail1->Body = loadTemplate(__DIR__ . "/templates/internal_notification.html", [
        "name" => $recipientName,
        "email" => $recipientEmail,
        "subject" => $subject,
        "message" => $message
    ]);
    $mail1->send();

    // EMAIL 2: Company → User
    $mail2 = new PHPMailer(true);
    $mail2->isSMTP();
    $mail2->Host = $host;
    $mail2->SMTPAuth = true;
    $mail2->Username = $infoEmail;
    $mail2->Password = $infoPass;
    $mail2->SMTPSecure = PHPMailer::ENCRYPTION_SMTPS;
    $mail2->Port = $port;

    $mail2->setFrom($infoEmail, "Alemans Adventures");
    $mail2->addAddress($recipientEmail, $recipientName);
    $mail2->isHTML(true);
    $mail2->Subject = "We received your message";
    $mail2->Body = loadTemplate(__DIR__ . "/templates/user_confirmation.html", [
        "name" => $recipientName,
        "subject" => $subject
    ]);
    $mail2->send();

    echo json_encode(["success" => true]);

} catch (Exception $e) {
    http_response_code(500);
    echo json_encode([
        "success" => false,
        "error" => $e->getMessage()
    ]);
    exit;
}