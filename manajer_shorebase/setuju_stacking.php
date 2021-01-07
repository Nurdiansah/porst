<?php  

	include "../fungsi/koneksi.php";



	if(isset($_POST['simpan'])) {	
            
        $id_stacking=  $_POST['id_stacking'];        


		$query1 = mysqli_query($koneksi, "UPDATE stacking SET status_stacking = 5 WHERE id_stacking='$id_stacking' ");		

        

		if($query1) {
			header("location:index.php?p=approve_stacking");
		} else {
			echo "ada yang salah" . mysqli_error($koneksi);
		}
	}


?>