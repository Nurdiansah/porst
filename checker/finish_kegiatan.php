<?php

include "../fungsi/koneksi.php";
include "../fungsi/fungsi.php";

if (isset($_GET['id'])) {
	$idJoborder = $_GET['id'];

	date_default_timezone_set('Asia/Jakarta');
	$tanggal = date("Y-m-d H:i:s");

	$queryAc =  mysqli_query($koneksi, "SELECT sum(revton_as) as actual_cargo FROM actual_stevedoring WHERE id_joborder='$idJoborder' AND keterangan != 'Not Available' ");
	$rowAc = mysqli_fetch_assoc($queryAc);
	$Ac = $rowAc['actual_cargo'];

	$query2 = mysqli_query($koneksi, "SELECT * FROM job_order jo
                                            JOIN client c
                                            ON c.id_client = jo.id_client
											WHERE jo.id_joborder='$idJoborder' ");
	$row2 = mysqli_fetch_assoc($query2);

	// input waktu di job order

	$awalK  = date_create($row2['mulai_kegiatan']);
	$akhirK = date_create($tanggal); // waktu sekarang
	$diffK  = date_diff($awalK, $akhirK);

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

	$awalan  = strtotime($row2['mulai_kegiatan']);
	$akhiran  = strtotime($tanggal);

	$time = $akhiran - $awalan;

	$query = mysqli_query($koneksi, "UPDATE job_order 
										SET finish_kegiatan='$tanggal' , status_jo = '4', total_cargo = $Ac , durasi = '$selisihK' , time = $time
										WHERE id_joborder='$idJoborder' ");

	if ($query) {
		header("location:index.php?p=lihat_jovessel");
	} else {
		echo "ada yang salah" . mysqli_error($koneksi);
	}
}
