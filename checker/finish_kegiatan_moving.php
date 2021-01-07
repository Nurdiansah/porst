<?php

include "../fungsi/koneksi.php";
include '../fungsi/fungsi.php';

if (isset($_POST['submit'])) {
	$id_moving = $_POST['id_moving'];
	$id_checker = $_POST['id_checker'];

	$tanggal = date_now();

	// mencari total cargo 
	$queryAc =  mysqli_query($koneksi, "SELECT sum(revton_cargo_as) as actual_cargo FROM actual_moving WHERE id_moving='$id_moving' ");
	$rowAc = mysqli_fetch_assoc($queryAc);
	$Ac = $rowAc['actual_cargo'];

	$query2 = mysqli_query($koneksi, "SELECT * FROM moving 
											WHERE id_moving='$id_moving' ");
	$row2 = mysqli_fetch_assoc($query2);

	// Finish kegiatan mengikuti jam kargo pengangkutan terakhir 
	$queryFinish = mysqli_query($koneksi, "SELECT MAX(time_as) AS finish_kegiatan FROM actual_moving WHERE id_moving = '$id_moving'");
	$rowF = mysqli_fetch_assoc($queryFinish);
	$finish_kegiatan = $rowF['finish_kegiatan'];

	// input waktu di job order
	$awalK  = date_create($row2['mulai_kegiatan']);
	$akhirK = date_create($finish_kegiatan); // waktu sekarang
	$diffK  = date_diff($awalK, $akhirK);

	// mencari waktu kotor 
	$awalan  = strtotime($row2['mulai_kegiatan']);
	$akhiran  = strtotime($finish_kegiatan);

	$waktuKotor = $akhiran - $awalan;

	if ($diffK->d == 0) {
		if ($diffK->h >= 1) {
			$selisihK = $diffK->h . ' jam ' . $diffK->i . ' menit ';
		} else {
			$selisihK = $diffK->i . ' menit ';
		}
	} else {
		$selisihK = $diffK->d . ' hari ' . $diffK->h . ' jam ' . $diffK->i . ' menit ';
	}
	// 
	$timejob = $waktuKotor;
	// Update Joborder
	$query = mysqli_query($koneksi, "UPDATE moving 
									SET finish_kegiatan='$finish_kegiatan' , status_moving = '3', total_cargo = $Ac 
									, durasi = '$selisihK' , timejob = $timejob , id_checkerpenerima = '$id_checker'
									WHERE id_moving='$id_moving' ");

	if ($query) {
		header("location:index.php?p=proses_moving");
	} else {
		echo "ada yang salah" . mysqli_error($koneksi);
	}
}
