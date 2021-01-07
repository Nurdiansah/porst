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


    <div class="col-lg-6 col-xs-12 ">
      <!-- small box -->
      <div class="small-box bg-blue ">
        <div class="inner ">
          <p>
            <font size="5px"><b>Stevedoring</b></font>
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
      <div class="small-box bg-green ">
        <div class="inner ">
          <p>
            <font size="5px"><b>Loading/Offloading Truck</b></font>
          </p>
          <p class="text-right"><span class="badge label-warning"> <?php if ($dataJT['jumlah'] >= 1) {
                                                                      echo $dataJT['jumlah'];
                                                                    } ?> </p>
        </div>
        <div class="icon">
          <i class="ion ion-stats-bars"></i>
        </div>
        <a href="index.php?p=proses_jotruck" class="small-box-footer">Check <i class="fa fa-arrow-circle-right"></i></a>
      </div>
    </div>
    <!-- ./col -->

  </div>

  <div class="row">


    <div class="col-lg-6 col-xs-12 ">
      <!-- small box -->
      <div class="small-box bg-red ">
        <div class="inner ">
          <p>
            <font size="5px"><b>Stacking/Stuffing</b></font>
          </p>
          <p class="text-right"><span class="badge label-success"> <?php if ($dataST['jumlah'] >= 1) {
                                                                      echo $dataST['jumlah'];
                                                                    } ?></p>
        </div>
        <div class="icon">
          <i class="ion ion-stats-bars"></i>
        </div>
        <a href="index.php?p=proses_stacking" class="small-box-footer">Check <i class="fa fa-arrow-circle-right"></i></a>
      </div>
    </div>
    <!-- ./col -->

    <div class="col-lg-6 col-xs-12 ">
      <!-- small box -->
      <div class="small-box bg-orange ">
        <div class="inner ">
          <p>
            <font size="5px"><b>Internal Moving</b></font>
          </p>
          <p class="text-right"><span class="badge label-primary"> <?php if ($dataIM['jumlah'] >= 1) {
                                                                      echo $dataIM['jumlah'];
                                                                    } ?> </p>
        </div>
        <div class="icon">
          <i class="ion ion-stats-bars"></i>
        </div>
        <a href="index.php?p=proses_moving" class="small-box-footer">Check <i class="fa fa-arrow-circle-right"></i></a>
      </div>
    </div>
    <!-- ./col -->

  </div>

</section>