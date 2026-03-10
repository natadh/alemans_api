<?php
require_once __DIR__ . "/../../includes/headers.php";

try {
    $id = $_POST['id'] ?? null;
    $safari_id = $_POST['safari_id'] ?? null;
    $day_number = $_POST['day_number'] ?? null;
    $title = $_POST['title'] ?? '';
    $description = $_POST['description'] ?? '';
    $meals = $_POST['meals'] ?? '';
    $activities = $_POST['activities'] ?? '';

    if (!$safari_id || !$day_number) {
        http_response_code(400);
        echo json_encode([
            "success" => false,
            "message" => "Safari ID and Day Number are required"
        ]);
        exit;
    }

    if ($id) {
        // Update existing day
        $stmt = $pdo->prepare("
            UPDATE safari_itinerary
            SET day_number = :day_number,
                title = :title,
                description = :description,
                meals = :meals,
                activities = :activities
            WHERE id = :id
        ");
        $stmt->execute([
            "day_number" => $day_number,
            "title" => $title,
            "description" => $description,
            "meals" => $meals,
            "activities" => $activities,
            "id" => $id
        ]);
    } else {
        // Insert new day
        $stmt = $pdo->prepare("
            INSERT INTO safari_itinerary
            (safari_id, day_number, title, description, meals, activities)
            VALUES (:safari_id, :day_number, :title, :description, :meals, :activities)
        ");
        $stmt->execute([
            "safari_id" => $safari_id,
            "day_number" => $day_number,
            "title" => $title,
            "description" => $description,
            "meals" => $meals,
            "activities" => $activities
        ]);
    }

    echo json_encode(["success" => true]);

} catch (PDOException $e) {
    http_response_code(500);
    echo json_encode([
        "success" => false,
        "message" => "Failed to save itinerary",
        "error" => $e->getMessage()
    ]);
}