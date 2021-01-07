<?php  

	include "../fungsi/koneksi.php";

	if(isset($_GET['id'])) {
		$id = $_GET['id'];
		$tanggal = date('Y-m-d');
		
		$query1 = mysqli_query($koneksi, "UPDATE job_order SET status_jo=6 WHERE id_joborder='$id' ");		

		

		if($query1) {
			header("location:index.php?p=data_jovessel");
		} else {
			echo "ada yang salah" . mysqli_error($koneksi);
		}
	}


?>