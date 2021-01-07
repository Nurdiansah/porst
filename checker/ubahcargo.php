<?php

	include "../fungsi/koneksi.php";

	if(isset($_POST['simpan'])){
        // print_r($_POST); die;
        $id_cargo=$_POST['id_car'];
        $ton_cargo=$_POST['ton_cargo'];
        $m3_cargo=$_POST['m3_cargo'];
        
        $id_joborder=$_POST['id_job'];		

        if($m3_cargo >= $ton_cargo){
			$revton_cargo = $m3_cargo;
		} else {
			$revton_cargo = $ton_cargo;
		}
        

	    $query = mysqli_query($koneksi, "UPDATE detail_joborder SET ton_cargo='$ton_cargo', revton_cargo='$revton_cargo', row_version = '3' WHERE id_cargo ='$id_cargo' ");
        
        if ($query) {
	    	header("location:index.php?p=proses_cargo&id=$id_joborder");
	    } else {
	    	echo 'gagal';
	    }
	
	}