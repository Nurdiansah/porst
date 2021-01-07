<?php  

	if (isset($_SESSION['login'])) {
		if ($_SESSION['level'] == "unit_pelayanan") {
			header("location:checker/index.php");
		} else if ($_SESSION['level'] == "admin_gudang"){
			header("location:admin_operational/index.php");
		} else if ($_SESSION['level'] == "asisten_manajer"){
			header("location:spv_operational/index.php");
		}  else if ($_SESSION['level'] == "manajer_shorebase"){
			header("location:manajer_shorebase/index.php");
		} else {
			header("location:index.php");
		}
	}

?>