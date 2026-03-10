<?php
require_once __DIR__ . "/../../includes/headers.php";

try {
    if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
        http_response_code(405);
        echo json_encode(["success" => false, "message" => "Method not allowed"]);
        exit;
    }

    $safari_id = $_POST['safari_id'] ?? null;
    $highlights = $_POST['highlights'] ?? null;
    $includes = $_POST['includes'] ?? null;
    $excludes = $_POST['excludes'] ?? null;

    if (!$safari_id) {
        http_response_code(400);
        echo json_encode(["success" => false, "message" => "Missing safari_id"]);
        exit;
    }

    // Decode JSON strings into arrays to validate
    $highlights = $highlights ? json_decode($highlights, true) : [];
    $includes = $includes ? json_decode($includes, true) : [];
    $excludes = $excludes ? json_decode($excludes, true) : [];

    // Convert back to JSON for DB storage
    $highlights_json = json_encode($highlights, JSON_UNESCAPED_UNICODE);
    $includes_json = json_encode($includes, JSON_UNESCAPED_UNICODE);
    $excludes_json = json_encode($excludes, JSON_UNESCAPED_UNICODE);

    // INSERT or UPDATE
    $stmt = $pdo->prepare("
        INSERT INTO safari_details (safari_id, highlights, includes, excludes)
        VALUES (:safari_id, :highlights, :includes, :excludes)
        ON DUPLICATE KEY UPDATE
            highlights = VALUES(highlights),
            includes = VALUES(includes),
            excludes = VALUES(excludes)
    ");

    $stmt->execute([
        "safari_id" => $safari_id,
        "highlights" => $highlights_json,
        "includes" => $includes_json,
        "excludes" => $excludes_json,
    ]);

    echo json_encode(["success" => true, "message" => "Details saved"]);

} catch (PDOException $e) {
    http_response_code(500);
    echo json_encode([
        "success" => false,
        "message" => "Failed to save details",
        "error" => $e->getMessage()
    ]);
}