<?php
include "../fungsi/koneksi.php";

if (isset($_POST['simpan'])) {
	$nm_alatberat = $_POST['nm_alatberat'];
	$jns_alatberat = $_POST['jns_alatberat'];
	$area_alatberat = $_POST['area_alatberat'];
	$status_alatberat = $_POST['status_alatberat'];


	$query = "INSERT INTO alat_berat ( nm_alatberat, jns_alatberat, area_alatberat, status_alatberat  ) VALUES 
										( '$nm_alatberat', '$jns_alatberat', '$area_alatberat', '$status_alatberat' );
			";


	$hasil = mysqli_query($koneksi, $query);
	if ($hasil) {
		header("location:index.php?p=alat_berat");
	} else {
		die("ada kesalahan : " . mysqli_error($koneksi));
	}
}
