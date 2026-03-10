<?php
header('Content-Type: application/json');
require_once __DIR__ . '/../includes/headers.php';

$query = $_GET['q'] ?? "";
$sort = $_GET['sort'] ?? "date_desc";
$filter = $_GET['filter'] ?? "all";

try {
    // Base SQL
    $sql = "SELECT * FROM bookings WHERE 1=1";
    $params = [];

    // Search filter
    if ($query !== "") {
        $sql .= " AND (full_name LIKE :query OR email LIKE :query OR phone LIKE :query)";
        $params[':query'] = "%$query%";
    }

    // Read/unread filter
    if ($filter === "read") {
        $sql .= " AND `read` = 1";
    } elseif ($filter === "unread") {
        $sql .= " AND `read` = 0";
    }

    // Sorting
    switch ($sort) {
        case "date_asc":
            $sql .= " ORDER BY created_at ASC";
            break;
        case "date_desc":
            $sql .= " ORDER BY created_at DESC";
            break;
        case "name_asc":
            $sql .= " ORDER BY full_name ASC";
            break;
        case "name_desc":
            $sql .= " ORDER BY full_name DESC";
            break;
        default:
            $sql .= " ORDER BY created_at DESC";
    }

    $stmt = $pdo->prepare($sql);
    $stmt->execute($params);

    $bookings = $stmt->fetchAll(PDO::FETCH_ASSOC);

    echo json_encode([
        "success" => true,
        "bookings" => $bookings
    ]);

} catch (PDOException $e) {
    http_response_code(500);
    echo json_encode([
        "success" => false,
        "error" => "Failed to fetch bookings",
        "message" => $e->getMessage()
    ]);
}