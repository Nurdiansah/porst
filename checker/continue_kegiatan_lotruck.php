<?php  

    include "../fungsi/koneksi.php";
    include '../fungsi/fungsi.php';

	if(isset($_POST['submit'])) {
        $idJoborder = $_POST['id_jobordertruck'];
        		
        $tanggal= date_now();                
		
        $query = mysqli_query($koneksi, "UPDATE job_ordertruck SET status_jotruck='1' WHERE id_jobordertruck='$idJoborder' ");		                        		
        
        $queryId = mysqli_query($koneksi, "SELECT MAX(id_timeline) as id_timeline FROM timeline_jobordertruck WHERE id_jobordertruck='$idJoborder' ");
        $row = mysqli_fetch_array($queryId);                                                    
        $id_timeline=$row['id_timeline'];            

        $queryT = mysqli_query($koneksi, "UPDATE timeline_jobordertruck SET waktu_mulaikembali = '$tanggal' WHERE id_timeline = '$id_timeline' ");

        $idJoborder = base64_encode($idJoborder);

		if($queryT&&$query) {
			header("location:index.php?p=detail_prosestruck&id=$idJoborder");
		} else {
			echo "ada yang salah" . mysqli_error($koneksi);
		}
	}


?>