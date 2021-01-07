<?php  

	include "../fungsi/koneksi.php";
    include "../fungsi/fungsi.php";


	if(isset($_POST['simpan'])) {

        $id_joborder=  $_POST['id_moving'];
        $komentar = $_POST['komentar'];
        

		$query1 = mysqli_query($koneksi, "UPDATE moving SET status_moving = '20' , komentar='$komentar' WHERE id_moving='$id_joborder' ");		
        

		if($query1) {
			header("location:index.php?p=approve_moving");
		} else {
			echo "ada yang salah" . mysqli_error($koneksi);
		}
	}


?>