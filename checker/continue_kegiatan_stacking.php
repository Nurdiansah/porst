<?php  

    include "../fungsi/koneksi.php";
    include '../fungsi/fungsi.php';

	if(isset($_POST['submit'])) {
        $id_stacking = $_POST['id_stacking'];
        		
        $tanggal= date_now();                
		
        $query = mysqli_query($koneksi, "UPDATE stacking SET status_stacking ='1' WHERE id_stacking='$id_stacking' ");		                        		
        
        $queryId = mysqli_query($koneksi, "SELECT MAX(id_timeline) as id_timeline FROM timeline_stacking WHERE id_stacking='$id_stacking' ");
        $row = mysqli_fetch_array($queryId);                                                    
        $id_timeline=$row['id_timeline'];            

        $queryT = mysqli_query($koneksi, "UPDATE timeline_stacking SET waktu_mulaikembali = '$tanggal' WHERE id_timeline = '$id_timeline' ");

        $id_stacking = base64_encode($id_stacking);

		if($queryT&&$query) {
			header("location:index.php?p=detail_prosesstacking&id=$id_stacking");
		} else {
			echo "ada yang salah" . mysqli_error($koneksi);
		}
	}


?>