<section class="content-header">
  <h1>
    Dashboard
    <small>Control panel</small>
  </h1>
  <ol class="breadcrumb">
    <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
    <li class="active">Dashboard</li>
  </ol>
</section>

<!-- Main content -->
<section class="content">
  <!-- Small boxes (Stat box) -->
  <div class="row">



    <!-- ./col -->

    <div class="col-lg-6 col-xs-12 ">
      <!-- small box -->
      <div class="small-box bg-green ">
        <div class="inner ">
          <p>
            <font size="5px"><b>Proses Stevedoring</b></font>
          </p>
          <p class="text-right"><span class="badge label-warning"> <?php if ($dataJV['jumlah'] >= 1) {
                                                                      echo $dataJV['jumlah'];
                                                                    } ?> </p>
        </div>
        <div class="icon">
          <i class="ion ion-stats-bars"></i>
        </div>
        <a href="index.php?p=proses_jovessel" class="small-box-footer">Check <i class="fa fa-arrow-circle-right"></i></a>
      </div>
    </div>
    <!-- ./col -->
    <div class="col-lg-6 col-xs-12 ">
      <!-- small box -->
      <div class="small-box bg-blue ">
        <div class="inner ">
          <p>
            <font size="5px"><b>Transaksi Stevedoring</b></font>
          </p>
          <p class="text-right"><span class="badge label-warning"> <?php if ($dataTV['jumlah'] >= 1) {
                                                                      echo $dataTV['jumlah'];
                                                                    } ?> </p>
        </div>
        <div class="icon">
          <i class="ion ion-stats-bars"></i>
        </div>
        <a href="index.php?p=lihat_jovessel" class="small-box-footer">Check <i class="fa fa-arrow-circle-right"></i></a>
      </div>
    </div>

  </div>

</section>