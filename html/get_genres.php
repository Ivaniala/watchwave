<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "db_pengguna";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT DISTINCT id, name FROM genres";
$result = $conn->query($sql);

$genres = [];
if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        $genres[] = $row;
    }
}
echo json_encode($genres);

$conn->close();
?>
