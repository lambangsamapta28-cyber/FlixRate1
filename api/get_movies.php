<?php
include 'koneksi.php';

header('Content-Type: application/json');

// Jika ingin mengambil detail 1 film berdasarkan ID (untuk halaman detail)
if (isset($_GET['id'])) {
    $id = $_GET['id'];
    $query = "SELECT * FROM movies WHERE id = $id";
} else {
    // Jika mengambil semua film
    $query = "SELECT * FROM movies";
}

$result = mysqli_query($conn, $query);
$movies = [];

while ($row = mysqli_fetch_assoc($result)) {
    $movies[] = $row;
}

echo json_encode($movies);
?>