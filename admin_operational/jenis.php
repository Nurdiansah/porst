<?php
	include "../fungsi/koneksi.php";    
    $jenis=$_POST['jenis'];
    $query = mysqli_query($koneksi, "SELECT * FROM jenis_barang WHERE id_jenis = '$jenis' ");
    while($data=mysqli_fetch_array($query)){
    echo '<label value="'.$data['volume_jenis'].'"> <b>'.$data['volume_jenis'].'</b></label>';
    // echo '<input value="'.$data['volume_jenis'].'"><b>'.$data['volume_jenis'].'</b>';
    }
 ?>