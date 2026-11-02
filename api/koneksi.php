<?php
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

// Mengatur driver agar melempar exception (standar PHP 8.1+)
mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);

$host = "localhost";
$user = "root";
$pass = ""; // Kosongkan jika pakai XAMPP default
$db   = "flixrate_db";

try {
    $conn = new mysqli($host, $user, $pass, $db);
} catch (mysqli_sql_exception $e) {
    http_response_code(500);
    echo json_encode([
        "status" => "error", 
        "message" => "Koneksi Database Gagal: " . $e->getMessage()
    ]);
    exit;
}
?>