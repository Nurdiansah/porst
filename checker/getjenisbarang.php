<?php
include "../fungsi/koneksi.php";
    // $id = $_POST['id'];
    

    $query2 = mysqli_query($koneksi, "SELECT * FROM jenis_barang ");
    
$i= 0;
$kotak = array();
    $tampung = array();
    if (mysqli_num_rows($query2)) { 
        while ($row = mysqli_fetch_assoc($query2)) :

        // $arrays = array($row['id_jenis'],$row['nm_jenis']);
        $tampung = array(
            array('id'=>$row['id_jenis'],'nm_jenis'=>$row['nm_jenis'],'volume_jenis'=>$row['volume_jenis'])            
        );
        $kotak[$i]=$tampung;
        $i++;
        endwhile;

        
    } 
    echo json_encode($kotak);

        	


