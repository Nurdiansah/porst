  <?php
  ob_start();
  session_start();
  //include "cekuser.php";
  include "../fungsi/koneksi.php";

  if (!isset($_SESSION['username']) || $_SESSION['level'] != 'admin_ops') {
    header("location:../index.php");
  }

  $query = mysqli_query($koneksi, "SELECT COUNT(id_jenis) AS jumlah FROM jenis_barang ");
  $data = mysqli_fetch_assoc($query);
  $queryNama =  mysqli_query($koneksi, "SELECT nama, area from user WHERE username  = '$_SESSION[username]'");
  $rowNama = mysqli_fetch_assoc($queryNama);
  $Nama = $rowNama['nama'];
  $Area = $rowNama['area'];

  //Jumlah Draf Stevedoring  
  $queryDV = mysqli_query($koneksi, "SELECT COUNT(id_joborder) AS jumlah FROM job_order WHERE status_jo=1 ");
  $dataDV = mysqli_fetch_assoc($queryDV);

  // Jumlah Proses  Stevedoring  
  $queryPV = mysqli_query($koneksi, "SELECT  COUNT(id_joborder) AS jumlah FROM job_order WHERE status_jo>=2 AND status_jo<=3 ");
  $dataPV = mysqli_fetch_assoc($queryPV);

  // Jumlah stm stevedoring  
  $querySV = mysqli_query($koneksi, "SELECT COUNT(id_joborder) AS jumlah  FROM job_order WHERE status_jo=4 ");
  $dataSV = mysqli_fetch_assoc($querySV);

  //Jumlah Job order vessel
  $queryJV = mysqli_query($koneksi, "SELECT COUNT(id_joborder) AS jumlah FROM job_order  WHERE status_jo>=3 ");
  $dataJV = mysqli_fetch_assoc($queryJV);


  ?>
  <!DOCTYPE html>
  <html>

  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>PORST</title>
    <!-- Favicon -->
    <!-- <link rel="shortcut icon" type="image/icon" href="../pv.png"> -->
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.6 -->
    <link rel="stylesheet" href="../assets/bootstrap/css/bootstrap.min.css">
    <link href="../assets/bootstrap/css/custom.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="../assets/fa/css/font-awesome.min.css">
    <!-- Ionicons -->
    <!-- Theme style -->
    <link rel="stylesheet" href="../assets/dist/css/AdminLTE.min.css">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="../assets/dist/css/skins/_all-skins.min.css">
    <!-- iCheck -->
    <link rel="stylesheet" href="../assets/plugins/iCheck/flat/blue.css">
    <!-- Morris chart -->
    <link rel="stylesheet" href="../assets/plugins/morris/morris.css">
    <!-- jvectormap -->
    <link rel="stylesheet" href="../assets/plugins/jvectormap/jquery-jvectormap-1.2.2.css">
    <!-- Date Picker -->
    <link rel="stylesheet" href="../assets/plugins/datepicker/datepicker3.css">
    <!-- Daterange picker -->
    <link rel="stylesheet" href="../assets/plugins/daterangepicker/daterangepicker.css">
    <!-- bootstrap wysihtml5 - text editor -->
    <link rel="stylesheet" href="../assets/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
    <link rel="stylesheet" href="../assets/plugins/datatables/dataTables.bootstrap.css">

    <script src="../assets/plugins/jQuery/jquery.min.js"></script>

    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/css/select2.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/js/select2.min.js"></script>

    <style>
      #chartdiv {
        width: 100%;
        height: 500px;
      }
    </style>

    <!-- Resources -->
    <script src="https://cdn.amcharts.com/lib/4/core.js"></script>
    <script src="https://cdn.amcharts.com/lib/4/charts.js"></script>
    <script src="https://cdn.amcharts.com/lib/4/themes/material.js"></script>
    <script src="https://cdn.amcharts.com/lib/4/themes/animated.js"></script>


  </head>

  <body class="hold-transition skin-red sidebar-collapse sidebar-mini">
    <!-- <div class="wrapper"> -->
    <img src="../gambar/pelabuhan.jpeg">
    <nav class="navbar navbar-inverse">
      <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="index.php">PORST</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
          <ul class="nav navbar-nav">
            <li><a href="index.php?p=jenis_barang">Jenis Barang</a></li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Alat Berat <span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="index.php?p=tambah_alatberat">Buat</a></li>
                <li><a href="index.php?p=alat_berat">Lihat</a></li>
              </ul>
            </li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Stevedoring Vessel <span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="index.php?p=buat_jovessel">Buat</a></li>
                <li><a href="index.php?p=draf_lo">Draf</a></li>
                <li><a href="index.php?p=proses_jovessel">Proses</a></li>
                <li><a href="index.php?p=stf">Verifikasi</a></li>
                <li><a href="index.php?p=lihat_jovessel">Transaksi</a></li>
              </ul>
            </li>
          </ul>
          <ul class="nav navbar-nav navbar-right">
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Pengaturan <span class="caret"></span></a>
              <ul class="dropdown-menu">
                <!-- <li><a href="#">Action</a></li>
                <li><a href="#">Another action</a></li>
                <li><a href="#">Something else here</a></li> -->
                <li role="separator" class="divider"></li>
                <li>
                  <a href="../logout.php">Logout</a>
                </li>
              </ul>
            </li>
          </ul>
        </div><!-- /.navbar-collapse -->
      </div><!-- /.container-fluid -->
    </nav>

    <!-- Content Header (Page header) -->
    <?php include "page.php"; ?>

    <footer class="main-footer">
      <marquee hspace="40" width="full-width">Admin Operational mengolah data user dan pembuatan Job Order .</marquee>
      <strong>Copyright &copy; NURDIANSAH - PORST v1.0 </strong>
    </footer>

    <!-- jQuery UI 1.11.4 -->
    <script src="../assets/plugins/jQueryUI/jquery-ui.min.js"></script>
    <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
    <script>
      $.widget.bridge('uibutton', $.ui.button);
    </script>
    <!-- Bootstrap 3.3.6 -->
    <script src="../assets/bootstrap/js/bootstrap.min.js"></script>
    <!-- Morris.js charts -->

    <script src="../assets/plugins/morris/morris.min.js"></script>
    <!-- Sparkline -->
    <script src="../assets/plugins/sparkline/jquery.sparkline.min.js"></script>
    <!-- jvectormap -->
    <script src="../assets/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
    <script src="../assets/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
    <!-- jQuery Knob Chart -->
    <script src="../assets/plugins/knob/jquery.knob.js"></script>
    <!-- daterangepicker -->
    <!-- datepicker -->
    <script src="../assets/plugins/datepicker/bootstrap-datepicker.js"></script>
    <!-- Bootstrap WYSIHTML5 -->
    <script src="../assets/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
    <!-- Slimscroll -->
    <script src="../assets/plugins/slimScroll/jquery.slimscroll.min.js"></script>
    <!-- FastClick -->
    <script src="../assets/plugins/fastclick/fastclick.js"></script>
    <!-- AdminLTE App -->
    <script src="../assets/dist/js/app.min.js"></script>

    <script src="../assets/plugins/datatables/jquery.dataTables.min.js"></script>
    <script src="../assets/plugins/datatables/dataTables.bootstrap.min.js"></script>
  </body>

  </html>