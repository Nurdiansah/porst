<?php

include "../fungsi/koneksi.php";
include "../fungsi/fungsi.php";

$id = $_GET['id'];


$query = mysqli_query($koneksi, "SELECT * FROM detail_joborder WHERE id_joborder='$id' ORDER BY tgl_cargo ASC ");
$query2 = mysqli_query($koneksi, "SELECT * FROM job_order jo
                                               JOIN client c
                                               ON c.id_client = jo.id_client 
                                                WHERE jo.id_joborder='$id' ");
$row2 = mysqli_fetch_assoc($query2);
$idJoborder = $row2['id_joborder'];
$kegiatan = $row2['nm_kegiatan'];
$statusJo = $row2['status_jo'];
$mulai_kegiatan = $row2['mulai_kegiatan'];
$mulai_kegiatan = date("d-F-Y H:i:s", strtotime($row2['mulai_kegiatan']));
$finish_kegiatan = date("d-F-Y H:i:s", strtotime($row2['finish_kegiatan']));

$queryView = mysqli_query($koneksi, "SELECT d.doc_no, d.qty_cargo, j.satuan_jenis, j.nm_jenis, d.rincian_cargo, 
                                        d.m3_cargo, d.ton_cargo, d.revton_cargo, d.remarks_cargo, d.cargo_final
                                        FROM detail_joborder d
                                        JOIN jenis_barang j
                                        ON j.id_jenis = d.id_jenis
                                        WHERE id_joborder = '$id' ");

$queryActual = mysqli_query($koneksi, "SELECT * 
                                           FROM actual_stevedoring a 
                                           JOIN jenis_barang j
                                           ON j.id_jenis = a.id_jenis
                                           WHERE a.id_joborder='$id' ORDER BY time_as ASC ");

$queryTimeline = mysqli_query($koneksi, "SELECT * FROM timeline_joborder WHERE id_joborder='$idJoborder' ORDER BY id_timeline ASC ");


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
                <div class="box-header with-border">
                    <div class="progress">
                        <div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width:<?= $statusCargo ?>%">
                            Progres <?= $statusCargo ?>%
                        </div>
                    </div>
                </div>

                <div class="box-header with-border">
                    <div class="col-sm-offset-">
                        <button class="btn btn-warning " type="button" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
                            Detail Job Order
                        </button>
                        <button class="btn btn-danger" type="button" data-toggle="collapse" data-target="#timeline" aria-expanded="false" aria-controls="collapseExample">
                            Timeline
                        </button>
                        <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#cargo" aria-expanded="false" aria-controls="collapseExample">
                            Detail Progress Cargo
                        </button>
                        <a target="_blank" href="cetak_jobreportvessel.php?id=<?= $idJoborder; ?>" class="btn btn-default"><i class="fa fa-print"></i> Job Report </a>
                        <a target="_blank" href="../assets/tcpdf/cetak_tallysheetvessel.php?id=<?= $idJoborder; ?>" class="btn btn-success"><i class="fa fa-print"></i> Tally Sheet </a>
                        <a target="_blank" href="cetak_timesheetvessel.php?id=<?= $idJoborder; ?>" class="btn btn-success"><i class="fa fa-print"></i> Time Sheet </a>
                    </div>
                </div>

                <!-- Modal stf-->
                <div class="modal fade" id="stf" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h3 class="modal-title" id="exampleModalLabel">Konfirmasi</h3>
                                </button>
                            </div>
                            <div class="modal-body">
                                <h4>Apa anda yakin ingin mengirim ke bagian Finance ?</h4>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>
                                <a href="add_stf.php?id=<?= $idJoborder; ?>"><button type="button" class="btn btn-primary">Ya</button></a>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- akhir modul stf -->

                <div class="collapse in" id="collapseExample">

                    <!-- Detail Job Order -->
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
                <!-- akhir detail joborder -->

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

                                if ($jam == 0) { ?>
                                    <tr style="background-color : #8FBC8F ;">
                                        <td colspan="4"><b>Total Waktu Jeda</b></td>
                                        <td><b><?= $menit . ' menit'; ?></b></td>
                                    </tr>
                                <?php } else { ?>
                                    <tr style="background-color : #8FBC8F ;">
                                        <td colspan="4"><b>Total Waktu Jeda</b></td>
                                        <td><b><?= $jam . ' jam ', $menit . ' menit'; ?></b></td>
                                    </tr>
                                <?php } ?>
                            </tbody>
                        </table>
                    </div>
                </div>
                <!-- akhir timeline  -->

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
                                    <th>Quantity</th>
                                    <th>Satuan</th>
                                    <th>Description</th>
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
                                            <tr style='background-color:#5F9EA0' ;>
                                            <?php } else { ?>
                                            <tr>
                                            <?php } ?>
                                            <td> <?= $no; ?> </td>
                                            <td> <?= $rowAct['time_as']; ?> </td>
                                            <td> <?= $rowAct['doc_no_as']; ?> </td>
                                            <td> <?= $rowAct['qty_as']; ?> </td>
                                            <td> <?= $rowAct['satuan_jenis']; ?> </td>
                                            <td> <?= $rowAct['rincian_cargo']; ?> </td>
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


            </div>

            <br>
            <br>

            <br>
            <br>
            <div class="col-sm-offset-9 col-sm-3 control-label">
                <h4> Konfirmasi Job Order </h4>
                <a href="setuju_joborder.php?id=<?= $row2['id_joborder']; ?>"><span data-placement='top' data-toggle='tooltip' title='Setujui'><button class="btn btn-success">Setujui</button></span></a>
                <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#tolak">Tidak Setuju</button></span></a>
            </div>


            <div id="tolak" class="modal fade" role="dialog">
                <div class="modal-dialog">
                    <!-- konten modal-->
                    <div class="modal-content">
                        <!-- heading modal -->
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">Alasan Penolakan </h4>
                        </div>
                        <!-- body modal -->
                        <div class="modal-body">
                            <form method="post" enctype="multipart/form-data" action="tolak_joborder.php" class="form-horizontal">
                                <div class="box-body">
                                    <div class="form-group ">

                                        <div class="col-sm-4">
                                            <input type="hidden" value="<?= $row2['id_joborder']; ?>" class="form-control" name="id_joborder" readonly>
                                        </div>
                                    </div>

                                    <div class="mb-3">
                                        <label for="validationTextarea">Komentar</label>
                                        <textarea rows="8" class="form-control is-invalid" name="komentar" id="validationTextarea" required>@<?php echo $Nama ?> : </textarea>
                                        <div class="invalid-feedback">
                                            Please enter a message in the textarea.
                                        </div>
                                    </div>
                                    <div class=" modal-footer">
                                        <button class="btn btn-success" type="submit" name="simpan">Kirim</button></span></a>

                                        &nbsp;
                                        <input type="reset" class="btn btn-danger" data-dismiss="modal" value="Batal">
                                    </div>
                                </div>
                            </form>
                        </div>
                        <!-- </div> -->
                    </div>
                </div>
            </div>
        </div>
</section>

<script>
    $(document).ready(function() {
        $('.tanggal').datepicker({
            format: "yyyy-mm-dd",
            autoclose: true
        });
    });


    // script upload file

    function bs_input_file() {
        $(".input-file").before(
            function() {
                if (!$(this).prev().hasClass('input-ghost')) {
                    var element = $("<input type='file' class='input-ghost' style='visibility:hidden; height:0'>");
                    element.attr("name", $(this).attr("name"));
                    element.change(function() {
                        element.next(element).find('input').val((element.val()).split('\\').pop());
                    });
                    $(this).find("button.btn-choose").click(function() {
                        element.click();
                    });
                    $(this).find("button.btn-reset").click(function() {
                        element.val(null);
                        $(this).parents(".input-file").find('input').val('');
                    });
                    $(this).find('input').css("cursor", "pointer");
                    $(this).find('input').mousedown(function() {
                        $(this).parents('.input-file').prev().click();
                        return false;
                    });
                    return element;
                }
            }
        );
    }
    $(function() {
        bs_input_file();
    });
</script>