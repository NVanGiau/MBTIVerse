<?php
include_once 'config.php';
start_secure_session();
session_unset();
session_destroy();
// Xóa cookie "remember_username"
setcookie("remember_username", "", time() - 3600, "/");
// Chuyển hướng về trang chủ (hoặc trang đăng nhập)
header("Location: ../index.php");
exit();                     
?>
