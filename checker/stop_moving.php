<?php  

    include "../fungsi/koneksi.php";
    include "../fungsi/fungsi.php";

	if(isset($_POST['simpan'])) {		        
        $id_moving=  $_POST['id_moving'];
        $alasan = $_POST['alasan'];
        
		$tanggal= date_now();        

		$query = mysqli_query($koneksi, "INSERT INTO timeline_moving ( id_moving, waktu_stop, keterangan_jeda ) VALUES 
																			( '$id_moving', '$tanggal', '$alasan');
            ");

        $queryJ = mysqli_query($koneksi, "UPDATE moving SET status_moving = '2' WHERE id_moving='$id_moving' ");		                        		

        $id_moving = base64_encode($id_moving);

		if($queryJ&&$query) {
			header("location:index.php?p=detail_prosesmoving&id=$id_moving");
		} else {
			echo "ada yang salah" . mysqli_error($koneksi);
		}
	}


?>