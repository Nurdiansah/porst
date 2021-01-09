 
<?php

$page = isset($_GET['p']) ? $_GET['p'] : "";

if ($page == 'material') {
    include_once "material.php";
} else if ($page == "") {
    include_once "main.php";
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
} else if ($page == "report_lovessel") {
    include_once "report_lovessel.php";
} else if ($page == "report_lovessel_monthly") {
    include_once "report_lovessel_monthly.php";
} else if ($page == "report_lovessel_annual") {
    include_once "report_lovessel_annual.php";
}
?>
 
