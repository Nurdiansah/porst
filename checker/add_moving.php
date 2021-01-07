<?php
session_start();
include "../fungsi/koneksi.php";
include "../fungsi/fungsi.php";

if (isset($_POST['add'])) {
	$nm_trailer = $_POST['nm_trailer'];
	$nm_alatberat = $_POST['nm_alatberat'];
	$id_client = $_POST['id_client'];
	$id_moving = id_moving();
	$tanggal = date_now();

	$queryArea =  mysqli_query($koneksi, "SELECT area, id_user from user WHERE username  = '$_SESSION[username]'");
	$rowArea = mysqli_fetch_assoc($queryArea);
	$Area = $rowArea['area'];
	$id_user = $rowArea['id_user'];

	$tanggalSekarang = tanggalSekarang();

	//cek moving di hari yang sama 
	$queryCek = mysqli_query($koneksi, "SELECT COUNT(id_moving) AS jumlah FROM moving WHERE id_client = '$id_client' AND nm_alatberat = '$nm_alatberat' AND DATE(created_on) = '$tanggalSekarang' ");
	$rowCek = mysqli_fetch_assoc($queryCek);

	$jumlah = $rowCek['jumlah'];

	if ($jumlah != 0) {
		$_SESSION['pesan'] = '<div id="pesan" class="alert alert-danger " ><b> Client Dengan Alat Berat yang sama di hari ini sudah tersedia !</b></div>';
		header("location:index.php?p=proses_moving");
	} else {

		$query = "INSERT INTO moving (id_moving, nm_trailer, nm_alatberat, id_client, area, created_on, id_checker) VALUES 
									 ('$id_moving','$nm_trailer', '$nm_alatberat','$id_client', '$Area','$tanggal', '$id_user');
			";

		$hasil = mysqli_query($koneksi, $query);

		// Load					
		if ($hasil) {
			header("location:index.php?p=proses_moving");
		} else {
			die("ada kesalahan : " . mysqli_error($koneksi));
		}
	}
}
