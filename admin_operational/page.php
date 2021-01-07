 
<?php

$page = isset($_GET['p']) ? $_GET['p'] : "";

if ($page == 'formpesan') {
    include_once "formpesan.php";
} else if ($page == "") {
    include_once "main.php";
} else if ($page == "datapesanan") {
    include_once "datapesanan.php";
} else if ($page == "material") {
    include_once "material.php";
} else if ($page == "tambahmaterial") {
    include_once "tambahmaterial.php";
} else if ($page == "user") {
    include_once "user.php";
} else if ($page == "edit") {
    include_once "editmaterial.php";
} else if ($page == "hapus") {
    include_once "hapusmaterial.php";
} else if ($page == "hapususer") {
    include_once "hapususer.php";
} else if ($page == "edituser") {
    include_once "edituser.php";
} else if ($page == "tambahuser") {
    include_once "tambahuser.php";
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
} else if ($page == "cetakstok") {
    include_once "halcetak.php";
} else if ($page == "detil") {
    include_once "detilpesan.php";
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
} else if ($page == "proses_jotruck") {
    include_once "proses_jotruck.php";
} else if ($page == "detail_prosestruck") {
    include_once "detail_prosestruck.php";
} else if ($page == "lihat_jotruck") {
    include_once "lihat_jotruck.php";
} else if ($page == "stf_lotruck") {
    include_once "stf_lotruck.php";
} else if ($page == "stf_dlotruck") {
    include_once "stf_dlotruck.php";
} else if ($page == "proses_stacking") {
    include_once "proses_stacking.php";
} else if ($page == "detail_prosesstacking") {
    include_once "detail_prosesstacking.php";
} else if ($page == "stf_stacking") {
    include_once "stf_stacking.php";
} else if ($page == "stf_dstacking") {
    include_once "stf_dstacking.php";
} else if ($page == "lihat_stacking") {
    include_once "lihat_stacking.php";
} else if ($page == "proses_moving") {
    include_once "proses_moving.php";
} else if ($page == "detail_prosesmoving") {
    include_once "detail_prosesmoving.php";
} else if ($page == "stf_moving") {
    include_once "stf_moving.php";
} else if ($page == "stf_dmoving") {
    include_once "stf_dmoving.php";
} else if ($page == "lihat_moving") {
    include_once "lihat_moving.php";
} else if ($page == "laporan_lotruck") {
    include_once "laporan_lotruck.php";
} else if ($page == "buat_pemakaianlistrik") {
    include_once "buat_pemakaianlistrik.php";
} else if ($page == "pemakaian_listrik") {
    include_once "pemakaian_listrik.php";
} else if ($page == "rekap_pemakaianlistrik") {
    include_once "rekap_pemakaianlistrik.php";
} else if ($page == "pemakaian_trucktrailler") {
    include_once "pemakaian_trucktrailler.php";
} else if ($page == "dtlpemakaian_trucktrailler") {
    include_once "dtlpemakaian_trucktrailler.php";
} else if ($page == "laporan_truckweek") {
    include_once "laporan_truckweek.php";
}

?> 
 
 