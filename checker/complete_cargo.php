<?php  

	include "../fungsi/koneksi.php";

	if(isset($_POST['simpan'])) {

		$idJoborder = $_POST['id_joborder'];
        $tanggalCargo = $_POST['tanggalCargo'];
        $startCargo = $_POST['startCargo'];
        $finishCargo = $_POST['finishCargo'];

		// query progres_cargo
		$queryPc =  mysqli_query($koneksi, "SELECT sum(m3_cargo) as progres_cargo FROM detail_joborder WHERE id_joborder='$idJoborder' AND cargo_final='1'");
		$rowPc=mysqli_fetch_assoc($queryPc);
		$Pc=$rowPc['progres_cargo'];

		$query = "INSERT INTO timeline_cargo ( id_joborder, tanggalCargo, startCargo, finishCargo, statusTimeline) VALUES 
										( '$idJoborder','$tanggalCargo','$startCargo','$finishCargo', 1);
			";
		
		$query1 = mysqli_query($koneksi, "UPDATE job_order SET status_jo=3, total_cargo='$Pc' WHERE id_joborder='$idJoborder' ");		
		
		
		$hasil = mysqli_query($koneksi, $query);

		if($hasil) {
			header("location:index.php?p=proses_jovessel");
		} else {
			echo "ada yang salah" . mysqli_error($koneksi);
		}
	}


?>