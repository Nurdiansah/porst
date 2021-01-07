<?php  

    include "../fungsi/koneksi.php";
    include "../fungsi/fungsi.php";

	if(isset($_POST['simpan'])) {		        
        $id_joborder=  $_POST['id_joborder'];
        $alasan = $_POST['alasan'];
        
		$tanggal= date_now();        

		$query = mysqli_query($koneksi, "INSERT INTO timeline_jobordertruck ( id_jobordertruck, waktu_stop, keterangan_jeda ) VALUES 
																			( '$id_joborder', '$tanggal', '$alasan');
            ");

        $queryJ = mysqli_query($koneksi, "UPDATE job_ordertruck SET status_jotruck='2' WHERE id_jobordertruck='$id_joborder' ");		                        		

        $id_joborder = base64_encode($id_joborder);

		if($queryJ&&$query) {
			header("location:index.php?p=detail_prosestruck&id=$id_joborder");
		} else {
			echo "ada yang salah" . mysqli_error($koneksi);
		}
	}


?>