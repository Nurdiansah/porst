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
    margin-left: 0px;
    text-align : center;
    font-size : 10px;
  }
  .tabel2 th, .tabel2 td {
      padding: 5px 5px;
      border: 1px solid #000;
  }

  div.tengah{
     width:300px;
	   float:none;
     margin-left:125px;
     margin-top:-140px;
  }

  div.kanan {
     width:300px;
	   float:right;
     margin-left:900px;
     margin-top:0px;
  }

  div.kiri {
	  width:300px;
	  float:left;
	  margin-left:30px;
	  display:inline;
  }

  .right {    
    width:300px;
	  float:right;
    margin-left:480px;
    margin-top:0px;
    text-align:left;
  }

  .left {
    width:300px;
	  float:left;
	  margin-left:30px;
	  display:inline;
    text-align:left;
    
  }
  
  </style>
  <!-- <table> -->
  <?php 
      include "../fungsi/koneksi.php";

   ?>

  <!-- <tr>
      <th rowspan="8"></th> -->
      <p align="center" style="width: 520px;"><font style="font-size: 18px"><b>PT. EKANURI  <br> SHOREBASE</b></font>
      <br><br>Jl. Ketel Uap I No. 1 Jakarta Utara DKI Jakarta <br> Telp :  (021) 439-02157 | Fax : (021) 385-0830</p>
	  <!-- <th rowspan="3"><img src="../gambar/logopdam.png" style="width:100px;height:80px" /></th> -->
    <!-- </tr>
  </table> -->
        <div style="text-align:right;">
            <p style="width: 520px;"><font style="font-size: 18px"> <b>TIME SHEET</b></font> </p>
        </div>
  <hr>  

  <?php
  $queryUser =  mysqli_query($koneksi, "SELECT area from user WHERE username  = '$_SESSION[username]'");
  $rowUser=mysqli_fetch_assoc($queryUser);
  $Area=$rowUser['area'] ;

  $queryTimeline =  mysqli_query($koneksi, "SELECT * FROM timeline_cargo  WHERE id_joborder = '$idJoborder' ");
  $rowTl=mysqli_fetch_assoc($queryTimeline);
  

  $sql = mysqli_query($koneksi, "SELECT * FROM job_order WHERE id_joborder = '$idJoborder' ");  
    $i   = 1;
    while($data=mysqli_fetch_array($sql))
     {
      $totalCargo = $data['total_cargo'];
      
  ?>
  <br>
      <div class="left">
        Area        : <?php echo $data['sandar_kapal']; ?>  
    </div>
    <div class="right">
        Date : <?php echo date("F, jS, Y", strtotime($data['finish_kegiatan'])) ?>        
    </div>
    <br>
    <div class="left">
         Kapal : <?php echo $data['nm_kapal']; ?>
    </div>
    <div class="right">
        Kegiatan        : <?php echo $data['nm_kegiatan']; ?> 
    </div>
    <br>
    <div class="left">
         Mulai Kegiatan : <?php echo $data['mulai_kegiatan']; ?>
    </div>
    <div class="right">
         Finish Kegiatan : <?php echo $data['finish_kegiatan']; ?>
    </div>
    <br>
    <div class="left">
         Durasi Kegiatan : <?php echo $data['durasi']; ?>
    </div>
    <?php
    $i++;
    }
    ?> 

  <br><br><br>
  <div class="table-responsive">
  <table class="tabel2 text-center" align="center"  >
    <thead>
      <tr>
        <td style="text-align: center; " ><b>NO.</b></td>
        <td style="text-align: center; " ><b>TIME </b></td>
        <td style="text-align: center; " ><b>DOC NO </b></td>
        <td style="text-align: center; " ><b>QUANTITY</b></td>
    		<td style="text-align: center; " ><b>DESCRIPTION</b></td>
        <td style="text-align: center; " ><b>REMARKS</b></td>
        <td style="text-align: center; " ><b>PLACED</b></td>
        <td style="text-align: center; " ><b>M <span>3</span></b></td>
        <td style="text-align: center; " ><b>TON</b></td>
        <td style="text-align: center; " ><b>REVTON</b></td>
      </tr>
    </thead>
    <tbody>
        <!-- <tr>
        <td style="text-align: center; "><b>START</b></td>
        <td style="text-align: center; "><b>FINISH</b></td>
      </tr> -->

      <?php    
        $queryts = mysqli_query($koneksi, "SELECT * FROM actual_stevedoring WHERE id_joborder = '$idJoborder'
        AND keterangan != 'Not Available'");  
        $i   = 1;
        while($row=mysqli_fetch_array($queryts))
         {
        // query booking cargo

        ?>
      <tr>
        <td style="text-align: center; width=30px;"><?php echo $i; ?></td>
        <!-- <td style="text-align: center; width=50px;"> start </td> -->
        <td style="text-align: center; width=100px;"><?php echo $row['time_as']; ?></td>
        <td style="text-align: center; width=60px;"><?php echo $row['doc_no_as']; ?></td>
        <td style="text-align: center; width=5px;"><?php echo $row['qty_as']; ?></td>
        <td style="text-align: center; width=250px;"><?php echo $row['rincian_cargo']; ?></td>
        <td style="text-align: center; width=80px;"><?php echo $row['remarks_as']; ?></td>
        <td style="text-align: center; width=50px;"><?php echo $row['keterangan']; ?></td>
        <td style="text-align: center; width=30px;"><?php echo $row['m3_as']; ?></td>
        <td style="text-align: center; width=30px;"><?php echo $row['ton_as']; ?></td>
        <td style="text-align: center; width=30px;"><?php echo $row['revton_as']; ?></td>
      </tr>
      <?php
        $i++;
        }
        ?> 
      <tr>
        <td style="text-align: center; " colspan="9"> <b>Total Cargo</b> </td>
        <td style="text-align: center; " > <b><?php echo $totalCargo; ?></b> </td>
      </tr>    
    </tbody>
  </table>
  </div>
  <br>
  <!-- <div class="kiri">
      <p>Menyetujui :<br>Tenant </p>
      <br>
      <br>
      <br>
      <img src="../file/ttd/ttd1.png" style="width:120px">
      <p><b><u>PIC Tenant </u><br>NIK : 198108300482</b></p>
  </div>

  <div class="tengah">
      <p>Mengetahui :<br>Supervisor </p>
      <br>
      <br>
      <br>
      <img src="../file/ttd/ttd1.png" style="width:120px">
      <p><b><u>Indra Setiawan </u><br>NIK : 198108300482</b></p>
  </div>

  <div class="kanan">
      <p>Meyetujui :<br>Manajer Shorebase</p>
      <br>
      <br>
      <br>
      <img src="../file/ttd/ttd2.png" style="width:120px">
      <p><b><u>Hartono Purwanto </u><br>NIK : 197810170371</b></p>
  </div> -->

<!-- Memanggil fungsi bawaan HTML2PDF -->
<?php
$content = ob_get_clean();
 include '../assets/html2pdf/html2pdf.class.php';
 try
{
    $html2pdf = new HTML2PDF('l', 'A4', 'en', false, 'UTF-8', array(10, 10, 4, 10));
    $html2pdf->pdf->SetDisplayMode('fullpage');
    $html2pdf->writeHTML($content);
    $html2pdf->Output('Timesheet-'.$idJoborder.'.pdf');
}
catch(HTML2PDF_exception $e) {
    echo $e;
    exit;
}
?>