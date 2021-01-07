<?php  

	include "../fungsi/koneksi.php";

	if(isset($_GET['id'])) {
        $idJoborder = $_GET['id'];
        
		date_default_timezone_set('Asia/Jakarta');
		$tanggal= date("Y-m-d H:i:s");				
		
        $query = mysqli_query($koneksi, "UPDATE job_order SET status_jo='2' WHERE id_joborder='$idJoborder' ");		                        		
        
        $queryId = mysqli_query($koneksi, "SELECT MAX(id_timeline) as id_timeline FROM timeline_joborder WHERE id_joborder='$idJoborder' ");
        $row = mysqli_fetch_array($queryId);                                                    
        $id_timeline=$row['id_timeline'];            

		$queryT = mysqli_query($koneksi, "UPDATE timeline_joborder SET waktu_mulaikembali = '$tanggal' WHERE id_timeline = '$id_timeline' ");
		
		$idJoborder = base64_encode($idJoborder);

		if($query) {
			header("location:index.php?p=proses_cargo&id=$idJoborder");
		} else {
			echo "ada yang salah" . mysqli_error($koneksi);
		}
	}


?>