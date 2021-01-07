<?php
session_start();
include "../fungsi/koneksi.php";
include "../fungsi/fungsi.php";

if (isset($_POST['simpan'])) {

	$id_joborder = $_POST['id_joborder'];
	$nm_kapal = $_POST['nm_kapal'];
	$agen_kapal = $_POST['agen_kapal'];
	$tgl_masuk = $_POST['tgl_masuk'];
	$jm_masuk = $_POST['jm_masuk'];
	$tgl_keluar = $_POST['tgl_keluar'];
	$jm_keluar = $_POST['jm_keluar'];
	$pelabuhan_asal = $_POST['pelabuhan_asal'];
	$pelabuhan_tujuan = $_POST['pelabuhan_tujuan'];
	$client = $_POST['client'];
	$jenis_cargo = $_POST['jenis_cargo'];
	$document_perintah = $_POST['document_perintah'];
	$sandar_kapal = $_POST['sandar_kapal'];
	$alat_berat = $_POST['alat_berat'];
	$alat_berat2 = $_POST['alat_berat2'];
	$alat_berat3 = $_POST['alat_berat3'];
	$alat_berat4 = $_POST['alat_berat4'];
	$alat_berat5 = $_POST['alat_berat5'];
	$alat_beratsewa = $_POST['alat_beratsewa'];


	$lokasi_ptw = ($_FILES['doc_ptw']['tmp_name']);
	$Doc_ptw = ($_FILES['doc_ptw']['name']);
	$nama_ptw = $id_joborder . "-ptw";

	$lokasi_pjsm = ($_FILES['doc_pjsm']['tmp_name']);
	$Doc_pjsm = ($_FILES['doc_pjsm']['name']);
	$nama_pjsm = $id_joborder . "-pjsm";

	$lokasi_lsap = ($_FILES['doc_lsap']['tmp_name']);
	$Doc_lsap = ($_FILES['doc_lsap']['name']);
	$nama_lsap = $id_joborder . "-lsap";

	//tentukan folder untuk menyimpan file
	// $folder_ptw="file/$Doc_ptw";
	move_uploaded_file($lokasi_ptw, "../file/ptw/$nama_ptw");
	move_uploaded_file($lokasi_pjsm, "../file/pjsm/$nama_pjsm");
	move_uploaded_file($lokasi_lsap, "../file/lsap/$nama_lsap");

	$queryArea =  mysqli_query($koneksi, "SELECT area FROM jetty WHERE nm_jetty = '$sandar_kapal'");
	$rowArea = mysqli_fetch_assoc($queryArea);
	$Area = $rowArea['area'];

	$kode_jovessel = kode_jovessel($Area);

	$query = "INSERT INTO job_order ( id_joborder, kode_jovessel, nm_kapal, agen_kapal, tgl_masuk, jm_masuk, tgl_keluar, jm_keluar, pelabuhan_asal, pelabuhan_tujuan, id_client, nm_kegiatan, document_perintah, sandar_kapal, alat_berat, alat_berat2, alat_berat3, alat_berat4, alat_berat5, alat_beratsewa, area, doc_ptw, doc_pjsm, doc_lsap, progres_jo, status_jo) VALUES 
									( '$id_joborder', '$kode_jovessel','$nm_kapal', '$agen_kapal', '$tgl_masuk', '$jm_masuk', '$tgl_keluar', '$jm_keluar', '$pelabuhan_asal', '$pelabuhan_tujuan', '$client', '$jenis_cargo', '$document_perintah', '$sandar_kapal', '$alat_berat', '$alat_berat2', '$alat_berat3', '$alat_berat4', '$alat_berat5', '$alat_beratsewa','$Area','$Doc_ptw', '$Doc_pjsm', '$Doc_lsap', 0, 1);
			";

	// move_uploaded_file($tmp,"file/pjsm/$Doc_pjsm");
	$hasil = mysqli_query($koneksi, $query);
	if ($hasil) {
		header("location:index.php?p=buat_cargo&id=$id_joborder");
	} else {
		die("ada kesalahan : " . mysqli_error($koneksi));
	}
}

?>
<!-- pindah -->
<!--  -->