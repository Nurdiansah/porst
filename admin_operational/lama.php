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
                      <small>- ADMIN OPERATIONAL -</small>
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
            <li class="header">
              <h4 class="text-center"><?php echo $Nama ?></h4>
            </li>
            <li class="active treeview">
              <a href="index.php">
                <i class="fa fa-dashboard "></i> <span>Dashboard</span>
              </a>
            </li>
            <li class="header">Master Data</li>

            <li class="treeview">
              <a href="">
                <i class="fa fa-database blue"></i>
                <span>Master Data</span> <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li><a href="index.php?p=jenis_barang"><i class="fa fa-chevron-right"></i>Jenis Barang</a></li>
                <!-- Data Alat Berat -->
                <li class="treeview">
                  <a href="#">
                    <i class="fa fa-truck red"></i>
                    <span>Alat Berat</span>
                  </a>
                  <ul class="treeview-menu">
                    <li><a href="index.php?p=tambah_alatberat"><i class="fa fa-chevron-circle-right"></i>Buat </a></li>
                    <li><a href="index.php?p=alat_berat"><i class="fa fa-chevron-circle-right"></i>Lihat </a></li>
                  </ul>
                </li>
              </ul>
            </li>

            <!-- Nav buat Job Order -->
            <li class="header">Job Order</li>
            <li class="treeview">
              <a href="index.php?p=datapesanan">
                <i class="fa fa-anchor red"></i>
                <span>Stevedoring</span><i class="fa fa-angle-left pull-right"></i>
                <!-- <span class="pull-right-container">
              <span class="label label-primary pull-right"><?= $data['jumlah']; ?></span>
            </span> -->
              </a>
              <ul class="treeview-menu">
                <li><a href="index.php?p=buat_jovessel"><i class="fa fa-file-text-o"></i>Create </a></li>
                <li><a href="index.php?p=draf_lo"><i class="fa fa-book"></i>Draf <span class="badge label-warning"><?php if ($dataDV['jumlah'] >= 1) {
                                                                                                                      echo $dataDV['jumlah'];
                                                                                                                    } ?></span></a></li>
                <li><a href="index.php?p=proses_jovessel"><i class="fa fa-spinner"></i>Proses <span class="badge label-success"><?php if ($dataPV['jumlah'] >= 1) {
                                                                                                                                  echo $dataPV['jumlah'];
                                                                                                                                } ?></span></a></li>
                <li><a href="index.php?p=stf"><i class="fa fa-paper-plane"></i>Send To Manager <span class="badge label-primary"><?php if ($dataSV['jumlah'] >= 1) {
                                                                                                                                    echo $dataSV['jumlah'];
                                                                                                                                  } ?></span></a></li>
                <li><a href="index.php?p=lihat_jovessel"><i class="fa fa-list"></i>Transaksi</a></li>
              </ul>
            </li>
            <!-- Equipment -->
            <li class="treeview">
              <a href="index.php?p=datapesanan">
                <i class="fa fa-truck red"></i>
                <span>Loading/Offloading Truck</span><i class="fa fa-angle-left pull-right"></i>
                <!-- <span class="pull-right-container">
                <span class="label label-primary pull-right"><?= $data['jumlah']; ?></span>
              </span> -->
              </a>
              <ul class="treeview-menu">
                <li><a href="index.php?p=proses_jotruck"><i class="fa fa-spinner"></i>Process <span class="badge label-success"><?php if ($dataPT['jumlah'] >= 1) {
                                                                                                                                  echo $dataPT['jumlah'];
                                                                                                                                } ?></span></a></li>
                <li><a href="index.php?p=stf_lotruck"><i class="fa fa-paper-plane"></i>Send To Manager <span class="badge label-primary"><?php if ($dataST['jumlah'] >= 1) {
                                                                                                                                            echo $dataST['jumlah'];
                                                                                                                                          } ?></span></a></li>
                <li><a href="index.php?p=lihat_jotruck"><i class="fa fa-bar-chart"></i>Transaksi</a></li>
              </ul>
            </li>

            <!-- Stacking -->
            <li class="treeview">
              <a href="index.php?p=datapesanan">
                <i class="fa fa-suitcase red"></i>
                <span>Stacking/Stuffing</span><i class="fa fa-angle-left pull-right"></i>
                <!-- <span class="pull-right-container">
                <span class="label label-primary pull-right"><?= $data['jumlah']; ?></span>
              </span> -->
              </a>
              <ul class="treeview-menu">
                <li><a href="index.php?p=proses_stacking"><i class="fa fa-spinner"></i>Process <span class="badge label-success"><?php if ($dataPS['jumlah'] >= 1) {
                                                                                                                                    echo $dataPS['jumlah'];
                                                                                                                                  } ?></a></li>
                <li><a href="index.php?p=stf_stacking"><i class="fa fa-paper-plane"></i>Send To Manager <span class="badge label-primary"><?php if ($dataSS['jumlah'] >= 1) {
                                                                                                                                            echo $dataSS['jumlah'];
                                                                                                                                          } ?></a></li>
                <li><a href="index.php?p=lihat_stacking"><i class="fa fa-bar-chart"></i>Transaksi</a></li>
              </ul>
            </li>

            <!-- Internal Moving -->
            <li class="treeview">
              <a href="index.php?p=datapesanan">
                <i class="fa fa-subway red"></i>
                <span>Internal Moving</span><i class="fa fa-angle-left pull-right"></i>
                <!-- <span class="pull-right-container">
                <span class="label label-primary pull-right"><?= $data['jumlah']; ?></span>
              </span> -->
              </a>
              <ul class="treeview-menu">
                <li><a href="index.php?p=proses_moving"><i class="fa fa-spinner"></i>Process <span class="badge label-success"><?php if ($dataPM['jumlah'] >= 1) {
                                                                                                                                  echo $dataPM['jumlah'];
                                                                                                                                } ?></a></li>
                <li><a href="index.php?p=stf_moving"><i class="fa fa-paper-plane"></i>Send To Manager <span class="badge label-primary"><?php if ($dataSM['jumlah'] >= 1) {
                                                                                                                                          echo $dataSM['jumlah'];
                                                                                                                                        } ?></a></li>
                <li><a href="index.php?p=lihat_moving"><i class="fa fa-bar-chart"></i>Transaksi</a></li>
              </ul>
            </li>

            <li class="treeview">
              <a href="#">
                <i class="fa fa-briefcase"></i>
                <span>Pekerjaan Lain</span><i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li> <a href="index.php?p="> <i class="lightning"></i>Pemakaian Listrik PHE</a>
                  <ul class="treeview-menu">
                    <li><a href="index.php?p=buat_pemakaianlistrik"><i class="fa fa-chevron-circle-right"></i>Buat </a></li>
                    <li><a href="index.php?p=pemakaian_listrik"><i class="fa fa-chevron-circle-right"></i>Rekap </a></li>
                  </ul>
                </li>
                <li> <a href="index.php?p=pemakaian_trucktrailler"> <i class=""></i>Pemakaian Truck/Trailler</a> </li>
                <li> <a href="#"> <i class="trash"></i>Truck Sampah</a> </li>
                <li> <a href="../assets/tcpdf/cetak_tallysheetweek.php"> <i class=""></i>TEST</a> </li>
              </ul>
            </li>

            <li class="header">Laporan</li>
            <li class="treeview">
              <a href="index.php?p=datapesanan">
                <i class="fa fa-files-o green"></i>
                <span>Laporan</span><i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li><a href="index.php?p=laporan_sandar"><i class="fa fa-chevron-circle-right"></i>Laporan Sandar Kapal</a></li>
                <li><a href="index.php?p=laporan_pekerjaankapal"><i class="fa fa-chevron-circle-right"></i>Laporan Pekerjaan Kapal</a></li>
                <li><a href="index.php?p=laporan_truckweek"><i class="fa fa-chevron-circle-right"></i>Laporan loading Truck Priode </a></li>
              </ul>
            </li>

          </ul>
        </section>
        <!-- /.sidebar -->
      </aside>