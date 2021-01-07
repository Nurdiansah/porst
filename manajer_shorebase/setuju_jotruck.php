<?php  

	include "../fungsi/koneksi.php";



	if(isset($_POST['simpan'])) {	
            
        $id_jotruck=  $_POST['id_jotruck'];        


		$query1 = mysqli_query($koneksi, "UPDATE job_ordertruck SET status_jotruck = 5 WHERE id_jobordertruck = '$id_jotruck' ");		

        

		if($query1) {
			header("location:index.php?p=approve_jotruck");
		} else {
			echo "ada yang salah" . mysqli_error($koneksi);
		}
	}


?>