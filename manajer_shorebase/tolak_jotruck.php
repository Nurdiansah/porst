<?php  

	include "../fungsi/koneksi.php";
    include "../fungsi/fungsi.php";


	if(isset($_POST['simpan'])) {

        $id_joborder=  $_POST['id_jotruck'];
        $komentar = $_POST['komentar'];
        

		$query1 = mysqli_query($koneksi, "UPDATE job_ordertruck SET status_jotruck = '20' , komentar='$komentar' WHERE id_jobordertruck='$id_joborder' ");		
        

		if($query1) {
			header("location:index.php?p=approve_jotruck");
		} else {
			echo "ada yang salah" . mysqli_error($koneksi);
		}
	}


?>