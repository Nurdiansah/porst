<?php  

	include "../fungsi/koneksi.php";

	if(isset($_GET['idcargo'])) {
		$idCargo = $_GET['idcargo'];
		$tanggal = date('Y-m-d');
		date_default_timezone_set('Asia/Jakarta');
      	$waktuCargo=date("H:i:s");
		
        $query1 = mysqli_query($koneksi, "UPDATE detail_joborder SET cargo_final=1, timeCargo='$waktuCargo' WHERE id_cargo='$idCargo' ");		
        $query = mysqli_query($koneksi, "SELECT id_joborder FROM detail_joborder WHERE id_cargo='$idCargo' ");		
        $row=mysqli_fetch_assoc($query);
		$idJoborder=$row['id_joborder'];

		if($query1) {
			header("location:index.php?p=proses_cargo&id=$idJoborder");
		} else {
			echo "ada yang salah" . mysqli_error($koneksi);
		}
	}


?>