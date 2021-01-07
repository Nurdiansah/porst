<?php  

	include "../fungsi/koneksi.php";

	if(isset($_GET['id'])) {
        $idJoborder = $_GET['id'];
        
		date_default_timezone_set('Asia/Jakarta');
		$tanggal= date("Y-m-d H:i:s");				
		
        $query = mysqli_query($koneksi, "UPDATE job_order SET status_jo='5' WHERE id_joborder='$idJoborder' ");		                        		
                
        

		if($query) {
			header("location:index.php?p=stf");
		} else {
			echo "ada yang salah" . mysqli_error($koneksi);
		}
	}


?>