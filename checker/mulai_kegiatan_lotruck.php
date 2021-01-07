<?php  

	include "../fungsi/koneksi.php";
	include "../fungsi/fungsi.php";

	if(isset($_POST['submit'])) {


        $idJoborder = $_POST['id_jobordertruck'];
        		
		$tanggal= date_now();
		
        $query = mysqli_query($koneksi, "UPDATE job_ordertruck  SET mulai_kegiatan='$tanggal' WHERE id_jobordertruck='$idJoborder' ");		                        		
		
		$idJoborder = base64_encode($idJoborder);
		if($query) { 
			header("location:index.php?p=detail_prosestruck&id=$idJoborder");
		} else {
			echo "ada yang salah" . mysqli_error($koneksi);
		}
	}


?>