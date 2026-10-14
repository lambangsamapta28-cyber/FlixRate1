<?php
include 'koneksi.php';

// Ambil data JSON yang dikirim dari JavaScript
$data = json_decode(file_get_contents("php://input"));

// Pastikan data yang dibutuhkan ada
if(isset($data->user_id) && isset($data->movie_id) && isset($data->rating)){
    
    $user_id = (int)$data->user_id;
    $movie_id = (int)$data->movie_id;
    $rating = (int)$data->rating;

    // (Opsional) Hapus rating lama user ini untuk film ini agar tidak double
    // $conn->query("DELETE FROM ratings WHERE user_id=$user_id AND movie_id=$movie_id");

    // Masukkan data baru
    $sql = "INSERT INTO ratings (user_id, movie_id, rating) VALUES ($user_id, $movie_id, $rating)";

    if($conn->query($sql) === TRUE){
        echo json_encode(["status" => "success", "message" => "Rating berhasil disimpan"]);
    } else {
        echo json_encode(["status" => "error", "message" => "Database Error: " . $conn->error]);
    }

} else {
    echo json_encode(["status" => "error", "message" => "Data tidak lengkap"]);
}
?>