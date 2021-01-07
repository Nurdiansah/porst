<?php  

    include "../fungsi/koneksi.php";
    include "../fungsi/fungsi.php";

	if(isset($_POST['simpan'])) {		        
        $id_stacking=  $_POST['id_stacking'];
        $alasan = $_POST['alasan'];
        
		$tanggal= date_now();        

		$query = mysqli_query($koneksi, "INSERT INTO timeline_stacking ( id_stacking, waktu_stop, keterangan_jeda ) VALUES 
																			( '$id_stacking', '$tanggal', '$alasan');
            ");

        $queryJ = mysqli_query($koneksi, "UPDATE stacking SET status_stacking = '2' WHERE id_stacking='$id_stacking' ");		                        		

        $id_stacking = base64_encode($id_stacking);

		if($queryJ&&$query) {
			header("location:index.php?p=detail_prosesstacking&id=$id_stacking");
		} else {
			echo "ada yang salah" . mysqli_error($koneksi);
		}
	}


?>