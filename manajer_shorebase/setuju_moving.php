<?php  

	include "../fungsi/koneksi.php";



	if(isset($_POST['simpan'])) {	
            
        $id_moving=  $_POST['id_moving'];        


		$query1 = mysqli_query($koneksi, "UPDATE moving SET status_moving = 5 WHERE id_moving='$id_moving' ");		

        

		if($query1) {
			header("location:index.php?p=approve_moving");
		} else {
			echo "ada yang salah" . mysqli_error($koneksi);
		}
	}


?>