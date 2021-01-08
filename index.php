<?php
session_start();


include "fungsi/koneksi.php";
include "fungsi/ceklogin.php";


$err = "";

if (isset($_POST['login'])) {
	$username = $_POST['username'];
	$password = md5($_POST['password']);
	$level = $_POST['level'];

	$query = "SELECT * FROM user WHERE username='$username' && password='$password'";
	$hasil = mysqli_query($koneksi, $query);

	if (!$hasil) {
		echo "ada error";
	}

	if (mysqli_num_rows($hasil) == 0) {
		$err = "
		<div class='row' style='margin-top: 15px';>
	       <div class='col-md-12'>
	        	<div class='box box-solid bg-red'>
	        		<div class='box-header'>
	        			<h3 class='box-title'>Login Gagal!</h3>
	        		</div>
	        		<div class='box-body'>
	        			<p>Username atau password yang anda masukan salah.</p>
	        		</div>
			    </div>
			 </div>
		 </div>
	</div>";
	} else {
		$row = mysqli_fetch_array($hasil);
		$_SESSION['username'] = $row['username'];
		$_SESSION['level'] = $row['level'];
		$User = $_SESSION['username'];

		date_default_timezone_set('Asia/Jakarta');
		$tanggal = date("Y-m-d H:i:s");

		$queryLog = "INSERT INTO log_system (waktu, nama_user, keterangan) VALUES
									('$tanggal', '$User', 'login' );

									";
		mysqli_query($koneksi, $queryLog);

		if ($row['level'] == "checker" && $level == "checker") {
			$_SESSION['login'] = true;
			header("location:checker/index.php");
		} else if ($row['level'] == "admin_ops" && $level == "admin_ops") {
			$_SESSION['login'] = true;
			header("location:admin_operational/index.php");
		} else if ($row['level'] == "asisten_manajer" && $level == "asisten_manajer") {
			$_SESSION['login'] = true;
			header("location:spv_operational/index.php");
		} else if ($row['level'] == "manajer_shorebase" && $level == "manajer_shorebase") {
			$_SESSION['login'] = true;
			header("location:manajer_shorebase/index.php");
		} else {
			$err = "
		<div class='row' style='margin-top: 15px';>
	       <div class='col-md-12'>
	        	<div class='box box-solid bg-red'>
	        		<div class='box-header'>
	        			<h3 class='box-title'>Login Gagal!</h3>
	        		</div>
	        		<div class='box-body'>
	        			<p>Anda salah memilih level login.</p>
	        		</div>
			    </div>
			 </div>
		 </div>
	</div>";
		}
	}
}

?>

<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8">
	<title>PORST</title>
	<!-- Icon  -->
	<link rel="shortcut icon" type="image/icon" href="gambar/logoenc.jpg">
	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
	<link href="assets/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link href="assets/bootstrap/css/custom.css" rel="stylesheet">
	<link href="assets/dist/css/AdminLTE.min.css" rel="stylesheet">
	<link href="assets/plugins/iCheck/square/blue.css" rel="stylesheet">
	<link href="assets/fa/css/font-awesome.min.css" rel="stylesheet">
</head>

<body class="body">
	<div class="login-box">
		<div class="login-box-body">
			<h3 class="text-center">Port<br>Operational<br>System </h3>
			<!-- <img src="gambar/logoenc.jpg" style="width: 200px; height: 80px;"> -->
			<form method="post">
				<div class="form-group">
					<div class="input-group">
						<span class="input-group-addon"><i class="fa fa-user"></i></span>
						<input type="text" class="form-control" placeholder="Username" name="username" required />
					</div>
				</div>
				<div class="form-group">
					<div class="input-group">
						<span class="input-group-addon"><i class="fa fa-unlock"></i></span>
						<input type="password" class="form-control" placeholder="Password" name="password" required>
					</div>
				</div>
				<div class="form-group">
					<div class="input-group col-md-7">
						<span class="input-group-addon"><i class="fa fa-shield"></i></span>
						<select class="form-control" name="level" required>
							<option value>[Pilih Level]</option>
							<option value="checker">Checker</option>
							<option value="admin_ops">Admin Operational</option>
							<!-- <option value="asisten_manajer">Supervisor Operational</option> -->
							<option value="manajer_shorebase">Manager Shorebase</option>
						</select>
					</div>
				</div>
				<div class="row">
					<div class="col-xs-12">
						<input type="submit" class="btn btn-primary btn-block btn-flat pull-right" value="Login" name="login" />

					</div><!-- /.col -->
				</div>
			</form>


		</div>
		<?= $err; ?>
		<!-- /.login-box-body 
      <div class="row" style="margin-top: 15px;">
	       <div class="col-md-12">
	        	<div class="box box-solid bg-red">
	        		<div class="box-header">
	        			<h3 class="box-title">Gagal Login</h3>
	        		</div>
	        		<div class="box-body">
	        			<p>Username atau password salah</p>
	        		</div>
	        	</div>
	        </div>
        </div>
    </div>
	-->
		<!-- /.login-box -->

		<script src="assets/plugins/jQuery/jquery.min.js" type="text/javascript"></script>
		<script src="assets/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
</body>

</html>