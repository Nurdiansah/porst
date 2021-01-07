<?php
include "../fungsi/koneksi.php";

if(isset($_POST['submit'])) {
    
    $id_stacking = $_POST['id_stacking'];
    $no_wo = $_POST['no_wo'];
    
    date_default_timezone_set('Asia/Jakarta');
    $tanggal= date("Y-m-d H:i:s");				
    
    $query = mysqli_query($koneksi, "UPDATE stacking SET status_stacking='4', no_wo = '$no_wo' WHERE id_stacking='$id_stacking' ");		                        		
            

    if($query) {
        header("location:index.php?p=stf_stacking");
    } else {
        echo "ada yang salah" . mysqli_error($koneksi);
    }
}
