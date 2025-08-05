<?php
require 'koneksi.php';

$film_id = $_GET['film_id']; 

$sql = "SELECT username, comment_text FROM comments WHERE film_id = ? ORDER BY id DESC";
$stmt = $conn->prepare($sql);
$stmt->bind_param("i", $film_id);
$stmt->execute();
$result = $stmt->get_result();

$comments = array();
if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        $comments[] = $row;
    }
}
echo json_encode($comments);

$stmt->close();
$conn->close();
?>
