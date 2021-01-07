<?php  

	include "../fungsi/koneksi.php";

	if(isset($_GET['id'])) {
        $idJoborder = $_GET['id'];
        
		date_default_timezone_set('Asia/Jakarta');
		$tanggal= date("Y-m-d H:i:s");				
		
		$query = mysqli_query($koneksi, "UPDATE job_order SET mulai_kegiatan='$tanggal' WHERE id_joborder='$idJoborder' ");		                        		
		
		$idJoborder = base64_encode($idJoborder);
		
		if($query) {
			header("location:index.php?p=proses_cargo&id=$idJoborder");
		} else {
			echo "ada yang salah" . mysqli_error($koneksi);
		}
	}


?>