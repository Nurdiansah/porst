<?php  

    include "../fungsi/koneksi.php";
    include '../fungsi/fungsi.php';

	if(isset($_POST['submit'])) {
        $id_moving = $_POST['id_moving'];
        		
        $tanggal= date_now();                
		
        $query = mysqli_query($koneksi, "UPDATE moving SET status_moving ='1' WHERE id_moving='$id_moving' ");		                        		
        
        $queryId = mysqli_query($koneksi, "SELECT MAX(id_timeline) as id_timeline FROM timeline_moving WHERE id_moving='$id_moving' ");
        $row = mysqli_fetch_array($queryId);                                                    
        $id_timeline=$row['id_timeline'];            

        $queryT = mysqli_query($koneksi, "UPDATE timeline_moving SET waktu_mulaikembali = '$tanggal' WHERE id_timeline = '$id_timeline' ");

        $id_moving = base64_encode($id_moving);

		if($queryT&&$query) {
			header("location:index.php?p=detail_prosesmoving&id=$id_moving");
		} else {
			echo "ada yang salah" . mysqli_error($koneksi);
		}
	}


?>