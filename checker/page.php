 
<?php

$page = isset($_GET['p']) ? $_GET['p'] : "";

if ($page == 'formpesan') {
    include_once "formpesan.php";
} else if ($page == "") {
    include_once "main.php";
} else if ($page == "lihat_jovessel") {
    include_once "lihat_jovessel.php";
} else if ($page == "proses_jovessel") {
    include_once "proses_jovessel.php";
} else if ($page == "proses_cargo") {
    include_once "proses_cargo.php";
} else if ($page == "done_cargo") {
    include_once "done_cargo.php";
} else if ($page == "na_cargo") {
    include_once "na_cargo.php";
} else if ($page == "complete_cargo") {
    include_once "complete_cargo.php";
}
?>
 
