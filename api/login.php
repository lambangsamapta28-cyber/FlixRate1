<?php
include 'koneksi.php';

$data = json_decode(file_get_contents("php://input"));

if(isset($data->username) && isset($data->password)){
    $username = $conn->real_escape_string($data->username);
    $password = $data->password; // Di produksi sebaiknya pakai password_verify()

    $sql = "SELECT * FROM users WHERE username='$username' AND password='$password'";
    $result = $conn->query($sql);

    if($result->num_rows > 0){
        $row = $result->fetch_assoc();
        echo json_encode([
            "status" => "success", 
            "user" => ["id" => $row['id'], "username" => $row['username'], "role" => $row['role']]
        ]);
    } else {
        echo json_encode(["status" => "error", "message" => "Username atau Password salah"]);
    }
}
?>