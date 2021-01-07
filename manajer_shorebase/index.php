<?php
ob_start();
session_start();
//include 'cekuser.php';
include "../fungsi/koneksi.php";

if (!isset($_SESSION['username']) || $_SESSION['level'] != 'manajer_shorebase') {
  header("location:../index.php");
}

$query = mysqli_query($koneksi, "SELECT COUNT(id_jenis) AS jumlah FROM jenis_barang ");
$data = mysqli_fetch_assoc($query);
$queryNama =  mysqli_query($koneksi, "SELECT nama  from user WHERE username  = '$_SESSION[username]'");
$rowNama = mysqli_fetch_assoc($queryNama);
$Nama = $rowNama['nama'];

// Jumlah Proses  Stevedoring
$queryPV = mysqli_query($koneksi, "SELECT  COUNT(id_joborder) AS jumlah FROM job_order WHERE status_jo>=2 AND status_jo<=4 ");
$dataPV = mysqli_fetch_assoc($queryPV);

// Jumlah Aprrove stevedoring
$queryAV = mysqli_query($koneksi, "SELECT COUNT(id_joborder) AS jumlah  FROM job_order WHERE status_jo=5 ");
$dataAV = mysqli_fetch_assoc($queryAV);

// Jumlah Proses Truck
$queryPT = mysqli_query($koneksi, "SELECT COUNT(id_jobordertruck) AS jumlah FROM job_ordertruck WHERE status_jotruck <= '2' ");
$dataPT = mysqli_fetch_assoc($queryPT);

// Jumlah Stm Truck
$queryAT = mysqli_query($koneksi, "SELECT COUNT(id_jobordertruck) AS jumlah FROM job_ordertruck  WHERE status_jotruck = '4' ");
$dataAT = mysqli_fetch_assoc($queryAT);

// Jumlah Proses Stacking
$queryPS = mysqli_query($koneksi, "SELECT COUNT(id_stacking) AS jumlah  FROM stacking WHERE status_stacking <= '3'");
$dataPS = mysqli_fetch_assoc($queryPS);

// Jumlah Approve Stacking
$queryAS = mysqli_query($koneksi, "SELECT COUNT(id_stacking) AS jumlah  FROM stacking WHERE status_stacking = '4' ");
$dataAS = mysqli_fetch_assoc($queryAS);

// Jumlah Proses Internal Moving
$queryPM = mysqli_query($koneksi, "SELECT COUNT(id_moving) AS jumlah  FROM moving WHERE status_moving <= '2' ");
$dataPM = mysqli_fetch_assoc($queryPM);

// Jumlah Approve Internal Moving
$queryAM = mysqli_query($koneksi, "SELECT COUNT(id_moving) AS jumlah  FROM moving WHERE status_moving = '4' ");
$dataAM = mysqli_fetch_assoc($queryAM);


?>

<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>ENC|OPS</title>
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

  <!-- Resources -->
  <script src="https://cdn.amcharts.com/lib/4/core.js"></script>
  <script src="https://cdn.amcharts.com/lib/4/charts.js"></script>
  <script src="https://cdn.amcharts.com/lib/4/themes/dark.js"></script>
  <script src="https://cdn.amcharts.com/lib/4/themes/animated.js"></script>
  <script src="https://cdn.amcharts.com/lib/4/themes/material.js"></script>

  <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/css/select2.min.css" rel="stylesheet" />
  <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/js/select2.min.js"></script>

  <style>
    #chartdiv {
      /* background-color : #DCDCDC; */
      width: 100%;
      height: 500px;
    }

    #chartdiv-vessel {
      /* background-color : #DCDCDC; */
      width: 100%;
      height: 500px;
    }
  </style>

</head>

