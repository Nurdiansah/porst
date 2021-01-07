<?php
include "../fungsi/koneksi.php";

if(isset($_POST['submit'])) {
    
    $idJoborder = $_POST['id_jobordertruck'];
    $no_wo = $_POST['no_wo'];
    
    date_default_timezone_set('Asia/Jakarta');
    $tanggal= date("Y-m-d H:i:s");				
    
    $query = mysqli_query($koneksi, "UPDATE job_ordertruck SET status_jotruck='4', no_wo = '$no_wo' WHERE id_jobordertruck='$idJoborder' ");		                        		
            

    if($query) {
        header("location:index.php?p=stf_lotruck");
    } else {
        echo "ada yang salah" . mysqli_error($koneksi);
    }
}
