<?php
session_start();
include "../fungsi/koneksi.php";
include "../fungsi/fungsi.php";

if (isset($_POST['add'])) {

    $id_moving = $_POST['id_moving'];
    $nm_company = $_POST['nm_company'];
    $nm_barang = $_POST['nm_barang'];
    $production = $_POST['production'];
    $no_po = $_POST['no_po'];
    $p_cargo = $_POST['p'];
    $l_cargo = $_POST['l'];
    $t_cargo = $_POST['t'];
    $ton_satuan = $_POST['ton_cargo'];
    $volume_satuan = $_POST['volume_jenis'];
    $no_po = $_POST['no_po'];
    $volume_cargo = $_POST['total_volume'];
    $ton_cargo = $_POST['total_ton'];
    $revton_cargo = $_POST['revton'];
    $qty_cargo = $_POST['qty_cargo'];
    $satuan_cargo = $_POST['satuan_jenis'];
    $deskripsi_cargo = 'Internal Moving';

    $tanggal = date_now();

    $queryArea =  mysqli_query($koneksi, "SELECT area from user WHERE username  = '$_SESSION[username]'");
    $rowArea = mysqli_fetch_assoc($queryArea);
    $Area = $rowArea['area'];

    // print_r($_POST); die;

    $query = "INSERT INTO detail_moving (id_moving, nm_company, nm_barang, production,  no_po, p_cargo, l_cargo, t_cargo, volume_satuan, ton_satuan,volume_cargo, ton_cargo, revton_cargo, qty_cargo, satuan_cargo, deskripsi_cargo) VALUES 
                                                ('$id_moving','$nm_company', '$nm_barang', '$production', '$no_po','$p_cargo', '$l_cargo', '$t_cargo', '$volume_satuan', '$ton_satuan', '$volume_cargo', '$ton_cargo', '$revton_cargo', '$qty_cargo', '$satuan_cargo', '$deskripsi_cargo');
			";

    $hasil = mysqli_query($koneksi, $query);

    // Load					
    if ($hasil) {
        header('location:index.php?p=detail_prosesmoving&id=' . base64_encode($id_moving));
    } else {
        die("ada kesalahan : " . mysqli_error($koneksi));
    }
}
