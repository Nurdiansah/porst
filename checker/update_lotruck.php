<?php

include "../fungsi/koneksi.php";
include '../fungsi/fungsi.php';

if (isset($_POST['update'])) {

    // ambil inputan
    $id_jobordertruck = $_POST['id_joborder'];
    $id_djotruck = $_POST['id_djotruck'];
    $qty_at = $_POST['qty_cargo_update'];
    $jenis_kegiatan = $_POST['jenis_kegiatan'];

    if ($jenis_kegiatan == 'OFFLOADING') {
        $keterangan = $_POST['keterangan_offloading'];
    } else {
        $keterangan = $_POST['keterangan_loading'];
    }



    $queryDJ =  mysqli_query($koneksi, "SELECT * from detail_jobordertruck WHERE id_djotruck  = '$id_djotruck'");
    $rowDJ = mysqli_fetch_assoc($queryDJ);

    // ambil data dari detail joborder                            
    $qty_cargo = $rowDJ['qty_cargo'];
    $m3_cargo = $rowDJ['volume_cargo'];
    $ton_cargo = $rowDJ['ton_cargo'];
    $revton_cargo = $rowDJ['revton_cargo'];
    $id_djotruck = $rowDJ['id_djotruck'];
    $nm_company = $rowDJ['nm_company'];
    $nm_barang = $rowDJ['nm_barang'];
    $production = $rowDJ['production'];
    $nm_kegiatan = $rowDJ['nm_kegiatan'];
    $no_po = $rowDJ['no_po'];
    $p_cargo = $rowDJ['p_cargo'];
    $l_cargo = $rowDJ['l_cargo'];
    $t_cargo = $rowDJ['t_cargo'];
    $no_po = $rowDJ['no_po'];
    $satuan_cargo = $rowDJ['satuan_cargo'];
    $deskripsi_cargo = $rowDJ['deskripsi_cargo'];

    // tonase actual
    $p_at = ($qty_at / $qty_cargo) * $p_cargo;
    $l_at = ($qty_at / $qty_cargo) * $l_cargo;
    $t_at = ($qty_at / $qty_cargo) * $t_cargo;
    $m3_at = ($qty_at / $qty_cargo) * $m3_cargo;
    $ton_at = ($qty_at / $qty_cargo) * $ton_cargo;
    $revton_at = ($qty_at / $qty_cargo) * $revton_cargo;

    // sisa stok tonase di detail job order
    $qty_stok = $qty_cargo - $qty_at;
    $p_stok = $p_cargo - $p_at;
    $l_stok = $l_cargo - $l_at;
    $t_stok = $t_cargo - $t_at;
    $m3_stok = $m3_cargo - $m3_at;
    $ton_stok = $ton_cargo - $ton_at;
    $revton_stok = $revton_cargo - $revton_at;

    // echo $qty_stok; die;

    $tanggal = date_now();

    $query = "INSERT INTO actual_jobordertruck ( id_djotruck,  time_at, id_jobordertruck, nm_company_at, nm_barang_at, production_at, nm_kegiatan_at, no_po_at, p_cargo_at, l_cargo_at, t_cargo_at, volume_cargo_at, ton_cargo_at, revton_cargo_at, qty_cargo_at, satuan_cargo_at, deskripsi_cargo_at, keterangan_at ) VALUES 
										        ( '$id_djotruck', '$tanggal', '$id_jobordertruck','$nm_company', '$nm_barang', '$production','$nm_kegiatan', '$no_po','$p_cargo', '$l_cargo', '$t_cargo', '$m3_at', '$ton_at', '$revton_at', '$qty_at', '$satuan_cargo', '$deskripsi_cargo', '$keterangan');
            ";

    $query1 = mysqli_query($koneksi, "UPDATE detail_jobordertruck 
                                        SET qty_cargo = '$qty_stok', volume_cargo = '$m3_stok' ,
                                        ton_cargo = '$ton_stok', revton_cargo = '$revton_stok' , 
                                        p_cargo = '$p_cargo', l_cargo = '$l_cargo',t_cargo = '$t_cargo'
                                        WHERE id_djotruck='$id_djotruck' ");

    $hasil = mysqli_query($koneksi, $query);

    $id_jobordertruck = base64_encode($id_jobordertruck);

    if ($query1 && $hasil) {
        header("location:index.php?p=detail_prosestruck&id=$id_jobordertruck");
    } else {
        echo "ada yang salah" . mysqli_error($koneksi);
    }
}
