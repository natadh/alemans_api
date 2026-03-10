<?php
require_once __DIR__ . '/../includes/headers.php';

// Get JSON input
$data = json_decode(file_get_contents("php://input"), true);
$id = $data['id'] ?? null;

if (!$id) {
    http_response_code(400);
    echo json_encode(["message" => "Invalid ID"]);
    exit;
}

try {
    // 1️⃣ Get image URL
    $stmt = $pdo->prepare("SELECT image_url FROM journals WHERE id = ?");
    $stmt->execute([$id]);
    $journal = $stmt->fetch(PDO::FETCH_ASSOC);

    if (!$journal) {
        http_response_code(404);
        echo json_encode(["message" => "Journal not found"]);
        exit;
    }

    $imageUrl = $journal['image_url'];

    // 2️⃣ Delete DB record
    $stmt = $pdo->prepare("DELETE FROM journals WHERE id = ?");
    $stmt->execute([$id]);

    // 3️⃣ Delete local file if it exists
    if ($imageUrl && str_starts_with($imageUrl, "/uploads/")) {
        $fullPath = __DIR__ . "/.." . $imageUrl;
        if (file_exists($fullPath)) {
            unlink($fullPath);
        }
    }

    // 4️⃣ Success response
    echo json_encode([
        "success" => true,
        "message" => "Journal deleted successfully"
    ]);

} catch (Exception $e) {
    http_response_code(500);
    echo json_encode([
        "success" => false,
        "message" => "Delete failed"
    ]);
}