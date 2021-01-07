<?php

function fetch_data()
{
  //output
  ob_end_clean();
  include "../../fungsi/koneksi.php";

  if (isset($_GET['id'])) {
    $idJoborder = $_GET['id'];
  }
  $output = '';

  $sql = "SELECT ac.time_as, ac.id_cargo, ac.doc_no_as, sum(ac.qty_as) as qty_as, ac.rincian_cargo, j.p, j.l, j.t, ac.remarks_as, ac.keterangan, sum(ac.m3_as) as m3_as, sum(ac.ton_as) as ton_as, sum(ac.revton_as) as revton_as, d.id_cargo
                  FROM actual_stevedoring ac
                  JOIN detail_joborder d        
                  ON ac.rincian_cargo = d.rincian_cargo
                  JOIN jenis_barang j
                  ON ac.id_jenis = j.id_jenis
                  WHERE ac.id_joborder = '$idJoborder'
                  AND ac.keterangan != 'Not Available'
                  AND d.doc_no = ac.doc_no_as
                  GROUP BY ac.id_cargo
                  ORDER BY d.id_cargo ASC 
                  ";
  $result = mysqli_query($koneksi, $sql);
  $i = 1;

  $sqlTotal = "SELECT total_cargo FROM job_order
            WHERE id_joborder = '$idJoborder'";
  $total = mysqli_query($koneksi, $sqlTotal);
  $rowTotal = mysqli_fetch_array($total);

  while ($row = mysqli_fetch_array($result)) {
    $output .= "<!-- <tbody> -->
                <tr >
                  <td style='text-align: center;'> $i </td>
                  <td style='text-align: center;'>" . $row['doc_no_as'] . "</td>
                  <td style='text-align: center;'>" . $row['qty_as'] . "</td>
                  <td style='text-align: center;'>" . $row['rincian_cargo'] . "</td>
                  <td style='text-align: center;'>" . $row['remarks_as'] . "</td>
                  <td style='text-align: center;'>" . $row['keterangan'] . "</td>
                  <td style='text-align: center;'>" . $row['p'] . "</td>
                  <td style='text-align: center;'>" . $row['l'] . "</td>
                  <td style='text-align: center;'>" . $row['t'] . "</td>
                  <td style='text-align: center;'>" . $row['m3_as'] . "</td>
                  <td style='text-align: center;'>" . $row['ton_as'] . "</td>
                  <td style='text-align: center;'>" . $row['revton_as'] . "</td>
                </tr>
                <!-- <tbody> -->";
    $i++;
  }
  $output .= "<tr>
                <td style='text-align: center; colspan=\"11\";'><p><b>Total Cargo</b></p> </td>
                <td style='text-align: center; '><b>" . $rowTotal['total_cargo'] . "</b></td>
              </tr>";
  return $output;
}

