<?php
include "../fungsi/koneksi.php";

if (isset($_POST['add'])) {

	$nm_jenis = $_POST['nm_jenis'];
	$p = $_POST['p'];
	$l = $_POST['l'];
	$t = $_POST['t'];
	$volume_jenis = round($_POST['volume_jenis'], 2);
	$satuan_jenis = $_POST['satuan_jenis'];
	$area = $_POST['area'];

	$query = "INSERT INTO jenis_barang ( nm_jenis, p, l, t, satuan_jenis, volume_jenis, area) VALUES 
										( '$nm_jenis', '$p', '$l', '$t', '$satuan_jenis', '$volume_jenis', '$area');
			";


	$hasil = mysqli_query($koneksi, $query);
	if ($hasil) {
		header("location:index.php?p=jenis_barang");
	} else {
		die("ada kesalahan : " . mysqli_error($koneksi));
	}
}
