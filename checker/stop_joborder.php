<?php  

	include "../fungsi/koneksi.php";

	if(isset($_POST['simpan'])) {		        
        $id_joborder=  $_POST['id_joborder'];
        $alasan = $_POST['alasan'];

        date_default_timezone_set('Asia/Jakarta');
		$tanggal= date("Y-m-d H:i:s");	
        

		$query = mysqli_query($koneksi, "INSERT INTO timeline_joborder ( id_joborder, waktu_stop, keterangan_jeda ) VALUES 
										( '$id_joborder', '$tanggal', '$alasan');
            ");

		$queryJ = mysqli_query($koneksi, "UPDATE job_order SET status_jo='3' WHERE id_joborder='$id_joborder' ");		                        		
		
		$idJoborder = base64_encode($id_joborder);

		if($query) {
			header("location:index.php?p=proses_cargo&id=$idJoborder");
		} else {
			echo "ada yang salah" . mysqli_error($koneksi);
		}
	}


?>