<?php  

	include "../fungsi/koneksi.php";
	include "../fungsi/fungsi.php";

	if(isset($_POST['submit'])) {


        $idJoborder = $_POST['id_moving'];
        		
		$tanggal= date_now();
		
        $query = mysqli_query($koneksi, "UPDATE moving  SET mulai_kegiatan='$tanggal' WHERE id_moving='$idJoborder' ");		                        		
		
		$idJoborder = base64_encode($idJoborder);
		if($query) { 
			header("location:index.php?p=detail_prosesmoving&id=$idJoborder");
		} else {
			echo "ada yang salah" . mysqli_error($koneksi);
		}
	}


?>