<?php  
	include "../fungsi/koneksi.php";

	if(isset($_POST['simpan'])) {

		$id_joborder = $_POST['id_joborder'];
		$id_cargo = $_POST['id_cargo'];
		$id_jenis = $_POST['id_jenis'];
        $doc_no = $_POST['doc_no'];
        $qty_cargo = $_POST['qty_cargo'];        
        $rincian_cargo = $_POST['rincian_cargo'];                
		$remarks_cargo = $_POST['remarks_cargo'];
		$ton_cargo = $_POST['ton_cargo'];
		
		$queryJenis =  mysqli_query($koneksi, "SELECT * FROM jenis_barang WHERE id_jenis  = '$id_jenis'");
	    $rowJenis=mysqli_fetch_assoc($queryJenis);

		$m3_cargo = $qty_cargo * $rowJenis['volume_jenis'];		
		
		if($m3_cargo >= $ton_cargo){
			$revton_cargo = $m3_cargo;
		} else {
			$revton_cargo = $ton_cargo;
		}
		
		$query = "INSERT INTO detail_joborder ( id_joborder, id_cargo, id_jenis, doc_no, qty_cargo, rincian_cargo, m3_cargo, ton_cargo, revton_cargo, remarks_cargo, status_cargo, row_version) VALUES 
										( '$id_joborder', '$id_cargo', '$id_jenis', '$doc_no', '$qty_cargo', '$rincian_cargo', '$m3_cargo', '$ton_cargo', '$revton_cargo', '$remarks_cargo', 1, '2');
			";
		
		
		$hasil = mysqli_query($koneksi, $query);
		if ($hasil) {
			header('location:index.php?p=proses_cargo&id='.base64_encode($id_joborder));
		} else {
			die("ada kesalahan : " . mysqli_error($koneksi));
		}

	}

?>