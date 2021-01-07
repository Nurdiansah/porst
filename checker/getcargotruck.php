<?php
include "../fungsi/koneksi.php";
    $id = $_POST['id'];
    
    $query2 = mysqli_query($koneksi, "SELECT * FROM detail_jobordertruck WHERE id_djotruck = '$id'");
    echo json_encode( $row2=mysqli_fetch_assoc($query2));
        	


