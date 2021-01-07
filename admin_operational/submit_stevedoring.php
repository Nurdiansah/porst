<?php
include "../fungsi/koneksi.php";

if(isset($_POST['submit'])) {
    
    $idJoborder = $_POST['id_joborder'];
    $no_wo = $_POST['no_wo'];
    
    date_default_timezone_set('Asia/Jakarta');
    $tanggal= date("Y-m-d H:i:s");				
    
    $query = mysqli_query($koneksi, "UPDATE job_order SET status_jo='5', no_wo = '$no_wo' WHERE id_joborder='$idJoborder' ");		                        		
            

    if($query) {
        header("location:index.php?p=stf");
    } else {
        echo "ada yang salah" . mysqli_error($koneksi);
    }
}
