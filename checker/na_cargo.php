<?php  

	include "../fungsi/koneksi.php";

	if(isset($_GET['idcargo'])) {
		$idCargo = $_GET['idcargo'];
		$tanggal = date('Y-m-d');
		
        $query1 = mysqli_query($koneksi, "UPDATE detail_joborder SET cargo_final=2 WHERE id_cargo='$idCargo' ");		
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