<?php

include "../fungsi/koneksi.php";
include "../fungsi/fungsi.php";

$id = $_GET['id'];
date_default_timezone_set('Asia/Jakarta');
$tanggalCargo = date("Y-m-d");

// echo $id . "<br>";

$id = base64_decode($id);



if (isset($_GET['aksi']) && isset($_GET['id'])) {
    //die($id = $_GET['id']);
    $id = $_GET['id'];
    echo $id;

    if ($_GET['aksi'] == 'mulai') {
        header("location:?p=mulai_kegiatan&id=$id");
    } else if ($_GET['aksi'] == 'hapus') {
        header("location:?p=hapus&id=$id");
    }
}


$query = mysqli_query($koneksi, "SELECT * FROM detail_joborder WHERE id_joborder='$id' ORDER BY tgl_cargo ASC ");
$query2 = mysqli_query($koneksi, "SELECT * FROM job_order jo
                                            JOIN client c
                                            ON c.id_client = jo.id_client
                                            WHERE jo.id_joborder='$id' ");

$queryActual = mysqli_query($koneksi, "SELECT * 
                                           FROM actual_stevedoring a 
                                           JOIN jenis_barang j
                                           ON j.id_jenis = a.id_jenis
                                           WHERE a.id_joborder='$id' ORDER BY time_as ASC ");

$row2 = mysqli_fetch_assoc($query2);
$idJoborder = $row2['id_joborder'];
$kegiatan = $row2['nm_kegiatan'];
$start = $row2['mulai_kegiatan'];
date("Y-m-d H:i:s");
$mulai_kegiatan = date("d-F-Y H:i:s", strtotime($row2['mulai_kegiatan']));
$finish_kegiatan = date("d-F-Y H:i:s", strtotime($row2['finish_kegiatan']));

$queryView = mysqli_query($koneksi, "SELECT d.id_cargo, d.doc_no, d.qty_cargo, j.satuan_jenis, j.nm_jenis, d.rincian_cargo, 
                                        d.m3_cargo, d.ton_cargo, d.revton_cargo, d.remarks_cargo, d.cargo_final, d.id_joborder ,d.row_version
                                        FROM detail_joborder d
                                        JOIN jenis_barang j
                                        ON j.id_jenis = d.id_jenis
                                        WHERE id_joborder = '$id' AND qty_cargo >0");

$queryTimeline = mysqli_query($koneksi, "SELECT * FROM timeline_joborder WHERE id_joborder='$idJoborder' ORDER BY id_timeline ASC ");

$queryId = mysqli_query($koneksi, "SELECT MAX(id_cargo) from detail_joborder");
$id_cargo = mysqli_fetch_array($queryId);
if ($id_cargo) {

    $nilaikode = substr($id_cargo[0], 2);

    $kode = (int) $nilaikode;

    //setiap kode ditambah 1
    $kode = $kode + 1;
    $kode_otomatis = "IC" . str_pad($kode, 6, "0", STR_PAD_LEFT);
} else {
    $kode_otomatis = "IC000001";
}

// query booking cargo
$queryBc =  mysqli_query($koneksi, "SELECT sum(revton_cargo) as booking_cargo FROM detail_joborder WHERE id_joborder='$idJoborder' ");
$rowBc = mysqli_fetch_assoc($queryBc);
$Bc = $rowBc['booking_cargo'];

// query progres_cargo
$queryAc =  mysqli_query($koneksi, "SELECT sum(revton_as) as actual_cargo FROM actual_stevedoring WHERE id_joborder='$idJoborder' AND keterangan != 'Not Available' ");
$rowAc = mysqli_fetch_assoc($queryAc);
$Ac = $rowAc['actual_cargo'];

$statusCargo = round(@($Ac / ($Bc + $Ac) * 100), 0);

?>

<section class="content">
    <div class="row">
        <div class="col-sm-12 col-xs-12">
            <div class="box box-primary">
                <div class="row">
                    <br><br>
                </div>

                <div class="box-header with-border">
                    <div class="progress">
                        <div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width:<?= $statusCargo ?>%">
                            <font style="color:black"><b>Progres <?= $statusCargo ?>%</b></font>
                        </div>
                    </div>
                </div>
                <!-- Detail Job Order -->

                <div class="box-header with-border">
                    <button class="btn btn-warning col-sm-offset-" type="button" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
                        Detail Job Order
                    </button>
                    <button class="btn btn-danger col-sm-offset-" type="button" data-toggle="collapse" data-target="#timeline" aria-expanded="false" aria-controls="collapseExample">
                        Timeline
                    </button>
                    <button class="btn btn-success col-sm-offset-" type="button" data-toggle="collapse" data-target="#cargo" aria-expanded="false" aria-controls="collapseExample">
                        Detail Progres Cargo
                    </button>
                </div>
                <!--  -->
                </p>
                <div class="collapse" id="collapseExample">
                    <div class="box-header with-border">
                        <h3 class="text-center">Detail Job Order Vessel</h3>
                    </div>
                    <form method="post" enctype="multipart/form-data" class="form-horizontal">
                        <div class="box-body">
                            <div class="form-group ">
                                <label for="id_joborder" class=" col-sm-2 control-label">ID Job Order</label>
                                <div class="col-sm-3">
                                    <input type="text" value="<?= $row2['kode_jovessel']; ?>" readonly class="form-control" name="id_joborder">
                                </div>
                                <label id="tes" for="client" class="col-sm-3 control-label">Client</label>
                                <div class="col-sm-3">
                                    <input type="text" value="<?= $row2['nm_client']; ?>" readonly class="form-control" name="client">
                                </div>
                            </div>
                            <div class="form-group">
                                <label id="tes" for="nm_kapal" class=" col-sm-2 control-label">Nama Kapal</label>
                                <div class="col-sm-3">
                                    <input type="text" value="<?= $row2['nm_kapal']; ?>" readonly class="form-control" name="nm_kapal">
                                </div>
                                <!-- </div>
                            <div class="form-group"> -->
                                <label id="tes" for="agen_kapal" class=" col-sm-3 control-label">Agen Kapal</label>
                                <div class="col-sm-3">
                                    <input type="text" value="<?= $row2['agen_kapal']; ?>" readonly class="form-control" name="agen_kapal">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="tgl_masuk" class=" col-sm-2 control-label">Tanggal Masuk</label>
                                <div class="col-sm-3">
                                    <input type="text" value="<?= $row2['tgl_masuk']; ?>" readonly class="form-control tanggal" name="tgl_masuk">
                                </div>
                                <!-- </div> -->
                                <!-- <div class="form-group "> -->
                                <label for="jm_masuk" class="col-sm-3 control-label">Jam Masuk</label>
                                <div class="col-sm-3">
                                    <input type="text" value="<?= $row2['jm_masuk']; ?>" readonly class="form-control" name="jm_masuk">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="tgl_keluar" class="col-sm-2 control-label">Tanggal Keluar</label>
                                <div class="col-sm-3">
                                    <input type="text" value="<?= $row2['tgl_keluar']; ?>" readonly class="form-control tanggal" name="tgl_keluar">
                                </div>
                                <!-- </div>
                                <div class="form-group "> -->
                                <label for="jm_keluar" class="col-sm-3 control-label">Jam Keluar</label>
                                <div class="col-sm-3">
                                    <input type="text" value="<?= $row2['jm_keluar']; ?>" readonly class="form-control" name="jm_keluar">
                                </div>
                            </div>
                            <div class="form-group">
                                <label id="tes" for="pelabuhan_asal" class="col-sm-2 control-label">Pelabuhan Asal</label>
                                <div class="col-sm-3">
                                    <input type="text" value="<?= $row2['pelabuhan_asal']; ?>" readonly class="form-control" name="pelabuhan_asal">
                                </div>
                                <!-- </div>
                                <div class="form-group"> -->
                                <label id="tes" for="pelabuhan_tujuan" class="col-sm-3 control-label">Pelabuhan Tujuan</label>
                                <div class="col-sm-3">
                                    <input type="text" value="<?= $row2['pelabuhan_tujuan']; ?>" readonly class="form-control" name="pelabuhan_tujuan">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="sandar_kapal" class="col-sm-2 control-label">Sandar Kapal</label>
                                <div class="col-sm-3">
                                    <input type="text" value="<?= $row2['sandar_kapal']; ?>" readonly class="form-control" name="sandar_kapal">
                                </div>
                                <!-- </div>
                                <div class="form-group"> -->
                                <label id="tes" for="alat_berat" class="col-sm-3 control-label">Alat Berat</label>
                                <div class="col-sm-3">
                                    <input type="text" value="<?= $row2['alat_berat']; ?>" readonly class="form-control" name="alat_berat">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="nm_kegiatan" class="col-sm-2 control-label">Kegiatan</label>
                                <div class="col-sm-3">
                                    <input type="text" value="<?= $row2['nm_kegiatan']; ?>" readonly class="form-control" name="nm_kegiatan">
                                </div>
                                <?php
                                if ($row2['alat_berat2'] != 'NULL') { ?>
                                    <div class="col-sm-offset-3  col-sm-3">
                                        <input type="text" value="<?= $row2['alat_berat2']; ?>" readonly class="form-control" name="alat_berat2">
                                    </div>
                                <?php   } ?>
                            </div>
                            <div class="form-group">
                                <?php if ($row2['alat_berat3'] != 'NULL') { ?>
                                    <div class="col-sm-offset-8 col-sm-3">
                                        <input type="text" value="<?= $row2['alat_berat3']; ?>" readonly class="form-control" name="alat_berat3">
                                    </div>
                                <?php   } ?>
                            </div>
                            <div class="form-group">
                                <?php if ($row2['alat_berat4'] != 'NULL') { ?>
                                    <div class="col-sm-offset-8 col-sm-3">
                                        <input type="text" value="<?= $row2['alat_berat4']; ?>" readonly class="form-control" name="alat_berat4">
                                    </div>
                                <?php   } ?>
                            </div>
                            <div class="form-group">
                                <?php if ($row2['alat_berat5'] != 'NULL') { ?>
                                    <div class="col-sm-offset-8 col-sm-3">
                                        <input type="text" value="<?= $row2['alat_berat5']; ?>" readonly class="form-control" name="alat_berat5">
                                    </div>
                                <?php   } ?>
                            </div>
                            <div class="form-group">
                                <?php if ($row2['alat_beratsewa'] != '') { ?>
                                    <div class="col-sm-offset-8 col-sm-3">
                                        <input type="text" value="<?= $row2['alat_beratsewa']; ?>" readonly class="form-control" name="alat_beratsewa">
                                    </div>
                                <?php   } ?>
                            </div>
                        </div>
                    </form>
                </div>

                <!-- Progress Cargo  -->
                <div class="collapse" id="timeline">
                    <!-- <br><br> -->
                    <hr>
                    <h3 class="text-center">Timeline</h3>
                    <hr>
                    <!-- <br><br> -->
                    <div class="table-responsive">
                        <table class="table text-center table table-striped table-hover" id="">
                            <thead>
                                <?php
                                $awalK  = date_create($row2['mulai_kegiatan']);
                                $akhirK = date_create($row2['finish_kegiatan']); // waktu sekarang
                                $diffK  = date_diff($awalK, $akhirK);

                                if ($diffK->d == 0) {
                                    if ($diffK->h >= 1) {
                                        $selisihK = $diffK->h . ' jam ' . $diffK->i . ' menit ';
                                    } else {
                                        $selisihK = $diffK->i . ' menit ';
                                    }
                                } else {
                                    $selisihK = $diffK->d . ' hari ' . $diffK->h . ' jam ' . $diffK->i . ' menit ';
                                }
                                ?>

                                <tr style="background-color : #8FBC8F ;">
                                    <th>No </th>
                                    <th>Mulai Kegiatan</th>
                                    <th>Selesai Kegiatan</th>
                                    <th>Kegiatan</th>
                                    <th>Waktu</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td><?= $mulai_kegiatan ?></td>
                                    <td><?= $finish_kegiatan; ?></td>
                                    <td><?= $kegiatan ?></td>
                                    <td><b><?= $selisihK ?></b></td>
                                </tr>
                            </tbody>
                            <tr style="background-color : #8FBC8F ;">
                                <td colspan="5"><b>Waktu Jeda</b></td>
                            </tr>
                            <thead>
                                <tr>
                                    <th>No </th>
                                    <th>Berhenti</th>
                                    <th>Mulai Kembali</th>
                                    <th>Keterangan Jeda</th>
                                    <th>Waktu</th>
                                </tr>
                            </thead>

                            <tbody>
                                <?php
                                $no = 1;
                                $waktuJeda = 0;
                                if (mysqli_num_rows($queryTimeline)) {
                                    while ($rowTime = mysqli_fetch_assoc($queryTimeline)) :
                                        $waktu_stop = date("d-F-Y H:i:s", strtotime($rowTime['waktu_stop']));
                                        $waktu_mulaikembali = date("d-F-Y H:i:s", strtotime($rowTime['waktu_mulaikembali']));
                                        $awal  = date_create($rowTime['waktu_stop']);
                                        $akhir = date_create($rowTime['waktu_mulaikembali']); // waktu sekarang
                                        $diff  = date_diff($awal, $akhir);

                                        if ($diff->d == 0) {
                                            if ($diff->h >= 1) {
                                                $selisih = $diff->h . ' jam ' . $diff->i . ' menit ';
                                            } else {
                                                $selisih = $diff->i . ' menit ';
                                            }
                                        } else {
                                            $selisih = $diff->d . 'hari' . $diff->h . 'jam' . $diff->i . 'menit';
                                        }

                                        // contoh
                                        $awalan  = strtotime($rowTime['waktu_stop']);
                                        $akhiran  = strtotime($rowTime['waktu_mulaikembali']);

                                        $difJ = $akhiran - $awalan;

                                ?>
                                        <tr>
                                            <td> <?= $no; ?> </td>
                                            <td> <?= $waktu_stop ?> </td>
                                            <td> <?= $waktu_mulaikembali ?> </td>
                                            <td> <?= $rowTime['keterangan_jeda']; ?> </td>
                                            <td> <?= $selisih; ?> </td>
                                        </tr>
                                <?php

                                        $waktuJeda += $difJ;

                                        $no++;
                                    endwhile;
                                } ?>
                                <?php
                                $jam = floor($waktuJeda / 3600);
                                $mod = $waktuJeda % 3600;
                                $menit = floor($mod / 60);

                                // waktu total
                                // $awal2  = strtotime($row2['mulai_kegiatan']);
                                // $akhir2  = strtotime($row2['finish_kegiatan']);
                                // $waktuT = $akhir2 - $awal2 ;

                                // $waktuBersih = $waktuT - $waktuJeda;
                                // $hariB = floor($waktuBersih / (3600*24));
                                // $modHari = $waktuBersih % (3600*24);
                                // $jamB = floor($modHari/3600);


                                ?>
                                <tr style="background-color : #8FBC8F ;">
                                    <td colspan="4"><b>Total Waktu Jeda</b></td>
                                    <td><b><?= $jam . ' jam ', $menit . ' menit'; ?></b></td>
                                </tr>

                                <!-- <tr style="background-color : #8FBC8F ;">
                                                <td colspan="4"><b>Total Waktu Bersih</b></td>                                                
                                                <td><b><?= $hariB . ' Hari ' . $jamB . ' Jam '; ?></b></td>
                                            </tr> -->
                            </tbody>
                        </table>
                    </div>
                </div>
                <!--  -->

                <!-- Progress Cargo  -->

                <div class="collapse" id="cargo">
                    <br><br>
                    <hr>
                    <h3 class="text-center">Progress Cargo</h3>
                    <hr>
                    <br><br>
                    <div class="table-responsive">
                        <table class="table text-center table table-striped table-hover" id="">
                            <thead>
                                <tr>
                                    <th>No </th>
                                    <th>Time</th>
                                    <th>Doc No./ Police</th>
                                    <th>Description</th>
                                    <th>Quantity</th>
                                    <th>Satuan</th>
                                    <th>M<sup>3</sup></th>
                                    <th>Ton</th>
                                    <th>RevTon</th>
                                    <th>Remarks</th>
                                    <th>Placed</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                $no = 1;
                                if (mysqli_num_rows($queryActual)) {
                                    while ($rowAct = mysqli_fetch_assoc($queryActual)) :
                                        if ($rowAct['row_version'] == '2') { ?>
                                            <tr style='background-color:#00FF7F' ;>
                                            <?php } else if ($rowAct['row_version'] == '3') { ?>
                                            <tr style='background-color:#FF0000' ;>
                                            <?php } else { ?>
                                            <tr>
                                            <?php } ?>
                                            <td> <?= $no; ?> </td>
                                            <td> <?= $rowAct['time_as']; ?> </td>
                                            <td> <?= $rowAct['doc_no_as']; ?> </td>
                                            <td> <?= $rowAct['rincian_cargo']; ?> </td>
                                            <td> <?= $rowAct['qty_as']; ?> </td>
                                            <td> <?= $rowAct['satuan_jenis']; ?> </td>
                                            <td> <?= $rowAct['m3_as']; ?> </td>
                                            <td> <?= $rowAct['ton_as']; ?> </td>
                                            <td> <?= $rowAct['revton_as']; ?> </td>
                                            <td> <?= $rowAct['remarks_as']; ?> </td>
                                            <td> <?= $rowAct['keterangan']; ?> </td>
                                            </tr>
                                    <?php
                                        $no++;
                                    endwhile;
                                } ?>
                            </tbody>
                        </table>
                    </div>
                </div>
                <!--  -->



                <!-- Manifest -->
                <div class="box-header with-border">
                    <h3 class="text-center">Manifest <?= $kegiatan ?></h3>
                    <h3 class="text-center"><?= $row2['nm_client']; ?></h3>
                    <br>
                    <div class="col-sm-offset-8">
                        <?php if ($row2['status_jo'] == '3') { ?>
                            <button type="button" class="btn btn-dark" data-toggle="modal" data-target="#"><i class="fa fa-power-off"></i> Start</button>
                            <span data-placement='top' data-toggle='tooltip' title='Stop'><button class="btn btn-dark"><i class="fa fa-pause"></i> Stop</button></span>
                            <span data-placement='top' data-toggle="modal" data-target="#continue" title='Continue'><button class="btn btn-primary"><i class="fa fa-play"></i> Continue</button></span>
                            <span data-placement='top' data-toggle='tooltip' title='Finish'><button class="btn btn-dark"><i class="fa fa-flag-checkered"></i> Finish</button></span>
                        <?php } else if ($statusCargo == 100) { ?>
                            <button type="button" class="btn btn-dark" data-toggle="modal" data-target="#"><i class="fa fa-power-off"></i> Start</button>
                            <span data-placement='top' data-toggle='tooltip' title='Stop'><button class="btn btn-dark"><i class="fa fa-pause"></i> Stop</button></span>
                            <span data-placement='top' data-toggle='tooltip' title='Continue'><button class="btn btn-dark"><i class="fa fa-play"></i> Continue</button></span>
                            <span data-placement='top' data-toggle="modal" data-target="#finish" title='Finish'><button class="btn btn-primary"><i class="fa fa-flag-checkered"></i> Finish</button></span>
                        <?php } else if (is_null($start)) { ?>
                            <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#exampleModal"><i class="fa fa-power-off"></i> Start</button>
                            <span data-placement='top' data-toggle='tooltip' title='Stop'><button class="btn btn-dark"><i class="fa fa-pause"></i> Stop</button></span>
                            <span data-placement='top' data-toggle='tooltip' title='Continue'><button class="btn btn-dark"><i class="fa fa-play"></i> Continue</button></span>
                            <span data-placement='top' data-toggle='tooltip' title='Finish'><button class="btn btn-dark"><i class="fa fa-flag-checkered"></i> Finish</button></span>
                        <?php } else { ?>
                            <button type="button" class="btn btn-dark" data-toggle="modal" data-target="#"><i class="fa fa-power-off"></i> Start</button>
                            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#stop"><i class="fa fa-pause"></i> Stop</button>
                            <span data-placement='top' data-toggle='tooltip' title='Continue'><button class="btn btn-dark"><i class="fa fa-play"></i> Continue</button></span>
                            <span data-placement='top' data-toggle='tooltip' title='Finish'><button class="btn btn-dark"><i class="fa fa-flag-checkered"></i> Finish</button></span>
                        <?php } ?>
                    </div>

                    <!-- Button trigger modal -->

                    <!-- Modal Mulai-->
                    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h3 class="modal-title" id="exampleModalLabel">Konfirmasi</h3>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <h4>Apa anda yakin ingin memulai kegiatan sekarang ?</h4>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>
                                    <a href="mulai_kegiatan.php?id=<?= $idJoborder; ?>"><button type="button" class="btn btn-primary">Ya</button></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- akhir modul mulai -->

                    <!-- Modal Stop-->
                    <div id="stop" class="modal fade" role="dialog">
                        <div class="modal-dialog">
                            <!-- konten modal-->
                            <div class="modal-content">
                                <!-- heading modal -->
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title">Menghentikan Kegiatan </h4>
                                </div>
                                <!-- body modal -->
                                <div class="modal-body">
                                    <form method="post" enctype="multipart/form-data" action="stop_joborder.php" class="form-horizontal">
                                        <div class="box-body">
                                            <div class="form-group ">
                                                <div class="col-sm-4">
                                                    <input type="hidden" value="<?= $idJoborder; ?>" class="form-control" name="id_joborder" readonly>
                                                </div>
                                            </div>
                                            <div class="mb-3">
                                                <label for="validationTextarea">Alasan Pemberhentian : </label>
                                                <textarea rows="8" class="form-control is-invalid" name="alasan" id="validationTextarea" required placeholder="Contoh : Berhenti karena jam istirahat"></textarea>
                                                <div class="invalid-feedback">
                                                    Please enter a message in the textarea.
                                                </div>
                                            </div>
                                            <div class=" modal-footer">
                                                <button class="btn btn-success" type="submit" name="simpan">Stop</button></span></a>
                                                &nbsp;
                                                <input type="reset" class="btn btn-danger" data-dismiss="modal" value="Batal">
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- akhir modal stop -->

                    <!-- Modal Continue-->
                    <div class="modal fade" id="continue" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h3 class="modal-title" id="exampleModalLabel">Konfirmasi</h3>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <h4>Apa anda yakin ingin melanjutkan kegiatan sekarang ?</h4>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>
                                    <a href="continue_kegiatan.php?id=<?= $idJoborder; ?>"><button type="button" class="btn btn-primary">Ya</button></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- akhir modul continue -->

                    <!-- Modal finish-->
                    <div class="modal fade" id="finish" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h3 class="modal-title" id="exampleModalLabel">Konfirmasi</h3>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <h4>Apa anda yakin ingin mengakhiri kegiatan sekarang ?</h4>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>
                                    <a href="finish_kegiatan.php?id=<?= $idJoborder; ?>"><button type="button" class="btn btn-primary">Ya</button></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- akhir modul finish -->


                    <br>

                    <?php if (!is_null($start)) { ?>
                        <!-- Tombol untuk menampilkan modal-->
                        <button type="button" class="btn btn-info col-sm-offset-" data-toggle="modal" data-target="#myModal">Tambah Cargo</button>
                        <br><br>
                        <h4>Mulai Kegiatan : <?= $mulai_kegiatan ?></h4>
                        <br>
                    <?php } ?>


                </div>

                <div class="table-responsive">
                    <table class="table text-center table table-striped table-hover" id="material">
                        <thead>
                            <tr>
                                <th>No </th>
                                <th>Doc No./ Police</th>
                                <th>Description</th>
                                <th>Quantity</th>
                                <th>Satuan</th>
                                <th>M<sup>3</sup></th>
                                <th>Ton</th>
                                <th>RevTon</th>
                                <th>Remarks</th>
                                <th>Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            $no = 1;
                            if (mysqli_num_rows($queryView)) {
                                while ($row = mysqli_fetch_assoc($queryView)) :
                                    if ($row['row_version'] == '2') { ?>
                                        <tr style='background-color:#00FF7F' ;>
                                        <?php } else if ($row['row_version'] == '3') { ?>
                                        <tr style='background-color:#FF0000' ;>
                                        <?php } else { ?>
                                        <tr>
                                        <?php } ?>
                                        <td> <?= $no; ?> </td>
                                        <td> <?= $row['doc_no']; ?> </td>
                                        <td> <?= $row['rincian_cargo']; ?> </td>
                                        <td> <?= $row['qty_cargo']; ?> </td>
                                        <td> <?= $row['satuan_jenis']; ?> </td>
                                        <td> <?= $row['m3_cargo']; ?> </td>
                                        <td> <?= $row['ton_cargo']; ?> </td>
                                        <td> <?= $row['revton_cargo']; ?> </td>
                                        <td> <?= $row['remarks_cargo']; ?> </td>
                                        <td>
                                            <?php if ($row2['status_jo'] == '3') { ?>
                                                <font size="1" color="red"><b>Klik Tombol <br>Continue terlebih dahulu untuk <br>melanjutkan pekerjaan</b></font>
                                            <?php } else if (is_null($start)) { ?>
                                                Klik Tombol Start terlebih dahulu
                                            <?php } else { ?>
                                                <form method="post" name="form" enctype="multipart/form-data" action="add_jv.php" class="form-horizontal">
                                                    <input type="hidden" id="id_joborder" name="id_joborder" value="<?= $idJoborder ?>">
                                                    <input type="hidden" id="id_cargo" name="id_cargo" value="<?= $row['id_cargo']; ?>">
                                                    <input type="number" min="0" max="<?= $row['qty_cargo']; ?>" style="width: 75px;" required class="form-control col-sm-" placeholder="<?= $row['qty_cargo']; ?> " name="qty_as">
                                                    <?php if ($kegiatan == 'Offloading') { ?>
                                                        <select id="keterangan" name="keterangan" class="form-control">
                                                            <option value="To Jetty">To Jetty</option>
                                                            <option value="To Yard">To Yard</option>
                                                            <option value="To Trucking">To Trucking</option>
                                                            <option value="To Warehouse">To Warehouse</option>
                                                            <option value="Not Available">Not Available</option>
                                                        </select>
                                                    <?php } else if ($kegiatan == 'Loading') {  ?>
                                                        <select id="keterangan" name="keterangan" class="form-control">
                                                            <option value="From Jetty">From Jetty</option>
                                                            <option value="From Yard">From Yard</option>
                                                            <option value="From Trucking">From Trucking</option>
                                                            <option value="From Warehouse">From Warehouse</option>
                                                            <option value="Not Available">Not Available</option>
                                                        </select>
                                                    <?php } ?>
                                                    <input type="submit" name="update" class="btn btn-success  " value="Update" onclick="javascript: return confirm('Konfirmasi Update ?')">
                                                    <button type="button" class="btn btn-warning tampilModalUbah" data-toggle="modal" data-target="#modal-edit" data-id="<?= $row['id_cargo']; ?>">Edit</button>
                                                </form>

                                            <?php } ?>

                                        </td>


                                        </tr>
                                <?php
                                    $no++;
                                endwhile;
                            } ?>
                        </tbody>
                    </table>
                </div>

                <?php

                // query booking cargo
                $queryBc =  mysqli_query($koneksi, "SELECT sum(m3_cargo) as booking_cargo FROM detail_joborder WHERE id_joborder='$idJoborder' AND status_cargo=1");
                $rowBc = mysqli_fetch_assoc($queryBc);
                $Bc = $rowBc['booking_cargo'];

                // -- query addtional_cargo
                $queryAc =  mysqli_query($koneksi, "SELECT sum(m3_cargo) as addtional_cargo FROM detail_joborder WHERE id_joborder='$idJoborder' AND status_cargo=2 or status_cargo=3");
                $rowAc = mysqli_fetch_assoc($queryAc);
                $Ac = $rowAc['addtional_cargo'];

                // query na_cargo
                $queryNc =  mysqli_query($koneksi, "SELECT sum(m3_cargo) as na_cargo FROM detail_joborder WHERE id_joborder='$idJoborder' AND cargo_final=2");
                $rowNc = mysqli_fetch_assoc($queryNc);
                $Nc = $rowNc['na_cargo'];

                // query progres_cargo
                $queryPc =  mysqli_query($koneksi, "SELECT sum(m3_cargo) as progres_cargo FROM detail_joborder WHERE id_joborder='$idJoborder' AND cargo_final='1'");
                $rowPc = mysqli_fetch_assoc($queryPc);
                $Pc = $rowPc['progres_cargo'];

                $statusCargo = @($Pc / ($Bc + $Ac - $Nc) * 100);


                if ($statusCargo == 100) { ?>
                    <button type="button" class="btn btn-success col-sm-offset-10 " data-toggle="modal" data-target="#modal-complete">Complete</button>
                    <!-- <a href="complete_cargo.php?id_joborder=<?= $idJoborder ?>"><button type="button" class="btn btn-success col-sm-offset-11" >Complete</button></a> -->
                <?php } else { ?>
                    <!-- <button type="button" class="btn btn-warning col-sm-offset-1 " data-toggle="modal" data-target="#modal-continue" >Continue</button> -->
                <?php }  ?>



                <br>
                <br>
                <!-- </div> -->

                <!-- Modal Tambah Cargo-->
                <div id="myModal" class="modal fade" role="dialog">
                    <div class="modal-dialog">
                        <!-- konten modal-->
                        <div class="modal-content">
                            <!-- heading modal -->
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <h4 class="modal-title">Tambah Cargo</h4>
                            </div>
                            <!-- body modal -->
                            <div class="modal-body">
                                <form method="post" name="form" enctype="multipart/form-data" action="add_cargo.php" class="form-horizontal">
                                    <div class="box-body">
                                        <input type="hidden" id="id_joborder" name="id_joborder" value="<?= $idJoborder ?>">
                                        <input type="hidden" value="<?= $kode_otomatis ?>" class="form-control" name="id_cargo" readonly>
                                        <div class="form-group ">
                                            <label for="jenis" class="col-sm-offset-1 col-sm-3 control-label">Jenis Barang</label>
                                            <div class="col-sm-5">
                                                <select id="id_jenis" name="id_jenis" class="form-control">
                                                    <option value="NULL">--Pilih Jenis--</option>
                                                    <?php
                                                    $queryJB = mysqli_query($koneksi, "SELECT * FROM jenis_barang ORDER BY  nm_jenis  ASC ");
                                                    if (mysqli_num_rows($queryJB)) {
                                                        while ($rowJB = mysqli_fetch_assoc($queryJB)) :
                                                    ?>
                                                            <option value="<?= $rowJB['id_jenis']; ?>" type="checkbox"><?= $rowJB['nm_jenis']; ?></option>
                                                    <?php endwhile;
                                                    } ?>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="doc_no" class="col-sm-offset-1 col-sm-3 control-label">Doc No.</label>
                                            <div class="col-sm-5">
                                                <input type="text" required class="form-control" placeholder="Nomor Cargo" name="doc_no">
                                            </div>
                                        </div>
                                        <div class="form-group ">
                                            <label for="rincian_cargo" class="col-sm-offset-1 col-sm-3 control-label">Description</label>
                                            <div class="col-sm-8">
                                                <textarea type="text" required class="form-control" name="rincian_cargo" placeholder="Deskripsi Barang"></textarea>
                                            </div>
                                        </div>
                                        <div class="form-group ">
                                            <label for="qty_cargo" class="col-sm-offset-1 col-sm-3 control-label">Quantity</label>
                                            <div class="col-sm-5">
                                                <input type="number" min="0" required class="form-control" name="qty_cargo">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label id="tes" for="ton_cargo" class="col-sm-offset-1 col-sm-3 control-label">Ton</label>
                                            <div class="col-sm-5">
                                                <input type="number" min="0" required class="form-control " name="ton_cargo" step="any">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label id="tes" for="remarks_cargo" class="col-sm-offset-1 col-sm-3 control-label">Keterangan</label>
                                            <div class="col-sm-5">
                                                <input type="text" required class="form-control" name="remarks_cargo" placeholder="Pemilik Barang">
                                            </div>
                                        </div>
                                        <div class=" modal-footer">
                                            <input type="submit" name="simpan" class="btn btn-primary col-sm-offset-1 " value="Tambah">
                                            &nbsp;
                                            <input type="reset" class="btn btn-danger" data-dismiss="modal" value="Batal">
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Akhir Modal Tambah Cargo -->

                <!-- Modal Tambah Cargo-->
                <div id="myModa" class="modal fade" role="dialog">
                    <div class="modal-dialog">
                        <!-- konten modal-->
                        <div class="modal-content">
                            <!-- heading modal -->
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <h4 class="modal-title">Tambah Cargo</h4>
                            </div>
                            <!-- body modal -->
                        </div>
                        <div class="form-group">
                            <label id="tes" for="ton_cargo" class="col-sm-offset-1 col-sm-3 control-label">Ton</label>
                            <div class="col-sm-5">
                                <input type="number" required class="form-control " name="ton_cargo" step="any">
                            </div>
                        </div>
                        <div class="form-group">
                            <label id="tes" for="remarks_cargo" class="col-sm-offset-1 col-sm-3 control-label">Keterangan</label>
                            <div class="col-sm-5">
                                <input type="text" required class="form-control" name="remarks_cargo" placeholder="Pemilik Barang">
                            </div>
                        </div>
                        <div class=" modal-footer">

                            <button type="submit" name="simpan" class="btn btn-primary col-sm-offset-1 " value="Tambah">
                                &nbsp;
                                <input type="reset" class="btn btn-danger" data-dismiss="modal" value="Batal">
                        </div>
                    </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- Akhir Modal -->

    <!-- Modal Edit Cargo-->
    <div id="modal-edit" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <!-- konten modal-->
            <div class="modal-content">
                <!-- heading modal -->
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Edit Cargo</h4>
                </div>
                <!-- body modal -->
                <div class="modal-body">
                    <form method="post" name="form" enctype="multipart/form-data" action="" class="form-horizontal">
                        <div class="box-body">
                            <input type="hidden" name="id_job" id="id_job">
                            <input type="hidden" name="id_car" id="id_car">
                            <div class="form-group">
                                <label for="doc_no" class="col-sm-offset-1 col-sm-3 control-label">Jenis Barang</label>
                                <div class="col-sm-5">
                                    <input type="text" required class="form-control" name="nm_jenis" id="nm_jenis">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="doc_no" class="col-sm-offset-1 col-sm-3 control-label">Doc No.</label>
                                <div class="col-sm-5">
                                    <input type="text" required class="form-control" placeholder="Nomor Cargo" name="doc_no" id="doc_no">
                                </div>
                            </div>
                            <div class="form-group ">
                                <label for="rincian_cargo" class="col-sm-offset-1 col-sm-3 control-label">Description</label>
                                <div class="col-sm-8">
                                    <textarea type="text" required class="form-control" name="rincian_cargo" id="rincian_cargo"></textarea>
                                </div>
                            </div>
                            <div class="form-group ">
                                <label for="qty_cargo" class="col-sm-offset-1 col-sm-3 control-label">Quantity</label>
                                <div class="col-sm-5">
                                    <input type="number" required class="form-control" name="qty_cargo" id="qty_cargo">
                                </div>
                            </div>
                            <div class="form-group">
                                <label id="tes" for="ton_cargo" class="col-sm-offset-1 col-sm-3 control-label">M<sup>3</sup></label>
                                <div class="col-sm-5">
                                    <input type="number" required class="form-control " name="m3_cargo" id="m3_cargo" step="any">
                                </div>
                            </div>
                            <div class="form-group">
                                <label id="tes" for="ton_cargo" class="col-sm-offset-1 col-sm-3 control-label">Ton</label>
                                <div class="col-sm-5">
                                    <input type="number" min="0" required class="form-control " name="ton_cargo" id="ton_cargo" step="any">
                                </div>
                            </div>
                            <div class="form-group">
                                <label id="tes" for="remarks_cargo" class="col-sm-offset-1 col-sm-3 control-label">Keterangan</label>
                                <div class="col-sm-5">
                                    <input type="text" required class="form-control" name="remarks_cargo" id="remarks_cargo">
                                </div>
                            </div>
                            <div class=" modal-footer">
                                <input type="submit" name="simpan" class="btn btn-warning col-sm-offset-1 " value="Edit">
                                &nbsp;
                                <input type="reset" class="btn btn-danger" data-dismiss="modal" value="Batal">
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- Akhir Modal -->

    </div>
    </div>
    </div>
</section>
<?php
$host = host();

?>

<script>
    var host = '<?= $host ?>';

    $(function() {
        $("#material").DataTable({
            "language": {
                "url": "http://cdn.datatables.net/plug-ins/1.10.9/i18n/Indonesian.json",
                "sEmptyTable": "Tidak ada data di database"
            }
        });
    });

    $(function() {
        $('.tampilModalUbah').on('click', function() {

            $('.modal-title').html('Edit Data Cargo');
            $('.modal-body form').attr('action', host + 'checker/ubahcargo.php')


            $("#doc_no").prop("readonly", true);
            $("#nm_jenis").prop("readonly", true);
            $("#qty_cargo").prop("readonly", true);
            $("#remarks_cargo").prop("readonly", true);
            $("#rincian_cargo").prop("readonly", true);
            $("#m3_cargo").prop("readonly", true);


            const id = $(this).data('id');

            // console.log(id);

            $.ajax({
                url: host + 'checker/getubahcargo.php',
                data: {
                    id: id
                },
                method: 'post',
                dataType: 'json',
                success: function(data) {
                    // console.log(data);                     
                    $('#id_car').val(data.id_cargo);
                    $('#id_job').val(data.id_joborder);
                    $('#nm_jenis').val(data.nm_jenis);
                    $('#doc_no').val(data.doc_no);
                    $('#rincian_cargo').val(data.rincian_cargo);
                    $('#qty_cargo').val(data.qty_cargo);
                    $('#m3_cargo').val(data.m3_cargo);
                    $('#ton_cargo').val(data.ton_cargo);
                    $('#remarks_cargo').val(data.remarks_cargo);
                }
            });

        });
    });
</script>