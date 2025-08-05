<?php
session_start();
require 'koneksi.php';

// Endpoint for adding a movie to favorites
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Retrieve user_id and movie_id from POST data (you may need to handle user authentication)
    $user_id = $_POST['user_id'];
    $movie_id = $_POST['movie_id'];
    
    // Check if the movie is already in favorites (to avoid duplicates)
    $stmt = $pdo->prepare("SELECT * FROM favorite WHERE user_id = ? AND movie_id = ?");
    $stmt->execute([$user_id, $movie_id]);
    $existingFavorite = $stmt->fetch(PDO::FETCH_ASSOC);
    
    if (!$existingFavorite) {
        // Insert into favorites table
        $insertStmt = $pdo->prepare("INSERT INTO favorite (user_id, movie_id, timestamp) VALUES (?, ?, NOW())");
        $insertStmt->execute([$user_id, $movie_id]);
        
        // Return success message or updated list of favorites if needed
        echo json_encode(['success' => true]);
        exit;
    }
    
    // Movie already in favorites
    echo json_encode(['success' => false, 'message' => 'Movie already in favorites']);
exit;
}
?>