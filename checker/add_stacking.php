<?php
session_start();
include "../fungsi/koneksi.php";
include "../fungsi/fungsi.php";

if (isset($_POST['add'])) {
	$id_alatberat = $_POST['id_alatberat'];
	$id_client = $_POST['id_client'];
	$nm_kegiatan = $_POST['nm_kegiatan'];
	$Area = $_POST['area'];
	$kode_stacking = kode_stacking($Area);
	$id_stacking = id_stacking();
	$tanggal = date_now();

	$queryArea =  mysqli_query($koneksi, "SELECT area, id_user from user WHERE username  = '$_SESSION[username]'");
	$rowArea = mysqli_fetch_assoc($queryArea);
	$id_user = $rowArea['id_user'];

	$tanggalSekarang = tanggalSekarang();

	//cek stacking di hari yang sama 
	$queryCek = mysqli_query($koneksi, "SELECT COUNT(id_stacking) AS jumlah FROM stacking WHERE id_client = '$id_client' AND id_alatberat = '$id_alatberat' AND DATE(created_on) = '$tanggalSekarang' ");
	$rowCek = mysqli_fetch_assoc($queryCek);

	$jumlah = $rowCek['jumlah'];

	if ($jumlah != 0) {
		$_SESSION['pesan'] = '<div id="pesan" class="alert alert-danger " ><b> Client Dengan Alat Berat yang sama di hari ini sudah tersedia !</b></div>';
		header("location:index.php?p=proses_stacking");
	} else {
		$query = "INSERT INTO stacking (id_stacking, kode_stacking, id_alatberat, nm_kegiatan, id_client, area, created_on, id_checker) VALUES 
									 ('$id_stacking', '$kode_stacking','$id_alatberat', '$nm_kegiatan','$id_client', '$Area','$tanggal', '$id_user');
			";

		$hasil = mysqli_query($koneksi, $query);

		// Load					
		if ($hasil) {
			header("location:index.php?p=proses_stacking");
		} else {
			die("ada kesalahan : " . mysqli_error($koneksi));
		}
	}
}
