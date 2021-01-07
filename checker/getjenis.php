<?php
include "../fungsi/koneksi.php";
    $id = $_POST['id'];
    

    $query2 = mysqli_query($koneksi, "SELECT * FROM jenis_barang WHERE id_jenis = '$id'");
    echo json_encode( $row2=mysqli_fetch_assoc($query2));
        	


