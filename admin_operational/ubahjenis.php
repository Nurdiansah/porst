<?php
include "../fungsi/koneksi.php";

if(isset($_POST['add'])) {
    $id_jenis= $_POST['id_jenis'];
    $nm_jenis= $_POST['nm_jenis'];
    $p = $_POST['p'];
    $l = $_POST['l'];
    $t = $_POST['t'];
    $volume_jenis = round($_POST['volume_jenis'],2);        
    $satuan_jenis = $_POST['satuan_jenis'];

    $query = mysqli_query($koneksi, "UPDATE jenis_barang SET nm_jenis='$nm_jenis', p = '$p', l = '$l', t = '$t', volume_jenis = '$volume_jenis', satuan_jenis = '$satuan_jenis' WHERE id_jenis ='$id_jenis' ");
        

    if ($query) {
        header("location:index.php?p=jenis_barang");
    } else {
        die("ada kesalahan : " . mysqli_error($koneksi));
    }

}