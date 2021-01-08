 <?php

  $tahun = date('Y');

  //Jumlah Total Stevedoring  
  $queryTV = mysqli_query($koneksi, "SELECT SUM(total_cargo) AS jumlah FROM job_order WHERE area != 'kj4' AND YEAR(finish_kegiatan) = '$tahun' ");
  $dataTV = mysqli_fetch_assoc($queryTV);

  ?>
 <section class="content-header">
   <h1>
     Dashboard
     <small>Control panel</small>
   </h1>
   <ol class="breadcrumb">
     <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
     <li class="active">Dashboard</li>
   </ol>
   <h3 class="text-right mb-1" id="jam"> </h3>
 </section>
 <!-- Main content -->
 <section class="content">
   <!-- Small boxes (Stat box) -->

   <div class="row">

     <div class="col-lg-8 mb-3">
       <div id="chartdiv"></div>
     </div>

     <div class="col-lg-4 mt-3">

       <div class="col-lg-12 col-xs-6">
         <div class="list-group">
           <a href="#" class="list-group-item label-warning">
             Work in Progress
           </a>
           <a href="index.php?p=buat_jovessel" class="list-group-item"> <i class="fa fa-file"></i> Buat Pekerjaan</a>
           <a href="index.php?p=draf_lo" class="list-group-item"> <i class="fa fa-clipboard"></i> Draf
             <span class="badge label-success">
               <?php if ($dataDV['jumlah'] >= 1) {
                  echo $dataDV['jumlah'];
                } ?>
             </span>
           </a>
           <a href="index.php?p=proses_jovessel" class="list-group-item"> <i class="fa fa-spinner"></i> Work in Progress
             <span class="badge label-success">
               <?php if ($dataPV['jumlah'] >= 1) {
                  echo $dataPV['jumlah'];
                } ?>
             </span>
           </a>
           <a href="index.php?p=stf" class="list-group-item"> <i class="fa fa-check-square"></i> Verifikasi
             <span class="badge label-success">
               <?php if ($dataSV['jumlah'] >= 1) {
                  echo $dataSV['jumlah'];
                } ?>
             </span>
           </a>
           <a href="index.php?p=lihat_jovessel" class="list-group-item"> <i class="fa fa-anchor"></i> Transaksi
             <span class="badge label-success">
               <?php if ($dataJV['jumlah'] >= 1) {
                  echo $dataJV['jumlah'];
                } ?>
             </span>
           </a>
         </div>
       </div>

     </div>

 </section>

 <script>
   var drafVessel = '<?= $dataDV['jumlah']; ?>';
   var prosesVessel = '<?= $dataPV['jumlah']; ?>';
   var verifikasiVessel = '<?= $dataSV['jumlah']; ?>';
   var transaksiVessel = '<?= $dataJV['jumlah']; ?>';

   am4core.ready(function() {

     // Themes begin
     am4core.useTheme(am4themes_material);
     am4core.useTheme(am4themes_animated);
     // Themes end

     var chart = am4core.create("chartdiv", am4charts.PieChart3D);
     chart.hiddenState.properties.opacity = 0; // this creates initial fade-in

     chart.legend = new am4charts.Legend();

     chart.data = [{
         country: "Draft Pekerjaan",
         litres: drafVessel
       },
       {
         country: "Proses Stevedoring Vessel",
         litres: prosesVessel
       },
       {
         country: "Verifikasi Stevedoring Vessel",
         litres: verifikasiVessel
       },
       {
         country: "Transaksi Stevedoring Vessel",
         litres: transaksiVessel
       }
     ];

     var series = chart.series.push(new am4charts.PieSeries3D());
     series.dataFields.value = "litres";
     series.dataFields.category = "country";

   }); // end am4core.ready()

   $("rect").hide();


   window.onload = function() {
     jam();
   }

   function jam() {
     var e = document.getElementById('jam'),
       d = new Date(),
       h, m, s;
     h = d.getHours();
     m = set(d.getMinutes());
     s = set(d.getSeconds());

     e.innerHTML = h + ':' + m + ':' + s;

     setTimeout('jam()', 1000);
   }

   function set(e) {
     e = e < 10 ? '0' + e : e;
     return e;
   }
 </script>