<body class="hold-transition skin-blue  sidebar-collapse sidebar-mini"">
<div class=" wrapper">

  <header class="main-header">
    <div class="logo">
      <span class="logo-mini"><b>ENC</b></span>
      <span class="logo-lg"><b>ENC - OPS</b></span>
    </div>

    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top" role="navigation">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
        <span class="sr-only">Toggle navigation</span>
      </a>
      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">

          <!-- User Account: style can be found in dropdown.less -->
          <li class="dropdown user user-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <img src="../gambar/avatar1.jpg" class="user-image" alt="User Image">
              <span class="hidden-xs"> <?php echo strtoupper($Nama); ?> </span>
            </a>
            <ul class="dropdown-menu">
              <!-- User image -->
              <li class="user-header">
                <img src="../gambar/avatar1.jpg" class="img-circle" alt="User Image">
                <p>
                  <?php echo " $Nama " ?>
                  <small>- MANAGER SHOREBASE -</small>
                </p>
              </li>

              <!-- Menu Footer-->
              <li class="user-footer">
                <div class="pull-right">
                  <a href="../logout.php" class="btn btn-default btn-flat">Sign out</a>
                </div>
              </li>
            </ul>
          </li>
          <!-- Control Sidebar Toggle Button -->
        </ul>
      </div>
    </nav>
  </header>
  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <ul class="sidebar-menu">
        <li class="active treeview">
          <a href="index.php">
            <i class="fa fa-dashboard"></i> <span>Dashboard</span>
          </a>
        </li>
        <!-- Data Alat Berat -->
        <li class="header">Master Data</li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-truck"></i>
            <span>Alat Berat</span>
          </a>
          <ul class="treeview-menu">
            <li><a href="index.php?p=alat_berat"><i class="fa fa-chevron-circle-right"></i>Lihat </a></li>
          </ul>
        </li>
        <li class="header">Job Order</li>
        <li class="treeview">
          <a href="index.php?p=datapesanan">
            <i class="fa fa-anchor"></i>
            <span>Stevedoring</span><i class="fa fa-angle-left pull-right"></i>
            <!-- <span class="pull-right-container">
              <span class="label label-primary pull-right"><?= $data['jumlah']; ?></span>
            </span> -->
          </a>
          <ul class="treeview-menu">
            <li><a href="index.php?p=proses_jovessel"><i class="fa fa-spinner"></i>Procces <span class="badge label-success"><?php if ($dataPV['jumlah'] >= 1) {
                                                                                                                                echo $dataPV['jumlah'];
                                                                                                                              } ?></span></a></li>
            <li><a href="index.php?p=data_jovessel"><i class="fa fa-files-o"></i>Approve <span class="badge label-warning"><?php if ($dataAV['jumlah'] >= 1) {
                                                                                                                              echo $dataAV['jumlah'];
                                                                                                                            } ?></a></li>
            <li><a href="index.php?p=lihat_jovessel"><i class="fa fa-list"></i>Transaksi</a></li>
          </ul>
        </li>
        <!-- Equipment -->
        <li class="treeview">
          <a href="index.php?p=datapesanan">
            <i class="fa fa-truck"></i>
            <span>Loading/Offloading Truck</span><i class="fa fa-angle-left pull-right"></i>
            <!-- <span class="pull-right-container">
                <span class="label label-primary pull-right"><?= $data['jumlah']; ?></span>
              </span> -->
          </a>
          <ul class="treeview-menu">
            <li><a href="index.php?p=proses_jotruck"><i class="fa fa-spinner"></i>Process <span class="badge label-success"><?php if ($dataPT['jumlah'] >= 1) {
                                                                                                                              echo $dataPT['jumlah'];
                                                                                                                            } ?></span></a></li>
            <li><a href="index.php?p=approve_jotruck"><i class="fa fa-files-o"></i>Approve <span class="badge label-warning"><?php if ($dataAT['jumlah'] >= 1) {
                                                                                                                                echo $dataAT['jumlah'];
                                                                                                                              } ?></span></a></li>
            <li><a href="index.php?p=lihat_jotruck"><i class="fa fa-bar-chart"></i>Transaksi</a></li>
          </ul>
        </li>

        <!-- Stacking -->
        <li class="treeview">
          <a href="index.php?p=datapesanan">
            <i class="fa fa-suitcase"></i>
            <span>Stacking/Stuffing</span><i class="fa fa-angle-left pull-right"></i>
            <!-- <span class="pull-right-container">
                <span class="label label-primary pull-right"><?= $data['jumlah']; ?></span>
              </span> -->
          </a>
          <ul class="treeview-menu">
            <li><a href="index.php?p=proses_stacking"><i class="fa fa-spinner"></i>Process <span class="badge label-success"><?php if ($dataPS['jumlah'] >= 1) {
                                                                                                                                echo $dataPS['jumlah'];
                                                                                                                              } ?></span></a></li>
            <li><a href="index.php?p=approve_stacking"><i class="fa fa-files-o"></i>Approve <span class="badge label-warning"><?php if ($dataAS['jumlah'] >= 1) {
                                                                                                                                echo $dataAS['jumlah'];
                                                                                                                              } ?></span></a></li>
            <li><a href="index.php?p=lihat_stacking"><i class="fa fa-bar-chart"></i>Transaksi</a></li>
          </ul>
        </li>



        <!-- Internal Moving -->
        <li class="treeview">
          <a href="index.php?p=datapesanan">
            <i class="fa fa-subway"></i>
            <span>Internal Moving</span><i class="fa fa-angle-left pull-right"></i>
            <!-- <span class="pull-right-container">
                <span class="label label-primary pull-right"><?= $data['jumlah']; ?></span>
              </span> -->
          </a>
          <ul class="treeview-menu">
            <li><a href="index.php?p=proses_moving"><i class="fa fa-spinner"></i>Process <span class="badge label-success"><?php if ($dataPM['jumlah'] >= 1) {
                                                                                                                              echo $dataPM['jumlah'];
                                                                                                                            } ?></span></a></li>
            <li><a href="index.php?p=approve_moving"><i class="fa fa-files-o"></i>Approve <span class="badge label-warning"><?php if ($dataAM['jumlah'] >= 1) {
                                                                                                                              echo $dataAM['jumlah'];
                                                                                                                            } ?></span></a></li>
            <li><a href="index.php?p=lihat_moving"><i class="fa fa-bar-chart"></i>Transaksi</a></li>
          </ul>
        </li>

        <!-- Report-->
        <li class="treeview">
          <a href="index.php?p=datapesanan">
            <i class="fa fa-bar-chart"></i>
            <span>Report</span><i class="fa fa-angle-left pull-right"></i>
            <!-- <span class="pull-right-container">
                <span class="label label-primary pull-right"><?= $data['jumlah']; ?></span>
              </span> -->
          </a>
          <ul class="treeview-menu">
            <li><a href="index.php?p=report_lovessel_monthly"><i class="fa fa-anchor"></i>Grafik Lo Vessel</a></li>
            <li><a href="index.php?p=report_lotruck_monthly"><i class="fa fa-truck"></i>Grafik Lo Truck</a></li>
            <li><a href="index.php?p=report_stacking_monthly"><i class="fa fa"></i>Grafik Stacking & Stuffing</a></li>
            <li><a href="index.php?p=report_moving_monthly"><i class="fa fa"></i>Grafik Internal Moving</a></li>
          </ul>
        </li>

      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <?php

    include "page.php";
    ?>

  </div>

  <footer class="main-footer">
    <marquee hspace="40" width="full-width">Manager Shorebase Kalijapat</marquee>
    <strong>Copyright &copy; ENC SYSTEM - OPS 2019 v1.0 </strong>
  </footer>



  <!-- jQuery 2.2.3 -->
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