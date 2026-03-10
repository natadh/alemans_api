<?php
require_once __DIR__ . '/../includes/headers.php';

if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
    http_response_code(405);
    echo json_encode(["message" => "Method not allowed"]);
    exit;
}

/* =========================
   INPUTS
========================= */

$title       = trim($_POST['title'] ?? '');
$content     = trim($_POST['content'] ?? '');
$destination = trim($_POST['destination'] ?? '');
$date        = trim($_POST['date'] ?? '');
$author      = trim($_POST['author'] ?? 'Aleman\'s Team');
$imageUrl    = trim($_POST['imageUrl'] ?? ''); // external URL (optional)

/* =========================
   VALIDATION
========================= */

if (!$title || !$content || !$destination) {
    http_response_code(400);
    echo json_encode([
        "success" => false,
        "message" => "Title, content and destination are required"
    ]);
    exit;
}

/* =========================
   GENERATE EXCERPT
========================= */

$plainText = strip_tags($content);
$excerpt = mb_substr($plainText, 0, 200);
if (mb_strlen($plainText) > 200) {
    $excerpt .= "...";
}

/* =========================
   CALCULATE READ TIME
   (200 words per minute)
========================= */

$wordCount = str_word_count($plainText);
$minutes = max(1, ceil($wordCount / 200));
$readTime = $minutes . " min read";

/* =========================
   IMAGE HANDLING
========================= */

$finalImageUrl = "";

/* ---- Case 1: Uploaded Image ---- */
if (!empty($_FILES['image']['name']) && $_FILES['image']['error'] === UPLOAD_ERR_OK) {

    $uploadDir = __DIR__ . "/../uploads/";

    if (!is_dir($uploadDir)) {
        mkdir($uploadDir, 0755, true);
    }

    $extension = pathinfo($_FILES['image']['name'], PATHINFO_EXTENSION);
    $fileName = uniqid() . "." . $extension;
    $destinationPath = $uploadDir . $fileName;

    move_uploaded_file($_FILES['image']['tmp_name'], $destinationPath);

    $finalImageUrl = "/uploads/" . $fileName;
}

/* ---- Case 2: External URL ---- */
elseif (!empty($imageUrl)) {
    $finalImageUrl = $imageUrl;
}

/* ---- Case 3: Default Placeholder ---- */
else {
    $finalImageUrl = "https://images.unsplash.com/photo-1501785888041-af3ef285b470?w=800&h=500&fit=crop";
}

/* =========================
   INSERT INTO DATABASE
========================= */

try {

    $stmt = $pdo->prepare("
        INSERT INTO journals 
        (title, excerpt, content, destination, date, image_url, author, read_time)
        VALUES (?, ?, ?, ?, ?, ?, ?, ?)
    ");

    $stmt->execute([
        $title,
        $excerpt,
        $content,
        $destination,
        $date ?: null,
        $finalImageUrl,
        $author,
        $readTime
    ]);

    $journalId = $pdo->lastInsertId();

    echo json_encode([
        "success" => true,
        "data" => [
            "id" => (int)$journalId,
            "title" => $title,
            "excerpt" => $excerpt,
            "content" => $content,
            "destination" => $destination,
            "date" => $date,
            "imageUrl" => $finalImageUrl,
            "author" => $author,
            "readTime" => $readTime
        ]
    ]);

} catch (Exception $e) {
    http_response_code(500);
    echo json_encode([
        "success" => false,
        "message" => "Journal creation failed"
    ]);
}