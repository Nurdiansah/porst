<?php  

	include "../fungsi/koneksi.php";



	if(isset($_POST['simpan'])) {
		// $id = $_GET['id'];
        $tanggal = date('Y-m-d');
        $id_joborder=  $_POST['id_joborder'];
        $komentar = $_POST['komentar'];
        
        // $query = "INSERT INTO job_order ( komentar) VALUES 
		// 								( '$komentar');
	 	// 	";

		$query1 = mysqli_query($koneksi, "UPDATE job_order SET status_jo=4, komentar='$komentar' WHERE id_joborder='$id_joborder' ");		

        

		if($query1) {
			header("location:index.php?p=data_jovessel");
		} else {
			echo "ada yang salah" . mysqli_error($koneksi);
		}
	}


?>