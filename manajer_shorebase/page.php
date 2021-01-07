 
<?php

$page = isset($_GET['p']) ? $_GET['p'] : "";

if ($page == 'material') {
    include_once "material.php";
} else if ($page == "") {
    include_once "main.php";
} else if ($page == "datapesanan") {
    include_once "datapesanan.php";
} else if ($page == "editpesan") {
    include_once "editpesan.php";
} else if ($page == "tidaksetuju") {
    include_once "tidaksetuju.php";
} else if ($page == "disetujui") {
    include_once "disetujui.php";
} else if ($page == "detil") {
    include_once "detilpesan.php";
} else if ($page == "data_jovessel") {
    include_once "data_jovessel.php";
} else if ($page == "detil_jovessel") {
    include_once "detil_jovessel.php";
} else if ($page == "setuju_joborder") {
    include_once "setuju_joborder.php";
} else if ($page == "lihat_jovessel") {
    include_once "lihat_jovessel.php";
} else if ($page == "lihat_joborder") {
    include_once "lihat_joborder.php";
} else if ($page == "tolak_joborder") {
    include_once "tolak_joborder.php";
} else if ($page == "alat_berat") {
    include_once "alat_berat.php";
} else if ($page == "alat_berat") {
    include_once "alat_berat.php";
} else if ($page == "proses_jovessel") {
    include_once "proses_jovessel.php";
} else if ($page == "lihat_prosesjoborder") {
    include_once "lihat_prosesjoborder.php";
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
} else if ($page == "approve_stacking") {
    include_once "approve_stacking.php";
} else if ($page == "approve_dstacking") {
    include_once "approve_dstacking.php";
} else if ($page == "approve_jotruck") {
    include_once "approve_jotruck.php";
} else if ($page == "approve_djotruck") {
    include_once "approve_djotruck.php";
} else if ($page == "proses_moving") {
    include_once "proses_moving.php";
} else if ($page == "detail_prosesmoving") {
    include_once "detail_prosesmoving.php";
} else if ($page == "approve_moving") {
    include_once "approve_moving.php";
} else if ($page == "approve_dmoving") {
    include_once "approve_dmoving.php";
} else if ($page == "lihat_moving") {
    include_once "lihat_moving.php";
} else if ($page == "report_lovessel") {
    include_once "report_lovessel.php";
} else if ($page == "report_lovessel_monthly") {
    include_once "report_lovessel_monthly.php";
} else if ($page == "report_lovessel_annual") {
    include_once "report_lovessel_annual.php";
} else if ($page == "report_lotruck_monthly") {
    include_once "report_lotruck_monthly.php";
} else if ($page == "report_lotruck_annual") {
    include_once "report_lotruck_annual.php";
} else if ($page == "report_stacking_monthly") {
    include_once "report_stacking_monthly.php";
} else if ($page == "report_stacking_annual") {
    include_once "report_stacking_annual.php";
} else if ($page == "report_moving_monthly") {
    include_once "report_moving_monthly.php";
} else if ($page == "report_moving_annual") {
    include_once "report_moving_annual.php";
}
?>
 
