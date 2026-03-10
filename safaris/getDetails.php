<?php
require_once __DIR__ . "/../includes/headers.php";

try {
    // Get safari_id from query string
    $safari_id = $_GET['safari_id'] ?? null;

    if (!$safari_id) {
        http_response_code(400);
        echo json_encode([
            "success" => false,
            "message" => "safari_id is required"
        ]);
        exit;
    }

    // Fetch details from the database
    $stmt = $pdo->prepare("
        SELECT includes, excludes, highlights
        FROM safari_details
        WHERE safari_id = :safari_id
        LIMIT 1
    ");
    $stmt->execute(['safari_id' => $safari_id]);
    $details = $stmt->fetch(PDO::FETCH_ASSOC);

    if (!$details) {
        echo json_encode([
            "success" => true,
            "data" => [
                "includes" => [],
                "excludes" => [],
                "highlights" => []
            ]
        ]);
        exit;
    }

    echo json_encode([
        "success" => true,
        "data" => [
            "includes" => $details['includes'] ? json_decode($details['includes'], true) : [],
            "excludes" => $details['excludes'] ? json_decode($details['excludes'], true) : [],
            "highlights" => $details['highlights'] ? json_decode($details['highlights'], true) : []
        ]
    ]);

} catch (PDOException $e) {
    http_response_code(500);
    echo json_encode([
        "success" => false,
        "message" => "Failed to fetch safari details",
        "error" => $e->getMessage()
    ]);
}