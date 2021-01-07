<?php
    include "../fungsi/koneksi.php";

	if(isset($_GET['id'])){
        $id=$_GET['id'];
            
		
	    $query = mysqli_query($koneksi,"DELETE FROM detail_joborder WHERE id_cargo = '$id'");
	    if ($query) {
	    	header("location:index.php?p=draf_lo");
	    } else {
	    	echo 'gagal';
	    }
	
	}