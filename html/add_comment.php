<?php
session_start();
error_reporting(E_ALL);
ini_set('display_errors', 1);

require 'koneksi.php';

if (!isset($_SESSION['user_id']) || !isset($_SESSION['username'])) {
    echo json_encode(['error' => 'You must log in to connect.']);
    exit();
}

$user_id = $_SESSION['user_id'];
$username = $_SESSION['username'];
$comment_text = $_POST['comment_text'];
$film_id = $_POST['film_id']; // Ambil ID film dari POST data

if (empty($comment_text)) {
    echo json_encode(['error' => 'Comments cannot be empty.']);
    exit();
}

$sql = "INSERT INTO comments (film_id, user_id, username, comment_text) VALUES (?, ?, ?, ?)";
$stmt = $conn->prepare($sql);

if ($stmt === false) {
    echo json_encode(['error' => $conn->error]);
    exit();
}

$stmt->bind_param("iiss", $film_id, $user_id, $username, $comment_text);

if ($stmt->execute()) {
    echo json_encode(['username' => $username, 'comment_text' => $comment_text]);
} else {
    echo json_encode(['error' => $stmt->error]);
}

$stmt->close();
$conn->close();
?>
