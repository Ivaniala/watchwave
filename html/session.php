<?php
session_start();
echo json_encode(array(
    "name" => isset($_SESSION['username']) ? $_SESSION['username'] : null
));
?>
