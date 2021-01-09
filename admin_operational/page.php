 
<?php

$page = isset($_GET['p']) ? $_GET['p'] : "";

if ($page == 'formpesan') {
    include_once "formpesan.php";
} else if ($page == "") {
    include_once "main.php";
} else if ($page == "jenis_barang") {
    include_once "jenis_barang.php";
} else if ($page == "buat_jovessel") {
    include_once "buat_jovessel.php";
} else if ($page == "lihat_jovessel") {
    include_once "lihat_jovessel.php";
} else if ($page == "lihat_joborder") {
    include_once "lihat_joborder.php";
} else if ($page == "hapus_joborder") {
    include_once "hapus_joborder.php";
} else if ($page == "laporan_sandar") {
    include_once "laporan_sandar.php";
} else if ($page == "data_ditolak") {
    include_once "data_ditolak.php";
} else if ($page == "detil_tolak") {
    include_once "detil_tolak.php";
} else if ($page == "edit_jovessel") {
    include_once "edit_jovessel.php";
} else if ($page == "hapus_jovessel") {
    include_once "hapus_jovessel.php";
} else if ($page == "buat_cargo") {
    include_once "buat_cargo.php";
} else if ($page == "laporan_pekerjaankapal") {
    include_once "laporan_pekerjaankapal.php";
} else if ($page == "tambah_alatberat") {
    include_once "tambah_alatberat.php";
} else if ($page == "alat_berat") {
    include_once "alat_berat.php";
} else if ($page == "add_bookingcargo") {
    include_once "add_bookingcargo.php";
} else if ($page == "draf_lo") {
    include_once "draf_lo.php";
} else if ($page == "proses_jovessel") {
    include_once "proses_jovessel.php";
} else if ($page == "lihat_prosesjoborder") {
    include_once "lihat_prosesjoborder.php";
} else if ($page == "stf") {
    include_once "stf.php";
} else if ($page == "detail_stf") {
    include_once "detail_stf.php";
} else if ($page == "cetak_tallysheetvessel") {
    include_once "cetak_tallysheetvessel.php";
} else if ($page == "hapus_cargo") {
    include_once "hapus_cargo.php";
}

?> 
 
 