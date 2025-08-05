<?php
// remove_favorite.php

// Handle CORS headers if needed
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

// Get data from POST request body
$data = json_decode(file_get_contents("php://input"));

// Get user_id and movie_id
$user_id = $data->user_id;
$movie_id = $data->movie_id;

// Simulate database connection (replace with actual database connection)
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "db_pengguna";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Prepare SQL statement to delete from favorites
$sql_delete = "DELETE FROM favorites WHERE user_id = ? AND movie_id = ?";
$stmt_delete = $conn->prepare($sql_delete);
$stmt_delete->bind_param("ii", $user_id, $movie_id);

// Execute SQL statement to delete from favorites
if ($stmt_delete->execute()) {
    // Success
    $response = [
        'success' => true,
        'message' => 'Movie removed from favorites.'
    ];
} else {
    // Error
    $response = [
        'success' => false,
        'message' => 'Failed to remove movie from favorites.'
    ];
}

// Close statement and connection
$stmt_delete->close();
$conn->close();

// Return response as JSON
echo json_encode($response);
?>
