<?php  

include "../fungsi/koneksi.php";

if(isset($_POST['update'])) {
	$id = $_POST['id'];
	
	$username = $_POST['username'];
	$manajer = $_POST['manajer'];
	$asmen = $_POST['asmen'];	
	$level = $_POST['level'];
	$nama = $_POST['nama'];
	$email = $_POST['email'];
	$area = $_POST['area'];	
	
	$query = mysqli_query($koneksi, "UPDATE user SET username='$username', manajer='$manajer', asmen='$asmen', nama='$nama', email='$email', area='$area', level='$level' WHERE id_user ='$id' ");
	
	if ($query) {
		header("location:index.php?p=user");
	} else {
		echo 'error' . mysqli_error($koneksi);
	}

}



?>