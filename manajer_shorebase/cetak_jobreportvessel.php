<?php ob_start(); 
    session_start();
    include "../fungsi/fungsi.php";
    if(isset($_GET['id'])) {

        $idJoborder = $_GET['id'];
    }

?>

<!-- tambahan baru include-->
<!-- Setting CSS bagian header/ kop -->
<style type="text/css">
  table.page_header {width: 1020px; border: none; background-color: #DDDDFF; border-bottom: solid 1mm #AAAADD; padding: 2mm }
  table.page_footer {width: 1020px; border: none; background-color: #DDDDFF; border-top: solid 1mm #AAAADD; padding: 2mm}
  h1 {color: #000033}
  h2 {color: #000055}
  h3 {color: #000077}
</style>
<!-- Setting Margin header/ kop -->
  <!-- Setting CSS Tabel data yang akan ditampilkan -->
  <style type="text/css">
  .tabel2 {
    border-collapse: collapse;
    border: double;
    margin-left: 0px;
    text-align : center;
  }
  .tabel2 th, .tabel2 td {
      padding: 5px 5px;
      border: 1px solid #000;
  }

   

  div.kiri {
	  width:300px;
	  float:left;
	  margin-left:50px;
	  display:inline;
  }

  div.kanan {
     width:160px;
	   float:right;
     margin-left:150px;
     margin-top:-130px;
  }

  div.double{
    border-style: double;
  }

  .right {
    text-align:right;
  }

  .garis{
    border: 2px;
  }
  .kotak {
    width : 715px;
    height : 100px;
  }
  .kotak2 {
    width : 715px;
    height : 800px;    
  }
  .batas-judul{
    width : 200px;
    height : 30px;
    margin-left:150px;
    display:inline;
  }
  .batas-titik{
    width : 300px;
    height : 50px;
    margin-left:10px;
  }
  .batas-note{
    width : 500px;
    height : 30px;
    margin-left:150px;
  }

  .batas-equipment{
    width : 250px;
    height : 120px;
    margin-left:10px;
  }

  .batas-nilai{
    width : 50px;
    height : 50px;
    margin-left:0px;    
    float:right;
  }

  .text-judul{
    text-align: center;
    font-weight: bold; 
    font-size: 18px;
  }
  .text-tengah{
    text-align: center;
  }

  #t1 {
  -moz-tab-size: 4; /* Firefox */
  -o-tab-size: 4; /* Opera 10.6-12.1 */
  tab-size: 4;
  }
  
  </style>
  <!-- <table> -->
  <?php 
      include "../fungsi/koneksi.php";      
      $queryUser =  mysqli_query($koneksi, "SELECT area from user WHERE username  = '$_SESSION[username]'");
      $rowUser=mysqli_fetch_assoc($queryUser);
      $Area=$rowUser['area'] ;
    
      $sql = mysqli_query($koneksi, "SELECT * 
                                    FROM job_order jo
                                    JOIN client c
                                    ON c.id_client = jo.id_client
                                    WHERE jo.status_jo>=3 AND jo.id_joborder = '$idJoborder' ");  
        $i   = 1;
        $data=mysqli_fetch_array($sql); 
                
        $bulan    = date("n", strtotime($data['finish_kegiatan']));
        $romawi    = getRomawi($bulan);
        $tahun     = date("y", strtotime($data['finish_kegiatan']));
        
        $noJr = $data['id_joborder'].'/'.$data['kd_client'].'/'.$romawi.'/'.$tahun;
   ?>
    <br><br><br><br><br>
  <div class="kotak  garis">  
        <p class="text-judul"><?= strtoupper($data['deskripsi_kontrak']) ; ?></p>
        <div class="text-judul"><?= $data['nm_client'] ; ?></div>
        <p class="text-judul"><?= $data['no_kontrak'];?></p>
  </div>
  <div class="kotak2 garis">
      <p class="text-judul">JOB REPORT</p>
      <div class="text-tengah">
          NO : <?= $noJr; ?><br>
          REF to WO NO : <?= $data['no_wo'];?>
      </div>
      <br><br>
      <!-- ACTIVITY -->
        <div class="batas-judul ">
            1. ACTIVITY
        </div>
        <div class="batas-titik ">
            :  <?= $data['nm_kegiatan'] ; ?> Vessel
        </div>
      <!--  -->
      <!-- Total -->
      <div class="batas-judul ">
            2. TOTAL
        </div>
        <div class="batas-titik ">
            :  <?= $data['total_cargo'].' Ton/M<sup>3</sup>' ; ?>
        </div>
      <!--  -->
      <!-- Location -->
      <div class="batas-judul ">
            3. LOCATION
        </div>
        <div class="batas-titik ">
            :  <?= '('.$data['sandar_kapal'].')' ; ?>
        </div>
      <!--  -->
      <!-- Equipment -->
      <div class="batas-judul ">
            4. EQUIPMENT
        </div>
        <div class="batas-equipment">
            :  <?php 
                echo "<br>".$data['alat_berat']. "<br>" ;
                if($data['alat_berat2']!='NULL')
                  { echo $data['alat_berat2'] . "<br>" ; }                 
                if($data['alat_berat3']!='NULL')
                  { echo $data['alat_berat3'] . "<br>" ; } 
                if($data['alat_berat4']!='NULL')
                  { echo $data['alat_berat4']; } 
                if($data['alat_berat5']!='NULL')
                  { echo $data['alat_berat4']; }
                if($data['alat_beratsewa']!='NULL')
                  { echo $data['alat_berat4']; }
            ; ?>
        </div>
      <!-- Date -->
      <div class="batas-judul ">
            5. DATE
        </div>
        <div class="batas-titik ">        
            :  <?php echo date("F, jS, Y", strtotime($data['finish_kegiatan'])) ?>  
        </div>
      <!--  -->

      <!-- NOTE -->
      <br><br><br>
      <div class="batas-note">
            THANK YOU FOR YOUR ATTENTION AND YOUR COOPERATION
        </div>
      <!--  -->
      <br><br><br><br><br><br><br><br>
      <div class="kiri">
          <p>APPROVED BY,<br><?= $data['nm_client'] ; ?> Reps.</p>
          <br>
          <br>
          <br>
          <p><b><u>(..................................)</u></b></p>
      </div>

      <div class="kanan">
          <p class="text-tengah">ACKNOWLEDGE BY,<br>PT. EKANURI</p>
          <br>
          <br>
          <br>
          <p class="text-tengah"><b><u>(HARTONO PURWANTO)</u><br >SHOREBASE MANAGER</b></p>           
      </div>
      <br><br><br><br><br>
  </div>
  
  
<!-- Memanggil fungsi bawaan HTML2PDF -->
<?php
$content = ob_get_clean();
 include '../assets/html2pdf/html2pdf.class.php';
 try
{
    $html2pdf = new HTML2PDF('P', 'A4', 'en', false, 'UTF-8', array(10, 10, 4, 10));
    $html2pdf->pdf->SetDisplayMode('fullpage');
    $html2pdf->writeHTML($content);
    $html2pdf->Output('JR-'. $idJoborder  .'.pdf');
}
catch(HTML2PDF_exception $e) {
    echo $e;
    exit;
}
?>