 <?php 
  
    $page = isset($_GET['p']) ? $_GET['p'] : "";

    if ($page == 'material') {
        include_once "material.php";
    } else if ($page=="") {
        include_once "main.php";
    } else if ($page=="datapesanan") {
        include_once "datapesanan.php";
    } else if ($page=="editpesan") {
        include_once "editpesan.php";
    } else if ($page=="tidaksetuju") {
        include_once "tidaksetuju.php";
    } else if ($page=="disetujui") {
        include_once "disetujui.php";
    } else if($page == "detil"){
        include_once "detilpesan.php";
    } else if($page == "data_jovessel"){
        include_once "data_jovessel.php";
    } else if($page == "detil_jovessel"){
        include_once "detil_jovessel.php";
    } else if($page == "setuju_joborder"){
        include_once "setuju_joborder.php";
    } else if($page == "lihat_jovessel"){
        include_once "lihat_jovessel.php";
    } else if($page == "lihat_joborder"){
        include_once "lihat_joborder.php";
    } else if($page == "alat_berat"){
        include_once "alat_berat.php";
    } else if($page == "add_alatberat"){
        include_once "add_alatberat.php";
    }
 ?>
 
