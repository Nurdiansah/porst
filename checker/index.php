<?php

session_start();
include "../fungsi/koneksi.php";

if (!isset($_SESSION['username']) || $_SESSION['level'] != 'checker') {
  header("location:../index.php");
}

$page = isset($_GET['p']) ? $_GET['p'] : false;
//include 'cekuser.php';
$query = mysqli_query($koneksi, "SELECT COUNT(id_jenis) AS jumlah FROM jenis_barang ");
$data = mysqli_fetch_assoc($query);
$queryNama =  mysqli_query($koneksi, "SELECT * from user WHERE username  = '$_SESSION[username]'");
$rowNama = mysqli_fetch_assoc($queryNama);
$Nama = $rowNama['nama'];
$id_user = $rowNama['id_user'];
$Area = $rowNama['area'];

$dataP = mysqli_query($koneksi, "SELECT COUNT(id_joborder) AS jumlah FROM job_order 
                                            WHERE status_jo=2 AND area = '$Area' 
                                             ");

//Jumlah Job order vessel
$queryJV = mysqli_query($koneksi, "SELECT COUNT(jo.id_joborder) AS jumlah FROM job_order jo WHERE status_jo=2 OR status_jo=3 AND  id_checker='$id_user'");
$dataJV = mysqli_fetch_assoc($queryJV);

//Jumlah Job order truck
$queryJT = mysqli_query($koneksi, "SELECT COUNT(id_jobordertruck) AS jumlah  FROM job_ordertruck WHERE status_jotruck <= '2' AND  id_checker='$id_user' ");
$dataJT = mysqli_fetch_assoc($queryJT);

//Jumlah Job order Stacking
$queryST = mysqli_query($koneksi, "SELECT COUNT(id_stacking) AS jumlah  FROM stacking WHERE status_stacking <= '2' AND id_checker='$id_user' ");
$dataST = mysqli_fetch_assoc($queryST);

//Jumlah Job order Internal Moving
$queryIM = mysqli_query($koneksi, "SELECT COUNT(id_moving) AS jumlah FROM moving WHERE status_moving <= '2' ");
$dataIM = mysqli_fetch_assoc($queryIM);

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

</head>

<body class="hold-transition skin-red  sidebar-collapse sidebar-mini">
  <div id="wrapper" class="toggled">

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
                    <small>- Checker -</small>
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
    <aside class="main-sidebar">
      <section class="sidebar">
        <ul class="sidebar-menu">
          <li class="header">
            <h4 class="text-center"><?php echo $Nama ?></h4>
          </li>
          <li class="active treeview">
            <a href="index.php">
              <i class="fa fa-dashboard"></i> <span>Dashboard</span>
            </a>
          </li>


          <!-- <li><a href="index.php?p=datapesanan"><i class="fa fa-files-o"></i> Data Permintaan Material</a></li>		 -->
          <li class="header">Job Order</li>
          <li class="treeview">
            <a href="index.php?p=datapesanan">
              <i class="fa fa-anchor"></i>
              <span>Stevedoring</span><i class="fa fa-angle-left pull-right"></i>
            </a>
            <ul class="treeview-menu">
              <li><a href="index.php?p=proses_jovessel"><i class="fa fa-spinner"></i>Process <span class="badge label-warning"><?php if ($dataJV['jumlah'] >= 1) {
                                                                                                                                  echo $dataJV['jumlah'];
                                                                                                                                } ?></span></a></li>
              <li><a href="index.php?p=lihat_jovessel"><i class="fa fa-bar-chart"></i>Transaksi</a></li>
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
              <li><a href="index.php?p=proses_jotruck"><i class="fa fa-spinner"></i>Create & Process <span class="badge label-warning"><?php if ($dataJT['jumlah'] >= 1) {
                                                                                                                                          echo $dataJT['jumlah'];
                                                                                                                                        } ?></a></li>
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
              <li><a href="index.php?p=proses_stacking"><i class="fa fa-spinner"></i>Create & Process <span class="badge label-warning"><?php if ($dataST['jumlah'] >= 1) {
                                                                                                                                          echo $dataST['jumlah'];
                                                                                                                                        } ?></a></li>
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
              <li><a href="index.php?p=proses_moving"><i class="fa fa-spinner"></i>Create & Process <span class="badge label-warning"><?php if ($dataIM['jumlah'] >= 1) {
                                                                                                                                        echo $dataIM['jumlah'];
                                                                                                                                      } ?></a></li>
              <li><a href="index.php?p=lihat_moving"><i class="fa fa-bar-chart"></i>Transaksi</a></li>
            </ul>
          </li>

        </ul>
      </section>
    </aside>
    <div class="content-wrapper">
      <?php include "page.php"; ?>
    </div>

    <footer class="main-footer">
      <marquee hspace="40" width="full-width">Cheker Melakukan Update Job Order Sesuai yang terjadi di lapangan </marquee>
      <strong>Copyright &copy; ENC SYSTEM - 2019 v1.0 </strong>
    </footer>

    <!-- jQuery 2.2.3 -->
    <script src="../assets/plugins/jQuery/jquery.min.js"></script>
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