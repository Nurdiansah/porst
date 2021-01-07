<?php

include "../fungsi/koneksi.php";
include '../fungsi/fungsi.php';

if (isset($_POST['submit'])) {
	$idJoborder = $_POST['id_jobordertruck'];

	$tanggal = date_now();

	// mencari total cargo 
	$queryAc =  mysqli_query($koneksi, "SELECT sum(revton_cargo_at) as actual_cargo FROM actual_jobordertruck WHERE id_jobordertruck='$idJoborder' AND keterangan_at != 'Not Available' ");
	$rowAc = mysqli_fetch_assoc($queryAc);
	$Ac = $rowAc['actual_cargo'];

	$query2 = mysqli_query($koneksi, "SELECT * FROM job_ordertruck WHERE id_jobordertruck='$idJoborder' ");
	$row2 = mysqli_fetch_assoc($query2);

	// Finish kegiatan mengikuti jam kargo pengangkutan terakhir 
	$queryFinish = mysqli_query($koneksi, "SELECT MAX(time_at) AS finish_kegiatan FROM actual_jobordertruck WHERE id_jobordertruck = '$idJoborder'");
	$rowF = mysqli_fetch_assoc($queryFinish);
	$finish_kegiatan = $rowF['finish_kegiatan'];

	// input waktu di job order
	$awalan  = strtotime($row2['mulai_kegiatan']);
	$akhiran  = strtotime($finish_kegiatan);

	$waktuKotor = $akhiran - $awalan;
	// cek apakah ada waktu mulai istirahat atau jeda  sebelum pengangkutan terakhir
	$queryIstirahat = mysqli_query($koneksi, "SELECT * FROM timeline_jobordertruck WHERE id_jobordertruck = '$idJoborder' AND waktu_stop <= '$finish_kegiatan'");

	if (mysqli_num_rows($queryIstirahat)) {
		// Jika ada istirahat di tengah tengah kegiatan
		$waktuJeda = 0;
		if (mysqli_num_rows($queryIstirahat)) {
			while ($rowTime = mysqli_fetch_assoc($queryIstirahat)) :

				$awalan  = strtotime($rowTime['waktu_stop']);
				$akhiran  = strtotime($rowTime['waktu_mulaikembali']);

				$difJ = $akhiran - $awalan;

				$waktuJeda += $difJ;

			endwhile;
		}

		// Hitung waktu di pekerjaan				

		$totalWaktu = detikToString($waktuKotor - $waktuJeda);
		$timejob = $waktuKotor - $waktuJeda;
		// echo "Waktu Kotor : " . detikToString($waktuKotor);
		// echo " Waktu Jeda  : " . detikToString($waktuJeda);


	} else {
		// kondisi jika tidak ada waktu istirahat di tengah tengah kegiatan
		// Hitung waktu di pekerjaan
		$totalWaktu = detikToString($waktuKotor);
		$timejob = $waktuKotor;

		$waktuJeda = 0;
	}
	// Waktu jeda convert ke string
	$totalJeda = detikToString($waktuJeda);

	if ($timejob == 0) {
		$timejob = 300;
		$totalWaktu = detikToString($timejob);
	}
	// Update Joborder
	$query = mysqli_query($koneksi, "UPDATE job_ordertruck 
										SET finish_kegiatan='$finish_kegiatan' , status_jotruck = '3', total_cargo = $Ac , 
										durasi = '$totalWaktu' , durasi_jeda = '$totalJeda', timejob = $timejob
										WHERE id_jobordertruck='$idJoborder' ");

	if ($query) {
		header("location:index.php?p=proses_jotruck");
	} else {
		echo "ada yang salah" . mysqli_error($koneksi);
	}
}
