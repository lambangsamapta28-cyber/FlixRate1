<?php
include 'koneksi.php';

$data = json_decode(file_get_contents("php://input"));

if(isset($data->username) && isset($data->password)){
    $username = $conn->real_escape_string($data->username);
    $password = $data->password; // Di produksi gunakan password_hash()

    // Cek username kembar
    $check = $conn->query("SELECT id FROM users WHERE username='$username'");
    if($check->num_rows > 0){
        echo json_encode(["status" => "error", "message" => "Username sudah dipakai"]);
    } else {
        $sql = "INSERT INTO users (username, password, role) VALUES ('$username', '$password', 'user')";
        if($conn->query($sql)){
            echo json_encode(["status" => "success", "message" => "Berhasil daftar"]);
        } else {
            echo json_encode(["status" => "error", "message" => "Gagal daftar"]);
        }
    }
}
?>