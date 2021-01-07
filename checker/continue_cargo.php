<?php  
	include "../fungsi/koneksi.php";

	if(isset($_POST['simpan'])) {

		$id_joborder = $_POST['id_joborder'];
        $tanggalCargo = $_POST['tanggalCargo'];
        $startCargo = $_POST['startCargo'];
        $finishCargo = $_POST['finishCargo'];
	
		$query = "INSERT INTO timeline_cargo ( id_joborder, tanggalCargo, startCargo, finishCargo, statusTimeline) VALUES 
										( '$id_joborder','$tanggalCargo','$startCargo','$finishCargo', 0);
			";
		
		
		$hasil = mysqli_query($koneksi, $query);
		if ($hasil) {
			header("location:index.php?p=proses_jovessel");
		} else {
			die("ada kesalahan : " . mysqli_error($koneksi));
		}

	}

?>