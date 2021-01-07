<?php  

include "../fungsi/koneksi.php";

if(isset($_POST['edit'])) {
	
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
    $document_perintah = $_POST['document_perintah'];
    $jml_cargo = $_POST['jml_cargo'];
    $sandar_kapal = $_POST['sandar_kapal'];
    $alat_berat = $_POST['alat_berat'];
    $alat_berat2 = $_POST['alat_berat2'];
    $alat_berat3 = $_POST['alat_berat3'];
    

    $lokasi_ptw = ($_FILES['doc_ptw']['tmp_name']);
    $Doc_ptw=($_FILES['doc_ptw']['name']);
    $lokasi_pjsm = ($_FILES['doc_pjsm']['tmp_name']);
    $Doc_pjsm=($_FILES['doc_pjsm']['name']);
    $lokasi_lsap = ($_FILES['doc_lsap']['tmp_name']);
    $Doc_lsap=($_FILES['doc_lsap']['name']);
    
    //tentukan folder untuk menyimpan file
    // $folder_ptw="file/$Doc_ptw";
    move_uploaded_file($lokasi_ptw,"../file/$Doc_ptw");
    move_uploaded_file($lokasi_pjsm,"../file/$Doc_pjsm");
    move_uploaded_file($lokasi_lsap,"../file/$Doc_lsap");

	$query = mysqli_query($koneksi, "UPDATE job_order SET nm_kapal='$nm_kapal', agen_kapal='$agen_kapal', tgl_masuk='$tgl_masuk', jm_masuk='$jm_masuk', tgl_keluar='$tgl_keluar', jm_keluar='$jm_keluar', pelabuhan_asal='$pelabuhan_asal', pelabuhan_tujuan='$pelabuhan_tujuan',
                                     client='$client', document_perintah='$document_perintah', jml_cargo='$jml_cargo', sandar_kapal='$sandar_kapal', doc_ptw='$Doc_ptw', doc_pjsm='$Doc_pjsm', doc_lsap='$Doc_lsap', alat_berat='$alat_berat', alat_berat2='$alat_berat2', alat_berat3='$alat_berat3', 
                                     status_jo=0
                                     WHERE id_joborder ='$id_joborder' ");
	if ($query) {
		header("location:index.php?p=data_ditolak");
	} else {
		echo 'error' . mysqli_error($koneksi);
	}

}



?>