 
<?php

$page = isset($_GET['p']) ? $_GET['p'] : "";

if ($page == 'formpesan') {
    include_once "formpesan.php";
} else if ($page == "") {
    include_once "main.php";
} else if ($page == "datapesanan") {
    include_once "datapesanan.php";
} else if ($page == "edit") {
    include_once "editpesan.php";
} else if ($page == "hapus") {
    include_once "hapuspesan.php";
} else if ($page == "cetakpesanan") {
    include_once "cetakpesan.php";
} else if ($page == "lihat_jovessel") {
    include_once "lihat_jovessel.php";
} else if ($page == "proses_jovessel") {
    include_once "proses_jovessel.php";
} else if ($page == "proses_cargo") {
    include_once "proses_cargo.php";
} else if ($page == "detil") {
    include_once "detilpesan.php";
} else if ($page == "material") {
    include_once "material.php";
} else if ($page == "done_cargo") {
    include_once "done_cargo.php";
} else if ($page == "na_cargo") {
    include_once "na_cargo.php";
} else if ($page == "complete_cargo") {
    include_once "complete_cargo.php";
} else if ($page == "proses_jotruck") {
    include_once "proses_jotruck.php";
} else if ($page == "detail_prosestruck") {
    include_once "detail_prosestruck.php";
} else if ($page == "lihat_jotruck") {
    include_once "lihat_jotruck.php";
} else if ($page == "proses_stacking") {
    include_once "proses_stacking.php";
} else if ($page == "detail_prosesstacking") {
    include_once "detail_prosesstacking.php";
} else if ($page == "lihat_stacking") {
    include_once "lihat_stacking.php";
} else if ($page == "proses_moving") {
    include_once "proses_moving.php";
} else if ($page == "detail_prosesmoving") {
    include_once "detail_prosesmoving.php";
} else if ($page == "lihat_moving") {
    include_once "lihat_moving.php";
}
?>
 
