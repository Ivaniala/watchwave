<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "db_pengguna";

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$genre_id = isset($_GET['genre_id']) ? intval($_GET['genre_id']) : 0;
$sql = "SELECT movies.id, movies.title, movies.img_url, GROUP_CONCAT(genres.name SEPARATOR ', ') as genre_names 
        FROM movies 
        JOIN movie_genre ON movies.id = movie_genre.movie_id 
        JOIN genres ON movie_genre.genre_id = genres.id";

if ($genre_id > 0) {
    $sql .= " WHERE genres.id = " . $genre_id;
}
$sql .= " GROUP BY movies.id";

$result = $conn->query($sql);

$movies = [];
if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        $movies[] = $row;
    }
}

$conn->close();
header('Content-Type: application/json');
echo json_encode($movies);
?>
