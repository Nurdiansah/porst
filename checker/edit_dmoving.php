<?php

session_start();
include "../fungsi/koneksi.php";
include "../fungsi/fungsi.php";

if (isset($_POST['add'])) {

    $id_moving = $_POST['id_moving'];
    $id_cargo = $_POST['id_cargo'];
    $nm_company = $_POST['nm_company'];
    $nm_barang = $_POST['nm_barang'];
    $production = $_POST['production'];
    $nm_kegiatan = $_POST['nm_kegiatan'];
    $no_po = $_POST['no_po'];
    $p_cargo = $_POST['p'];
    $l_cargo = $_POST['l'];
    $t_cargo = $_POST['t'];
    $ton_satuan = $_POST['ton_cargo']; //satuan
    $volume_satuan = $_POST['volume_jenis']; //satuan
    $no_po = $_POST['no_po'];
    $volume_cargo = $_POST['total_volume'];
    $ton_cargo = $_POST['total_ton'];
    $revton_cargo = $_POST['revton'];
    $qty_cargo = $_POST['qty_cargo'];
    $satuan_cargo = $_POST['satuan_jenis'];
    $deskripsi_cargo = $_POST['deskripsi_cargo'];

    // Ubah di detail_joborder
    $hasil1 = mysqli_query($koneksi, "UPDATE detail_moving
                                     SET nm_company = '$nm_company',
                                     nm_barang = '$nm_barang',
                                     production = '$production',
                                     nm_kegiatan = '$nm_kegiatan',
                                     no_po = '$no_po',
                                     p_cargo = '$p_cargo',
                                     l_cargo = '$l_cargo',
                                     t_cargo = '$t_cargo',
                                     ton_satuan = '$ton_satuan',
                                     volume_satuan = '$volume_satuan',
                                     no_po = '$no_po',
                                     volume_cargo = '$volume_cargo',
                                     ton_cargo = '$ton_cargo',
                                     revton_cargo = '$revton_cargo',
                                     qty_cargo = '$qty_cargo',
                                     satuan_cargo = '$satuan_cargo',
                                     deskripsi_cargo = '$deskripsi_cargo'                                 
                                     WHERE id_cargo = '$id_cargo' ");


    // query actual 
    $queryActual = mysqli_query($koneksi, "SELECT *  FROM actual_moving WHERE id_cargo = '$id_cargo'");

    // Looping record
    if (mysqli_num_rows($queryActual)) {
        foreach ($queryActual as $key) {

            $id_at = $key['id_at'];
            $qty_cargo_at = $key['qty_cargo_at'];
            $volume_cargo_at = $qty_cargo_at * $volume_satuan;
            $ton_cargo_at = $qty_cargo_at * $ton_satuan;

            // cari revton
            if ($volume_cargo_at > $ton_cargo_at) {
                $revton_cargo_at = $volume_cargo_at;
            } else {
                $revton_cargo_at = $ton_cargo_at;
            }

            mysqli_query($koneksi, "UPDATE actual_moving
                            SET nm_company_at = '$nm_company',
                            nm_barang_at = '$nm_barang',
                            production_at = '$production',
                            nm_kegiatan_at = '$nm_kegiatan',
                            no_po_at = '$no_po',
                            p_cargo_at = '$p_cargo',
                            l_cargo_at = '$l_cargo',
                            t_cargo_at = '$t_cargo',
                            no_po_at = '$no_po',
                            qty_cargo_at = '$qty_cargo_at',
                            volume_cargo_at = '$volume_cargo_at',
                            ton_cargo_at = '$ton_cargo_at',
                            revton_cargo_at = '$revton_cargo_at',
                            satuan_cargo_at = '$satuan_cargo',
                            deskripsi_cargo_at = '$deskripsi_cargo'
                            WHERE id_at = '$id_at' ");
        }
    }

    // Load					
    if ($hasil1) {
        $_SESSION['pesan'] = '<div id="pesan" class="alert alert-warning " ><b> Detail Cargo Berhasil di Ubah !</b></div>';
        header('location:index.php?p=detail_prosesmoving&id=' . base64_encode($id_moving));
    } else {
        die("ada kesalahan : " . mysqli_error($koneksi));
    }
}
