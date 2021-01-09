<?php

$host = "localhost";
// $username = "root";
// $password = "kambingjawa";
// $database = "porst";

// Hosting
$username = "u5350289_nurdiansah";
$password = "nurdiansah123";
$database = "u5350289_nurdiansah";


$koneksi = mysqli_connect($host, $username, $password, $database);

if (!$koneksi) {
	echo "Koneksi gagal " . mysqli_connect_error();
}
