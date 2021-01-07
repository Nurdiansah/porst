<?php
session_start();
include "../fungsi/koneksi.php";
include "../fungsi/fungsi.php";

if (isset($_POST['add'])) {
	$id_alatberat = $_POST['id_alatberat'];
	$id_client = $_POST['id_client'];
	$Area = $_POST['area'];
	$kode_lotruck = kode_jotruck($Area);
	$id_jobordertruck = id_jotruck();
	$tanggal = date_now();

	$queryArea =  mysqli_query($koneksi, "SELECT area, id_user from user WHERE username  = '$_SESSION[username]'");
	$rowArea = mysqli_fetch_assoc($queryArea);
	$id_user = $rowArea['id_user'];

	$tanggalSekarang = tanggalSekarang();

	//cek job order truck di hari yang sama 
	$queryCek = mysqli_query($koneksi, "SELECT COUNT(id_jobordertruck) AS jumlah FROM job_ordertruck WHERE id_client = '$id_client' AND id_alatberat = '$id_alatberat' AND DATE(created_on) = '$tanggalSekarang' ");
	$rowCek = mysqli_fetch_assoc($queryCek);

	$jumlah = $rowCek['jumlah'];

	if ($jumlah != 0) {
		$_SESSION['pesan'] = '<div id="pesan" class="alert alert-danger " ><b> Client Dengan Alat Berat yang sama di hari ini sudah tersedia !</b></div>';
		header("location:index.php?p=proses_jotruck");
	} else {

		$query = "INSERT INTO job_ordertruck (id_jobordertruck, kode_lotruck, id_alatberat, id_client, area, created_on, id_checker) VALUES 
											 ('$id_jobordertruck', '$kode_lotruck', '$id_alatberat', '$id_client', '$Area','$tanggal', '$id_user');
			";

		$hasil = mysqli_query($koneksi, $query);

		// Load		


		if ($hasil) {
			$_SESSION['pesan'] = '<div id="pesan" class="alert alert-success" > Data berhasil di tambahkan!</div>';
			header("location:index.php?p=proses_jotruck");
		} else {
			die("ada kesalahan : " . mysqli_error($koneksi));
		}
	}
}
