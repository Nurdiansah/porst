<?php ob_start(); 
    session_start();
    include "../fungsi/fungsi.php";

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
  }
  .tabel2 th, .tabel2 td {
      padding: 5px 5px;
      border: 1px solid #000;
  }

    div.kanan {
     width:300px;
	 float:right;
     margin-left:210px;
     margin-top:-140px;
  }

  div.kiri {
	  width:300px;
	  float:left;
	  margin-left:30px;
	  display:inline;
  }
  
  </style>
  <!-- <table> -->
  <?php 
      include "../fungsi/koneksi.php";

   ?>

  <!-- <tr> -->
      <!-- <th rowspan="8"></th> -->
      <p align="center" style="width: 520px;"><font style="font-size: 18px"><b>PT. EKANURI  <br> SHOREBASE</b></font>
      <br><br>Jl. Ketel Uap I No. 1 Jakarta Utara DKI Jakarta <br> Telp :  (021) 439-02157 | Fax : (021) 385-0830</p>
	  <!-- <th rowspan="3"><img src="../gambar/logopdam.png" style="width:100px;height:80px" /></th> -->
    <!-- </tr>
  </table> -->
  <hr>
  <p align="center" style="font-weight: bold; font-size: 18px;"><u>LAPORAN DATA SANDAR KAPAL </u></p>
  <div class="table-responsive">
  <table class="tabel2 text-center">
    <thead>
      <tr>
        <td style="text-align: center; "><b>No.</b></td>
        <td style="text-align: center; "><b>Nama Kapal</b></td>
        <td style="text-align: center; "><b>Client</b></td>
        <td style="text-align: center; "><b>Tanggal Masuk</b></td>
		    <td style="text-align: center; "><b>Jam Masuk</b></td>
        <td style="text-align: center; "><b>Tanggal Keluar</b></td>
        <td style="text-align: center; "><b>Jam Keluar</b></td>       
        <td style="text-align: center; "><b>Jumlah Cargo</b></td> 
      </tr>
    </thead>
    <tbody>
      <?php
      $queryUser =  mysqli_query($koneksi, "SELECT area from user WHERE username  = '$_SESSION[username]'");
	    $rowUser=mysqli_fetch_assoc($queryUser);
      $Area=$rowUser['area'] ;     
      $sql = mysqli_query($koneksi, "SELECT * FROM job_order WHERE status_jo=3 AND area = '$Area' ORDER BY tgl_masuk DESC ");  
      $i   = 1;
      while($data=mysqli_fetch_array($sql))
      {
        // query booking cargo
        $idJoborder=$data['id_joborder'];

        $queryBc =  mysqli_query($koneksi, "SELECT sum(m3_cargo) as booking_cargo FROM detail_joborder WHERE id_joborder='$idJoborder' AND status_cargo=1");
        $rowBc=mysqli_fetch_assoc($queryBc);
        $Bc=$rowBc['booking_cargo'];
        
        // -- query addtional_cargo
        $queryAc =  mysqli_query($koneksi, "SELECT sum(m3_cargo) as addtional_cargo FROM detail_joborder WHERE id_joborder='$idJoborder' AND status_cargo=2 or status_cargo=3");
        $rowAc=mysqli_fetch_assoc($queryAc);
        $Ac=$rowAc['addtional_cargo'];
        
        // query na_cargo
        $queryNc =  mysqli_query($koneksi, "SELECT sum(m3_cargo) as na_cargo FROM detail_joborder WHERE id_joborder='$idJoborder' AND cargo_final=2");
        $rowNc=mysqli_fetch_assoc($queryNc);
        $Nc=$rowNc['na_cargo'];
        
        // query progres_cargo
        $queryPc =  mysqli_query($koneksi, "SELECT sum(m3_cargo) as progres_cargo FROM detail_joborder WHERE id_joborder='$idJoborder' AND cargo_final='1'");
        $rowPc=mysqli_fetch_assoc($queryPc);
        $Pc=$rowPc['progres_cargo'];
        
        $jmlCargo= ($Bc+$Ac-$Nc) ;
        ?>
      <tr>
        <td style="text-align: center; width=15px;"><?php echo $i; ?></td>
        <td style="text-align: center; width=80px;"><?php echo $data['nm_kapal']; ?></td>
        <td style="text-align: center; width=70px;"><?php echo $data['client']; ?></td>    
        <td style="text-align: center; width=60px;"><?php echo $data['tgl_masuk']; ?></td>
	    	<td style="text-align: center; width=70px;"><?php echo $data['jm_masuk']; ?></td> 
        <td style="text-align: center; width=70px;"><?php echo $data['tgl_keluar']; ?></td>
        <td style="text-align: center; width=70px;"><?php echo $data['jm_keluar']; ?></td>       
        <td style="text-align: center; width=70px;"><?php echo $jmlCargo; ?></td> 
      </tr>
    <?php
    $i++;
    }
    ?>
    </tbody>
  </table>
  </div>
  
  <div class="kiri">
      <p>Mengetahui :<br>Asisten Manajer </p>
      <br>
      <br>
      <br>
      <p><b><u>Sugeng </u><br>NIK : 198108300482</b></p>
  </div>

  <div class="kanan">
      <p>Mengetahui :<br>Manajer Shorebase</p>
      <br>
      <br>
      <br>
      <p><b><u>Hartono </u><br>NIK : 197810170371</b></p>
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
    $html2pdf->Output('laporan_stok_material_teknik.pdf');
}
catch(HTML2PDF_exception $e) {
    echo $e;
    exit;
}
?>