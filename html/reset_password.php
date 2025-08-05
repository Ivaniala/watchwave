<?php
session_start();
require 'koneksi.php'; 

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if (isset($_POST['email'], $_POST['new_password'], $_POST['confirm_password'])) {
        $email = $_POST['email'];
        $new_password = $_POST['new_password'];
        $confirm_password = $_POST['confirm_password'];

        if ($new_password === $confirm_password) {
            $hashed_password = password_hash($new_password, PASSWORD_DEFAULT);

            // Update the password in the database
            $sql = "UPDATE users SET password = ? WHERE email = ?";
            if ($stmt = $conn->prepare($sql)) {
                $stmt->bind_param("ss", $hashed_password, $email);
                if ($stmt->execute()) {
                    $_SESSION['message'] = "Password has been reset successfully. Please login.";
                    header("Location: login.html");
                    exit;
                } else {
                    echo "An error occurred. Please try again.";
                }
                $stmt->close();
            }
        } else {
            echo "Password and confirm password do not match.";
        }
    } else {
        echo "All form fields are required.";
    }
}
$conn->close();
?>
