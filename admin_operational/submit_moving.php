<?php
include "../fungsi/koneksi.php";

if(isset($_POST['submit'])) {
    
    $id_moving = $_POST['id_moving'];
    $no_wo = $_POST['no_wo'];
    
    date_default_timezone_set('Asia/Jakarta');
    $tanggal= date("Y-m-d H:i:s");				
    
    $query = mysqli_query($koneksi, "UPDATE moving SET status_moving='4', no_wo = '$no_wo' WHERE id_moving='$id_moving' ");		                        		
            

    if($query) {
        header("location:index.php?p=stf_moving");
    } else {
        echo "ada yang salah" . mysqli_error($koneksi);
    }
}
