<?php
include 'koneksi.php';

// Query JOIN untuk mengambil Judul Film dan Nama User berdasarkan ID yang ada di tabel ratings
$sql = "SELECT ratings.id, movies.title, users.username, ratings.rating 
        FROM ratings 
        JOIN movies ON ratings.movie_id = movies.id 
        JOIN users ON ratings.user_id = users.id 
        ORDER BY ratings.created_at DESC";

$result = $conn->query($sql);

$ratings = [];
while($row = $result->fetch_assoc()){
    $ratings[] = $row;
}

echo json_encode($ratings);
?>