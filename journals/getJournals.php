<?php
require_once __DIR__ . '/../includes/headers.php';

try {

    $stmt = $pdo->query("
        SELECT 
            id,
            title,
            excerpt,
            content,
            destination,
            date,
            image_url,
            author,
            read_time
        FROM journals
        ORDER BY created_at DESC
    ");

    $journals = $stmt->fetchAll(PDO::FETCH_ASSOC);

    // Format response to match frontend structure
    $formatted = array_map(function ($journal) {
        return [
            "id" => (int)$journal["id"],
            "title" => $journal["title"],
            "excerpt" => $journal["excerpt"],
            "content" => $journal["content"],
            "destination" => $journal["destination"],
            "date" => $journal["date"],
            "imageUrl" => $journal["image_url"],
            "author" => $journal["author"],
            "readTime" => $journal["read_time"]
        ];
    }, $journals);

    echo json_encode([
        "success" => true,
        "journals" => $formatted
    ]);

} catch (Exception $e) {

    http_response_code(500);

    echo json_encode([
        "success" => false,
        "message" => "Failed to fetch journals"
    ]);
}