<?php  
	session_start();
	include "../fungsi/koneksi.php";

	if(isset($_POST['simpan'])) {
        //baca lokasi file sementara dan nama file dari form (doc_jo)
		$id_joborder = $_POST['id_joborder'];
		$nmDoc = $_POST['nmDoc'];
		$lokasiLo = ($_FILES['docLo']['tmp_name']);
		$DocLo=($_FILES['docLo']['name']);
        
		//tentukan folder untuk menyimpan file
		// $folderLo="file/$DocLo";
		move_uploaded_file($lokasiLo,"../file/$DocLo");



		$queryupdate = mysqli_query($koneksi, "UPDATE job_order SET status_jo=4
                                     WHERE id_joborder ='$id_joborder' ");
        
        $query = "INSERT INTO doc_lo ( id_joborder, nmDoc, docLo) VALUES 
										( '$id_joborder','$nmDoc', '$DocLo');
			";
		
		// move_uploaded_file($tmp,"file/ts/$Doc_ts");
		$hasil = mysqli_query($koneksi, $query);
		if ($hasil) {
			header("location:index.php?p=lihat_jovessel");
		} else {
			die("ada kesalahan : " . mysqli_error($koneksi));
        }

	}

?>
