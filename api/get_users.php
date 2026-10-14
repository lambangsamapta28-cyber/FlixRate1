<?php
include 'koneksi.php';

// Ambil id, username, dan role. Password jangan diambil demi keamanan.
$sql = "SELECT id, username, role FROM users ORDER BY id DESC";
$result = $conn->query($sql);

$users = [];
while($row = $result->fetch_assoc()){
    $users[] = $row;
}

echo json_encode($users);
?>