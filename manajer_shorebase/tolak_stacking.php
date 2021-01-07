<?php  

	include "../fungsi/koneksi.php";
    include "../fungsi/fungsi.php";


	if(isset($_POST['simpan'])) {

        $id_joborder=  $_POST['id_stacking'];
        $komentar = $_POST['komentar'];
        

		$query1 = mysqli_query($koneksi, "UPDATE stacking SET status_stacking = '20' , komentar='$komentar' WHERE id_stacking='$id_joborder' ");		
        

		if($query1) {
			header("location:index.php?p=approve_stacking");
		} else {
			echo "ada yang salah" . mysqli_error($koneksi);
		}
	}


?>