<?php  

	include "../fungsi/koneksi.php";
	include "../fungsi/fungsi.php";

	if(isset($_POST['submit'])) {


        $idJoborder = $_POST['id_stacking'];
        		
		$tanggal= date_now();
		
        $query = mysqli_query($koneksi, "UPDATE stacking  SET mulai_kegiatan='$tanggal' WHERE id_stacking='$idJoborder' ");		                        		
		
		$idJoborder = base64_encode($idJoborder);
		if($query) { 
			header("location:index.php?p=detail_prosesstacking&id=$idJoborder");
		} else {
			echo "ada yang salah" . mysqli_error($koneksi);
		}
	}


?>