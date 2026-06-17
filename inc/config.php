<?php
// Cấu hình đường dẫn gốc
$base_url = "";

// Thông tin kết nối Railway MySQL
$db_host = "thomas.proxy.rlwy.net";
$db_user = "root";
$db_pass = "crnqsvSwHcqPDQJKOlqOyXPmkRBLcAhU";
$db_name = "railway";
$db_port = 17405;

// Kết nối MySQL
$conn = new mysqli(
    $db_host,
    $db_user,
    $db_pass,
    $db_name,
    $db_port
);

// Kiểm tra kết nối
if ($conn->connect_error) {
    die("Kết nối thất bại: " . $conn->connect_error);
}

// Thiết lập UTF-8
$conn->set_charset("utf8mb4");

// Hàm khởi động session với cấu hình HTTPS
function start_secure_session() {
    if (session_status() === PHP_SESSION_NONE) {
        // Cấu hình session cookie cho HTTPS (Render)
        if (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on') {
            ini_set('session.cookie_secure', 1);
            ini_set('session.cookie_httponly', 1);
            ini_set('session.cookie_samesite', 'Lax');
        }
        session_start();
    }
}
?>