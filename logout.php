<?php  

	session_start();

	include "fungsi/koneksi.php";
// log
	$queryUser =  mysqli_query($koneksi, "SELECT * from user WHERE username  = '$_SESSION[username]'");
	$rowUser=mysqli_fetch_assoc($queryUser);
	$nama=$rowUser['nama'];

	date_default_timezone_set('Asia/Jakarta');
	$tanggal= date("Y-m-d H:i:s");

	$queryLog = "INSERT INTO log_system (waktu, nama_user, keterangan) VALUES
								('$tanggal', '$nama', 'logout');

								";
	mysqli_query($koneksi, $queryLog);
	
	session_destroy();
	header("location:index.php");

?>