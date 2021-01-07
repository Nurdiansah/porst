<?php

	include "../fungsi/koneksi.php";

	if(isset($_POST['simpan'])){
        // print_r($_POST); die;
        $id_cargo=$_POST['id_cargo_edit'];                        
        $id_joborder=$_POST['id_joborder'];                		
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
        

	    $query = mysqli_query($koneksi, "UPDATE detail_joborder 
                                         SET id_jenis = '$id_jenis', doc_no = '$doc_no', 
                                         qty_cargo = '$qty_cargo', rincian_cargo = '$rincian_cargo', remarks_cargo = '$remarks_cargo',
                                         ton_cargo='$ton_cargo', revton_cargo='$revton_cargo' , m3_cargo = '$m3_cargo'
                                         WHERE id_cargo ='$id_cargo' ");
        
        if ($query) {
	    	header("location:index.php?p=buat_cargo&id=$id_joborder");
	    } else {
	    	echo 'gagal';
	    }
	
	}