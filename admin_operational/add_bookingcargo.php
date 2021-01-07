<?php
include "../fungsi/koneksi.php";

if (isset($_POST['simpan'])) {
	$idJoborder = $_POST['id'];
	$id_checker = $_POST['id_checker'];

	// query booking cargo
	$queryBc =  mysqli_query($koneksi, "SELECT sum(m3_cargo) as booking_cargo FROM detail_joborder WHERE id_joborder='$idJoborder' AND status_cargo=1");
	$rowBc = mysqli_fetch_assoc($queryBc);
	$Bc = $rowBc['booking_cargo'];

	$query = "UPDATE job_order 
	SET booking_cargo ='$Bc', status_jo=2, id_checker = '$id_checker' WHERE id_joborder='$idJoborder' ";


	$hasil = mysqli_query($koneksi, $query);
	if ($hasil) {
		header("location:index.php?p=lihat_jovessel");
	} else {
		die("ada kesalahan : " . mysqli_error($koneksi));
	}
}
