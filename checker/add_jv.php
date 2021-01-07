<?php  

	include "../fungsi/koneksi.php";

	if(isset($_POST['update'])) {

        // ambil inputan
        $id_joborder = $_POST['id_joborder'];        
        $id_cargo = $_POST['id_cargo'];	        
        $qty_as = $_POST['qty_as'];  
        $keterangan = $_POST['keterangan'];
        
        
        $queryDJ =  mysqli_query($koneksi, "SELECT * from detail_joborder WHERE id_cargo  = '$id_cargo'");
        $rowDJ=mysqli_fetch_assoc($queryDJ);

        // ambil data dari detail joborder
        $id_jenis = $rowDJ['id_jenis'];
        $doc_no_as = $rowDJ['doc_no'];        
        $rincian_cargo = $rowDJ['rincian_cargo'];        
        $remarks_as = $rowDJ['remarks_cargo'];
        $row_version = $rowDJ['row_version'];        
        $qty_cargo = $rowDJ['qty_cargo'];        
        $m3_cargo = $rowDJ['m3_cargo'];
        $ton_cargo = $rowDJ['ton_cargo'];
        $revton_cargo = $rowDJ['revton_cargo'];

        // tonase actual
        $m3_as = ($qty_as/$qty_cargo) * $m3_cargo ; 
        $ton_as = ($qty_as/$qty_cargo) * $ton_cargo ;
        $revton_as = ($qty_as/$qty_cargo) * $revton_cargo ;

        // sisa stok tonase di detail job order
        $qty_stok = $qty_cargo - $qty_as;
        $m3_stok = $m3_cargo - $m3_as;
        $ton_stok = $ton_cargo - $ton_as;
        $revton_stok = $revton_cargo - $revton_as;

		date_default_timezone_set('Asia/Jakarta');
		$tanggal= date("Y-m-d H:i:s");				
		
        $query = "INSERT INTO actual_stevedoring ( id_joborder, id_cargo, id_jenis, time_as, doc_no_as, qty_as, rincian_cargo, m3_as, ton_as, revton_as, remarks_as, row_version, keterangan) VALUES 
										( '$id_joborder', '$id_cargo','$id_jenis', '$tanggal', '$doc_no_as', '$qty_as', '$rincian_cargo', '$m3_as', '$ton_as', '$revton_as', '$remarks_as','$row_version' ,'$keterangan');
            ";
            
        $query1 = mysqli_query($koneksi, "UPDATE detail_joborder 
                                        SET qty_cargo = '$qty_stok', m3_cargo = '$m3_stok' ,
                                        ton_cargo = '$ton_stok', revton_cargo = '$revton_stok'
                                        WHERE id_cargo='$id_cargo' ");		
            
        $hasil = mysqli_query($koneksi, $query);
        
        $id_joborder = base64_encode($id_joborder);
        
		if($hasil) {
			header("location:index.php?p=proses_cargo&id=$id_joborder");
		} else {
			echo "ada yang salah" . mysqli_error($koneksi);
		}
	}


?>