require_once 'library/tcpdf.php';
$obj_pdf = new TCPDF('L', PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8, false');
$obj_pdf->SetCreator(PDF_CREATOR);
$obj_pdf->SetTitle("Tally Sheet Vessel");
$obj_pdf->SetHeaderData('', '', PDF_HEADER_TITLE, PDF_HEADER_STRING);
$obj_pdf->setHeaderFont(array(PDF_FONT_NAME_MAIN, '', PDF_FONT_SIZE_MAIN));
$obj_pdf->setHeaderFont(array(PDF_FONT_NAME_DATA, '', PDF_FONT_SIZE_DATA));
$obj_pdf->SetDefaultMonospacedFont('helvetica');
$obj_pdf->SetFooterMargin(PDF_MARGIN_FOOTER);
$obj_pdf->SetMargins(PDF_MARGIN_LEFT, PDF_MARGIN_TOP, PDF_MARGIN_RIGHT);
$obj_pdf->SetMargins(15, 15, 15);
$obj_pdf->setPrintHeader(false);
$obj_pdf->setPrintFooter(true);
$obj_pdf->setAutoPageBreak(true, PDF_MARGIN_BOTTOM);
$obj_pdf->SetFont('helvetica', '', 11);
$obj_pdf->AddPage();
$style = array('width' => 0.7, 'dash' => '2, 2, 2, 2', 'phase' => 0);
$obj_pdf->Line(5, 30, 290, 30, $style);

//content
$content = '';
include "../../fungsi/koneksi.php";
include "../../fungsi/fungsi.php";
if (isset($_GET['id'])) {
  $idJoborder = $_GET['id'];
}

$sqlJO = "SELECT * FROM job_order a
  INNER JOIN client b
    ON a.id_client = b.id_client
  WHERE id_joborder = '$idJoborder'";
$data = mysqli_query($koneksi, $sqlJO);
$rowData = mysqli_fetch_array($data);

$content .= '
  <p align="left" style="width: 520px;"><font style="font-size: 18px"><b>NBM</b></font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <font style="font-size: 15px"><b>TALLY SHEET</b></font>
  <br><font style="font-size: 8px">Jl. Ketel Uap I No. 1 Jakarta Utara DKI Jakarta<br>Telp :  (021) 439-02157 | Fax : (021) 385-0830</font></p>
  
  <font size="8">
  <table border="0" cellpadding="1" >
    <tr>  
      <th style="width: 60px;">Area</th>
      <th style="width: 500px;"> : ' . $rowData['sandar_kapal'] . '</th>
      <th style="width: 63px;">Tanggal</th>
      <th> : ' . tanggal($rowData['finish_kegiatan']) . '</th>
    </tr>
    <tr>  
      <th>Kapal</th>
      <th> : ' . $rowData['nm_kapal'] . '</th>
      <th>Kegiatan</th>
      <th> : ' . $rowData['nm_kegiatan'] . '</th>
    </tr>
    <tr>  
      <th>Mulai Kegiatan</th>
      <th> : ' . tanggalWaktu($rowData['mulai_kegiatan']) . '</th>
      <th>Selesai Kegiatan</th>
      <th> : ' . tanggalWaktu($rowData['finish_kegiatan']) . '</th>
    </tr>
    <tr>  
      <th>Durasi Kegiatan</th>
      <th> : ' . $rowData['durasi'] . '</th>
    </tr>
  </table> </font><br>';

$content .= '<font size="7">
    <table border="1" cellspacing="0" cellpadding="2" align="center">
    <!-- <thead> -->
      <tr>
        <th style="text-align: center; width: 40px;" rowspan="2"><b>NO.</b></th>
        <th style="text-align: center; width: 70px;" rowspan="2"><b>DOC NO </b></th>
        <th style="text-align: center; width: 25" rowspan="2"><b>QTY</b></th>
    		<th style="text-align: center; width: 230" rowspan="2"><b>DESCRIPTION</b></th>
        <th style="text-align: center; width: 80px" rowspan="2"><b>REMARKS</b></th>
        <th style="text-align: center; width: 65px" rowspan="2"><b>PLACED</b></th>
        <th style="text-align: center; width: 75px" colspan="3"><b>DIMENTION</b></th>        
        <th style="text-align: center; width: 55px" rowspan="2"><b>M<span>3</span></b></th>
        <th style="vertical-align: middle; text-align: center; width: 55px" rowspan="2"><b>TON</b></th>
        <th style="text-align: center; vertical-align: middle; width: 55px" rowspan="2"><b>TON/M3</b></th>
      </tr>
      <tr>
        <th style="text-align: center; width: 25px" ><b>P</b></th>
        <th style="text-align: center; width: 25px" ><b>L</b></th>
        <th style="text-align: center; width: 25px" ><b>T</b></th>
      </tr>
      <!-- </thead> -->';
$content .= fetch_data();
$content .= '</table> <br><br><br>';

$content .= '<table border="0" cellpadding="3">
                <tr>
                  <th style="text-align: center; width: 150px;">Menyetujui :<br>' . $rowData['nm_client2'] . ' Reps.<br><br><br><br><br><b>(............................................)</b></th>
                  <th style="text-align: center; width: 460px;">Mengetahui :<br>Supervisor/Team Leader<br><br><br><br><br><b>(............................................)</b></th>
                  <th style="text-align: center; width: 150px;">Menyetujui :<br>Manajer Shorebase<br><br><br><br><br><b><u>(Nurdiansah)</u></b></th>
                </tr>
              </table></font>';

$obj_pdf->writeHTML($content);
$obj_pdf->Output('TallySheetVessel-' . $idJoborder . '.pdf', 'I');
