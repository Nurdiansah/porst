<?php
	include "../fungsi/koneksi.php";

	if(isset($_GET['id'])){
		$id=$_GET['id'];
		
	    $query = mysqli_query($koneksi,"delete from job_order where id_joborder=$id");
	    if ($query) {
	    	header("location:index.php?p=lihat_jovessel");
	    } else {
	    	echo 'gagal';
	    }
	
	}
?>