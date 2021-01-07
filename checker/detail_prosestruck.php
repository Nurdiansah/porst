<?php
include "../fungsi/koneksi.php";
include "../fungsi/fungsi.php";

if (!isset($_GET['id'])) {
    header("location:../index.php");
}

if (isset($_GET['aksi']) && isset($_GET['id_djotruck'])) {
    //die($id = $_GET['id']);
    $id_djotruck = base64_decode($_GET['id_djotruck']);

    if ($_GET['aksi'] == 'edit') {
        // header("location:?p=edituser&id=$id");
    } else if ($_GET['aksi'] == 'hapus') {
        $queryHapus = mysqli_query($koneksi, "UPDATE detail_jobordertruck SET qty_cargo='0' WHERE id_djotruck='$id_djotruck' ");
        if ($queryHapus) {
            $_SESSION['pesan'] = '<div id="pesan" class="alert alert-danger " ><b> Cargo Berhasil di Hapus !</b></div>';
        } else {
            echo 'gagal';
        }
    }
}

$id = $_GET['id'];
$id = base64_decode($id);

$query = mysqli_query($koneksi, "SELECT * FROM job_ordertruck jo
                                              JOIN alat_berat a
                                              ON a.id_alatberat = jo.id_alatberat 
                                              JOIN client c
                                              ON c.id_client = jo.id_client
                                              WHERE jo.id_jobordertruck = '$id'
                                              ");
$row = mysqli_fetch_assoc($query);
$start = $row['mulai_kegiatan'];


$queryDetail = mysqli_query($koneksi, "SELECT * FROM detail_jobordertruck WHERE id_jobordertruck = '$id' AND qty_cargo >0 ");

$queryJ = mysqli_query($koneksi, "SELECT count(id_djotruck) AS jumlah FROM detail_jobordertruck WHERE id_jobordertruck = '$id' AND qty_cargo >0 ");
$rowJumlah = mysqli_fetch_assoc($queryJ);
$jumlah = $rowJumlah['jumlah'];

$queryActual = mysqli_query($koneksi, "SELECT *  FROM actual_jobordertruck WHERE id_jobordertruck='$id' ORDER BY time_at ASC ");

// Konfirmasi
$queryK = mysqli_query($koneksi, "SELECT nm_company_at, nm_barang_at, satuan_cargo_at,sum(qty_cargo_at) AS qty_cargo_at, sum(volume_cargo_at) AS volume_cargo_at, sum(ton_cargo_at) AS ton_cargo_at,sum(revton_cargo_at) AS revton_cargo_at FROM actual_jobordertruck WHERE id_jobordertruck='$id' GROUP BY id_djotruck ASC ");

$queryJA = mysqli_query($koneksi, "SELECT count(id_at) AS jumlah FROM actual_jobordertruck WHERE id_jobordertruck = '$id'");
$rowJumlahActual = mysqli_fetch_assoc($queryJA);
$jumlahActual = $rowJumlahActual['jumlah'];
?>

<!-- Main content -->
<section class="content">
    <!-- Small boxes (Stat box) -->
    <div class="row">
        <div class="col-sm-12">
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="text-center">Update Loading/Offloading Truck</h3>
                </div>
                <div class="box-body">
                    <!-- Head -->
                    <div class="row">
                        <label for="id_joborder" class=" col-sm-2 control-label">ID Job Order</label>
                        <div class="col-sm-3">
                            <input type="text" value="<?= $row['kode_lotruck']; ?>" readonly class="form-control" name="id_joborder">
                        </div>
                        <label id="tes" for="client" class="col-sm-1 col-sm-offset-3 control-label">Client</label>
                        <div class="col-sm-3">
                            <input type="text" value="<?= $row['nm_client']; ?>" readonly class="form-control" name="client">
                        </div>
                    </div>
                    <br>
                    <div class="row">
                        <label id="tes" for="nm_kapal" class=" col-sm-2 control-label">Alat Berat</label>
                        <div class="col-sm-3">
                            <input type="text" value="<?= $row['nm_alatberat']; ?>" readonly class="form-control" name="nm_kapal">
                        </div>
                        <label id="tes" for="client" class="col-sm-1 col-sm-offset-3 control-label">Tanggal</label>
                        <div class="col-sm-3">
                            <input type="text" value="<?= tanggal($row['created_on']); ?>" readonly class="form-control" name="client">
                        </div>
                    </div>
                    <br>
                    <div class="row">
                        <div class="col-md-5">
                            <button type="button" class="btn btn-primary col-sm-offset- modalTambah" data-toggle="modal" data-target="#myModal"><i class="fa fa-plus-square"></i> Add Cargo </button>
                            <?php if ($jumlahActual >= 1) {  ?>
                                <button class="btn btn-success col-sm-offset-" type="button" data-toggle="collapse" data-target="#cargo" aria-expanded="false" aria-controls="collapseExample">
                                    Progres Cargo
                                </button>
                            <?php } ?>
                        </div>
                        <br><br>
                    </div>

                    <!-- Progress Cargo  -->

                    <div class="collapse" id="cargo">
                        <hr>
                        <h3 class="text-center">Progress Cargo</h3>
                        <hr>
                        <div class="table-responsive">
                            <table class="table text-center table table-striped table-hover" id="">
                                <thead>
                                    <tr>
                                        <th>No </th>
                                        <th>Time</th>
                                        <th>Vendor</th>
                                        <th>Nama Barang</th>
                                        <th>Quantity</th>
                                        <th>Satuan</th>
                                        <th>M<sup>3</sup></th>
                                        <th>Ton</th>
                                        <th>RevTon</th>
                                        <th>Keterangan</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    $no = 1;
                                    if (mysqli_num_rows($queryActual)) {
                                        while ($rowAct = mysqli_fetch_assoc($queryActual)) : ?>
                                            <td> <?= $no; ?> </td>
                                            <td> <?= $rowAct['time_at']; ?> </td>
                                            <td> <?= $rowAct['nm_company_at']; ?> </td>
                                            <td> <?= $rowAct['nm_barang_at']; ?> </td>
                                            <td> <?= $rowAct['qty_cargo_at']; ?> </td>
                                            <td> <?= $rowAct['satuan_cargo_at']; ?> </td>
                                            <td> <?= $rowAct['volume_cargo_at']; ?> </td>
                                            <td> <?= $rowAct['ton_cargo_at']; ?> </td>
                                            <td> <?= $rowAct['revton_cargo_at']; ?> </td>
                                            <td> <?= $rowAct['keterangan_at']; ?> </td>
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

                    <?php

                    $jam = jamSekarang();

                    ?>

                    <div class="col-sm-offset-8">
                        <!-- Button ketika pekerjaan belum di mulai -->
                        <?php if (is_null($start)) { ?>
                            <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#modalStart"><i class="fa fa-power-off"></i> Start</button>
                            <span data-placement='top' data-toggle='tooltip' title='Stop'><button class="btn btn-dark"><i class="fa fa-pause"></i> Stop</button></span>
                            <span data-placement='top' data-toggle='tooltip' title='Continue'><button class="btn btn-dark"><i class="fa fa-play"></i> Continue</button></span>
                            <span data-placement='top' data-toggle='tooltip' title='Finish'><button class="btn btn-dark"><i class="fa fa-flag-checkered"></i> Finish</button></span>
                            <!-- Button Ketika Istirahat -->
                        <?php } else if ($row['status_jotruck'] == '2') { ?>
                            <button type="button" class="btn btn-dark" data-toggle="modal"><i class="fa fa-power-off"></i> Start</button>
                            <span data-placement='top' data-toggle='tooltip' title='Stop'><button class="btn btn-dark"><i class="fa fa-pause"></i> Stop</button></span>
                            <span data-placement='top' data-toggle="modal" data-target="#modalContinue" title='Continue'><button class="btn btn-primary"><i class="fa fa-play"></i> Continue</button></span>
                            <span data-placement='top' data-toggle='tooltip' title='Finish'><button class="btn btn-dark"><i class="fa fa-flag-checkered"></i> Finish</button></span>
                            <!-- Button Ketika Cargo Habis -->
                        <?php } else if ($jumlah == 0) { ?>
                            <button type="button" class="btn btn-dark" data-toggle="modal"><i class="fa fa-power-off"></i> Start</button>
                            <button type="button" class="btn btn-primary modalStop" data-toggle="modal" data-target="#modalStop"><i class="fa fa-pause"></i> Stop</button>
                            <span data-placement='top' data-toggle='tooltip' title='Continue'><button class="btn btn-dark"><i class="fa fa-play"></i> Continue</button></span>
                            <?php if ($jam >= 15) { ?>
                                <span data-placement='top' data-toggle="modal" data-target="#modalFinish" title='Finish'><button class="btn btn-primary"><i class="fa fa-flag-checkered"></i> Finish</button></span>
                            <?php } else { ?>
                                <span data-placement='top' data-toggle="modal" title='Finish'><button class="btn btn-dark"><i class="fa fa-flag-checkered"></i> Finish</button></span>
                            <?php } ?>
                            <!-- Button Ketika Proggres Pekerjaan -->
                        <?php } else { ?>
                            <button type="button" class="btn btn-dark" data-toggle="modal"><i class="fa fa-power-off"></i> Start</button>
                            <button type="button" class="btn btn-primary modalStop" data-toggle="modal" data-target="#modalStop"><i class="fa fa-pause"></i> Stop</button>
                            <span data-placement='top' data-toggle='tooltip' title='Continue'><button class="btn btn-dark"><i class="fa fa-play"></i> Continue</button></span>
                            <span data-placement='top' data-toggle='tooltip' title='Finish'><button class="btn btn-dark"><i class="fa fa-flag-checkered"></i> Finish</button></span>
                        <?php } ?>

                    </div>
                    <br>
                    <?php if (is_null($start)) { ?>
                        <div class="alert alert-success" role="alert">
                            <b>Klik tombol add cargo untuk menambahkan cargo dan klik tombol start untuk memulai pekerjaan</b>
                        </div>
                    <?php } else if ($row['status_jotruck'] == '2') { ?>
                        <div class="alert alert-danger" role="alert">
                            <b>Klik tombol continue untuk melanjutkan pekerjaan</b>
                        </div>
                    <?php } else if ($jumlah == 0) { ?>
                        <div class="alert alert-warning" role="alert">
                            <b>Klik tombol add cargo untuk menambahkan cargo dan klik tombol finish untuk mengakhiri pekerjaan di hari ini
                                <br>
                                <font color="black">! Tombol Finish akan aktif setelah jam 15:00 Wib</font>
                            </b>
                        </div>
                    <?php } ?>
                    <?php

                    if (isset($_SESSION['pesan']) && $_SESSION['pesan'] <> '') {

                        echo '<br>' . $_SESSION['pesan'];
                    }
                    $_SESSION['pesan'] = '';
                    ?>
                    <!-- Table  -->
                    <div class="table-responsive">
                        <div id="jo_table">
                            <table class="table text-center table-striped table-hover">
                                <thead style="background-color :#B0C4DE;">
                                    <tr>
                                        <th>No</th>
                                        <th>Vendor</th>
                                        <th>Nama Barang</th>
                                        <th>Qty</th>
                                        <th>Satuan</th>
                                        <th>M<sup>3</sup></th>
                                        <th>Ton</th>
                                        <th>RevTon</th>
                                        <th>Update</th>
                                        <th>Aksi</th>>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <?php
                                        $no = 1;
                                        if (mysqli_num_rows($queryDetail)) {
                                            while ($row2 = mysqli_fetch_assoc($queryDetail)) :

                                        ?>
                                                <td> <?= $no; ?> </td>
                                                <td> <?= $row2['nm_company']; ?> </td>
                                                <td> <?= $row2['nm_barang']; ?> </td>
                                                <td> <?= $row2['qty_cargo']; ?> </td>
                                                <td> <?= $row2['satuan_cargo']; ?> </td>
                                                <td> <?= $row2['volume_cargo']; ?> </td>
                                                <td> <?= $row2['ton_cargo']; ?> </td>
                                                <td> <?= $row2['revton_cargo']; ?> </td>
                                                <td>
                                                    <?php if (is_null($start)) { ?>
                                                        <button class="btn btn-default"> Update </button>
                                                    <?php } else if ($row['status_jotruck'] == '2') { ?>
                                                        <button class="btn btn-default"> Update </button>
                                                    <?php } else {  ?>
                                                        <button class="btn btn-info modalUpdate" data-toggle="modal" data-target="#modalUpdate" data-id="<?= $row2['id_djotruck']; ?>"> Update </button>
                                                    <?php } ?>
                                                </td>
                                                <td>
                                                    <button class="btn btn-success modalLihat mb-2" data-toggle="modal" data-target="#myModal" data-id="<?= $row2['id_djotruck']; ?>"> <i class="fa fa-search-plus"></i></button>
                                                    <button class="btn btn-warning modalEdit" data-toggle="modal" data-target="#myModal" data-id="<?= $row2['id_djotruck']; ?>"> <i class="fa fa-edit"></i></button>
                                                    <a href="?p=detail_prosestruck&id=<?= $_GET['id'] ?>&aksi=hapus&id_djotruck=<?= base64_encode($row2['id_djotruck']); ?>" onclick="javascript: return confirm('Anda yakin ingin menghapus <?= $row2['nm_barang']; ?>?')"><span data-placement='top' data-toggle='tooltip' title='Hapus'><button class="btn btn-danger"> <i class="fa fa-trash"></i> </button></span></a>
                                                </td>
                                    </tr>
                            <?php $no++;
                                            endwhile;
                                        } ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <!-- Akhir Table -->

                    <!-- Awal Modal Create -->
                    <div id="myModal" class="modal fade" role="dialog">
                        <div class="modal-dialog">
                            <!-- konten modal-->
                            <div class="modal-content">
                                <!-- heading modal -->
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title">Add Cargo</h4>
                                </div>
                                <!-- body modal -->
                                <div class="modal-body">
                                    <div class="perhitungan">
                                        <form method="post" name="form" id="insert_form" enctype="multipart/form-data" action="" class="form-horizontal">
                                            <div class="box-body">

                                                <input type="hidden" required class="form-control" id="id_jobordertruck" name="id_jobordertruck" value="<?= $id ?>">
                                                <div class="form-group">
                                                    <label for="nm_jenis" class="col-sm-offset-1 col-sm-3 control-label">Vendor</label>
                                                    <div class="col-sm-5">
                                                        <input type="text" required class="form-control" id="nm_company" name="nm_company" placeholder="Vendor">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="nm_barang" class="col-sm-offset-1 col-sm-3 control-label">Nama Barang</label>
                                                    <div class="col-sm-5">
                                                        <input type="text" class="form-control" id="nm_barang" name="nm_barang" placeholder="Nama Barang">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="production" class="col-sm-offset-1 col-sm-3 control-label">Production Drilling</label>
                                                    <div class="col-sm-5">
                                                        <input type="text" class="form-control" id="production" name="production" placeholder="Production">
                                                    </div>
                                                </div>
                                                <div class="form-group ">
                                                    <label for="jenis" class="col-sm-offset-1 col-sm-3 control-label">Loading/Offloading</label>
                                                    <div class="col-sm-5">
                                                        <select id="nm_kegiatan" name="nm_kegiatan" class="form-control" required>
                                                            <option value="OFFLOADING">OFFLOADING</option>
                                                            <option value="LOADING">LOADING</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="nm_jenis" class="col-sm-offset-1 col-sm-3 control-label">PO #</label>
                                                    <div class="col-sm-5">
                                                        <input type="text" required class="form-control" id="no_po" name="no_po">
                                                    </div>
                                                </div>
                                                <hr>
                                                <div class="dimensi">
                                                    <div class="form-group">
                                                        <label for="nm_jenis" id="label-dimensi" class="col-sm-offset-1 col-sm-6 control-label">Dimensi</label>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="p" id="label-panjang" class="col-sm-offset-1 col-sm-3 control-label">Panjang</label>
                                                        <div class="col-sm-5">
                                                            <input type="number" autocomplete="off" required step="any" min="0.01" class="form-control" name="p" id="panjang">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="l" id="label-lebar" class="col-sm-offset-1 col-sm-3 control-label">Lebar</label>
                                                        <div class="col-sm-5">
                                                            <input type="number" autocomplete="off" required step="any" min="0.01" class="form-control" name="l" id="lebar">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="t" id="label-tinggi" class="col-sm-offset-1 col-sm-3 control-label">Tinggi</label>
                                                        <div class="col-sm-5">
                                                            <input type="number" autocomplete="off" required step="any" min="0.01" class="form-control" name="t" id="tinggi">
                                                        </div>
                                                    </div>
                                                    <div class="satuan">
                                                        <div class="form-group">
                                                            <label id="tes" id="label-volume" for="volume_jenis" class="col-sm-offset-1 col-sm-3 control-label">Volume (CBM)</label>
                                                            <div class="col-sm-5 ">
                                                                <input type="text" readonly class="form-control" value="0" id="volume_jenis" name="volume_jenis">
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label id="tes" for="ton_cargo" class="col-sm-offset-1 col-sm-3 control-label">Ton</label>
                                                            <div class="col-sm-5">
                                                                <input type="number" min="0" value="0" required class="form-control " id="ton_cargo" name="ton_cargo" step="any">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <hr>
                                                    <div class="form-group ">
                                                        <label for="qty_cargo" class="col-sm-offset-1 col-sm-3 control-label">Quantity</label>
                                                        <div class="col-sm-5">
                                                            <input type="number" min="1" value="0" required class="form-control" id="qty_cargo" name="qty_cargo">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="total_volume" class="col-sm-offset-1 col-sm-3 control-label">Total Volume</label>
                                                        <div class="col-sm-5 ">
                                                            <input type="text" readonly class="form-control" value="0" id="total_volume" name="total_volume">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="total_ton" class="col-sm-offset-1 col-sm-3 control-label">Total Ton</label>
                                                        <div class="col-sm-5 ">
                                                            <input type="text" readonly class="form-control" value="0" id="total_ton" name="total_ton">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label id="tes" id="" for="" class="col-sm-offset-1 col-sm-3 control-label">RevTon</label>
                                                        <div class="col-sm-5 ">
                                                            <input type="text" readonly class="form-control" value="0" id="revton" name="revton">
                                                        </div>
                                                    </div>
                                                    <div class="form-group ">
                                                        <label for="satuan_jenis" class="col-sm-offset-1 col-sm-3 control-label">Satuan</label>
                                                        <div class="col-sm-5 ">
                                                            <input type="text" class="form-control" id="satuan_jenis" name="satuan_jenis">
                                                        </div>
                                                    </div>
                                                </div>
                                                <hr>
                                                <div class="form-group">
                                                    <label id="tes" for="remarks_cargo" class="col-sm-offset-1 col-sm-3 control-label">Description Of Work</label>
                                                    <div class="col-sm-5">
                                                        <input type="text" required class="form-control" id="deskripsi_cargo" name="deskripsi_cargo" placeholder="Description">
                                                    </div>
                                                </div>
                                                <div class=" modal-footer">
                                                    <input type="submit" id="insert" name="add" class="btn btn-primary col-sm-offset-1 submit" value="Tambah">
                                                    &nbsp;
                                                    <input type="reset" class="btn btn-danger reset" data-dismiss="modal" value="Cancel">
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--  Akhir Modal-->
                    </div>
                </div>
            </div>
</section>

<!-- Modal Mulai-->
<div class="modal fade" id="modalStart" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
                <form action="mulai_kegiatan_lotruck.php" method="post">
                    <input type="hidden" name="id_jobordertruck" value="<?= $row['id_jobordertruck'] ?>">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>
                    <button type="submit" name="submit" class="btn btn-primary">Ya</button>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- akhir modul mulai -->

<!-- Modal Update-->
<div id="modalUpdate" class="modal fade" role="dialog">
    <div class="modal-dialog">
        <!-- konten modal-->
        <div class="modal-content">
            <!-- heading modal -->
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Update Kegiatan </h4>
            </div>
            <!-- body modal -->
            <div class="modal-body">
                <form method="post" enctype="multipart/form-data" action="update_lotruck.php" class="form-horizontal">
                    <div class="box-body">
                        <input type="hidden" value="<?= $id; ?>" class="form-control" name="id_joborder" readonly>
                        <input type="hidden" id="jenis_kegiatan" name="jenis_kegiatan">
                        <input type="hidden" id="id_djotruck_update" name="id_djotruck">
                        <div class="form-group ">
                            <label for="nm_barang" class="col-sm-offset-1 col-sm-3 control-label">Nama Barang</label>
                            <div class="col-sm-5">
                                <input type="text" id="nm_barang_update" name="nm_barang" class="form-control" readonly>
                            </div>
                        </div>
                        <div class="offloading">
                            <div class="form-group ">
                                <label for="keterangan" class="col-sm-offset-1 col-sm-3 control-label">Keterangan</label>
                                <div class="col-sm-5">
                                    <select id="keterangan_offloading" name="keterangan_offloading" class="form-control">
                                        <option value="To Jetty">To Jetty</option>
                                        <option value="To Yard">To Yard</option>
                                        <option value="To Trucking">To Trucking</option>
                                        <option value="To Warehouse">To Warehouse</option>
                                        <option value="Not Available">To Vessel</option>
                                        <option value="Not Available">To Receiving PO</option>
                                        <option value="Not Available">Not Available</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="loading">
                            <div class="form-group ">
                                <label for="keterangan" class="col-sm-offset-1 col-sm-3 control-label">Keterangan</label>
                                <div class="col-sm-5">
                                    <select id="keterangan_loading" name="keterangan_loading" class="form-control">
                                        <option value="From Jetty">From Jetty</option>
                                        <option value="From Yard">From Yard</option>
                                        <option value="From Trucking">From Trucking</option>
                                        <option value="From Warehouse">From Warehouse</option>
                                        <option value="From Warehouse">From Vessel</option>
                                        <option value="Not Available">Not Available</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="form-group ">
                            <label for="qty_cargo" class="col-sm-offset-1 col-sm-3 control-label">Quantity</label>
                            <div class="col-sm-5">
                                <input type="number" min="1" value="1" required class="form-control" id="qty_cargo_update" name="qty_cargo_update" placeholder="<?= $row['qty_cargo']; ?> ">
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button class="btn btn-success" type="submit" name="update">Update</button></span></a>
                            &nbsp;
                            <input type="reset" class="btn btn-danger" data-dismiss="modal" value="cancel">
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- akhir modal Update -->

<!-- Modal Stop-->
<div id="modalStop" class="modal fade" role="dialog">
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
                <form method="post" enctype="multipart/form-data" action="stop_joborder_lotruk.php" class="form-horizontal">
                    <div class="box-body">
                        <input type="hidden" value="<?= $id; ?>" class="form-control" name="id_joborder" readonly>
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
<div class="modal fade" id="modalContinue" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
                <form action="continue_kegiatan_lotruck.php" method="post">
                    <input type="hidden" name="id_jobordertruck" value="<?= $id ?>">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>
                    <button type="submit" name="submit" class="btn btn-primary">Ya</button>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- akhir modul continue -->

<!-- Modal finish-->
<div class="modal fade" id="modalFinish" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title text-center" id="exampleModalLabel">Konfirmasi</h3>
                </button>
            </div>
            <div class="modal-body text-center">
                <h4>Apa anda yakin ingin mengakhiri kegiatan sekarang ?</h4>
            </div>
            <div class="modal-footer">
                <form action="finish_kegiatan_lotruck.php" method="post">
                    <input type="hidden" name="id_jobordertruck" value="<?= $id ?>">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>
                    <button type="submit" name="submit" class="btn btn-primary">Ya</button>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- akhir modul finish -->


<?php
$host = host();

?>

<script>
    var host = '<?= $host ?>';

    var panjanGlobal = 0;
    var lebarGlobal = 0;
    var tinggiGlobal = 0;
    var volumeGlobal = 0;

    $(function() {
        $("#user").DataTable({
            "language": {
                "url": "http://cdn.datatables.net/plug-ins/1.10.9/i18n/Indonesian.json",
                "sEmptyTable": "Tidak ada data di database"
            }
        });
    });

    //function perhitungan
    $(".perhitungan").keyup(function() {

        //ambil inputan panjang
        var panjang = parseFloat($("#panjang").val())

        // ambil inputan lebar
        var lebar = parseFloat($("#lebar").val())

        // ambil inputan tinggi
        var tinggi = parseFloat($("#tinggi").val())

        var vlm = panjang * lebar * tinggi;
        var nvlm = vlm.toFixed(2);
        $("#volume").attr("value", vlm);
        document.form.volume_jenis.value = nvlm;

        var ton_cargo = parseFloat($("#ton_cargo").val())

        var qty_cargo = parseFloat($("#qty_cargo").val())

        if (qty_cargo >= 0) {
            var tvlm = (vlm * qty_cargo).toFixed(2);
            var tvlm2 = (vlm * qty_cargo);
            document.form.total_volume.value = tvlm;

            var tc = (ton_cargo * qty_cargo).toFixed(2);
            var tc2 = (ton_cargo * qty_cargo);
            document.form.total_ton.value = tc;

            if (tc2 > tvlm2) {
                var revton = tc;
                document.form.revton.value = revton;
            } else if (tc2 < tvlm2) {
                var revton = tvlm;
                document.form.revton.value = revton;
            }

        }


    });

    // Modal Tambah
    $(function() {
        $('.modalTambah').on('click', function() {

            $('.modal-title').html('Add Cargo');
            $('.modal-footer input[type=reset]').val('Cancel');
            $(".submit").show();
            $(".satuan").show();

            $('.submit').val('Create');

            // delete data.nm_company;

            $("#nm_company").prop("readonly", false);
            $("#nm_barang").prop("readonly", false);
            $("#production").prop("readonly", false);
            $("#nm_kegiatan").prop("disabled", false);
            $("#no_po").prop("readonly", false);
            $("#panjang").prop("readonly", false);
            $("#lebar").prop("readonly", false)
            $("#tinggi").prop("readonly", false)
            $("#volume_jenis").prop("readonly", true)
            $("#ton_cargo").prop("readonly", false)
            $("#revton").prop("readonly", true)
            $("#qty_cargo").prop("readonly", false)
            $("#satuan_jenis").prop("readonly", false)
            $("#deskripsi_cargo").prop("readonly", false)

            // kosongkan
            $('#nm_company').val('');
            $('#nm_barang').val('');
            $('#production').val('');
            $('#nm_kegiatan').val('');
            $('#no_po').val('');
            $('#panjang').val('');
            $('#lebar').val('');
            $('#tinggi').val('');
            $('#total_volume').val('');
            $('#total_ton').val('');
            $('#revton').val('');
            $('#qty_cargo').val('');
            $('#satuan_jenis').val('');
            $('#deskripsi_cargo').val('');

            $('.modal-body form').attr('action', host + 'checker/add_dlotruck.php')




        });
    });

    // Modal Lihat
    $(function() {
        $('.modalLihat').on('click', function() {

            $('.modal-title').html('Detail Cargo');
            $('.modal-footer input[type=reset]').val('Tutup');
            $(".submit").hide();
            $(".satuan").hide(); //cbm dan ton

            const id = $(this).data('id');

            $("#nm_company").prop("readonly", true);
            $("#nm_barang").prop("readonly", true);
            $("#production").prop("readonly", true);
            $("#nm_kegiatan").prop("disabled", true);
            $("#no_po").prop("readonly", true);
            $("#panjang").prop("readonly", true);
            $("#lebar").prop("readonly", true)
            $("#tinggi").prop("readonly", true)
            $("#total_volume").prop("readonly", true)
            $("#total_ton").prop("readonly", true)
            $("#revton").prop("readonly", true)
            $("#qty_cargo").prop("readonly", true)
            $("#satuan_jenis").prop("readonly", true)
            $("#deskripsi_cargo").prop("readonly", true)


            $.ajax({
                url: host + 'checker/getcargotruck.php',
                data: {
                    id: id
                },
                method: 'post',
                dataType: 'json',
                success: function(data) {
                    // console.log(data);                     
                    $('#nm_company').val(data.nm_company);
                    $('#nm_barang').val(data.nm_barang);
                    $('#production').val(data.production);
                    $('#nm_kegiatan').val(data.nm_kegiatan);
                    $('#no_po').val(data.no_po);
                    $('#panjang').val(data.p_cargo);
                    $('#lebar').val(data.l_cargo);
                    $('#tinggi').val(data.t_cargo);
                    $('#total_volume').val(data.volume_cargo);
                    $('#total_ton').val(data.ton_cargo);
                    $('#revton').val(data.revton_cargo);
                    $('#qty_cargo').val(data.qty_cargo);
                    $('#satuan_jenis').val(data.satuan_cargo);
                    $('#deskripsi_cargo').val(data.deskripsi_cargo);
                }
            });
        });
    });

    // Modal Stop
    $(function() {
        $('.modalStop').on('click', function() {
            $('.modal-body form').attr('action', host + 'checker/stop_joborder_lotruk.php')
        });
    });

    // Modal Update
    $(function() {
        $('.modalUpdate').on('click', function() {

            $('.modal-body form').attr('action', host + 'checker/update_lotruck.php')
            const id = $(this).data('id');

            $.ajax({
                url: host + 'checker/getcargotruck.php',
                data: {
                    id: id
                },
                method: 'post',
                dataType: 'json',
                success: function(data) {
                    console.log(data);
                    $('#nm_barang_update').val(data.nm_barang);
                    $('#jenis_kegiatan').val(data.nm_kegiatan);
                    $('#id_djotruck_update').val(data.id_djotruck);
                    kegiatan = data.nm_kegiatan;

                    if (kegiatan == 'OFFLOADING') {
                        $(".loading").hide();
                    } else if (kegiatan == 'LOADING') {
                        $(".offloading").hide();
                    }

                }
            });

        });
    });

    // Modal edit
    $(function() {
        $('.modalEdit').on('click', function() {

            $('.modal-title').html('Edit Cargo');
            $('.modal-footer input[type=submit]').val('Edit');
            $('.modal-body form').attr('action', host + 'checker/edit_dlotruck.php')
            $(".submit").show();
            $(".satuan").show(); //cbm dan ton

            const id = $(this).data('id');

            $("#nm_company").prop("readonly", false);
            $("#nm_barang").prop("readonly", false);
            $("#production").prop("readonly", false);
            $("#nm_kegiatan").prop("disabled", false);
            $("#no_po").prop("readonly", false);
            $("#panjang").prop("readonly", false);
            $("#lebar").prop("readonly", false)
            $("#tinggi").prop("readonly", false)
            $("#total_volume").prop("readonly", true)
            $("#total_ton").prop("readonly", true)
            $("#revton").prop("readonly", true)
            $("#qty_cargo").prop("readonly", false)
            $("#satuan_jenis").prop("readonly", false)
            $("#deskripsi_cargo").prop("readonly", false)

            $.ajax({
                url: host + 'checker/getcargotruck.php',
                data: {
                    id: id
                },
                method: 'post',
                dataType: 'json',
                success: function(data) {
                    console.log(data);
                    $('#id_djotruck').val(data.id_djotruck);
                    $('#nm_company').val(data.nm_company);
                    $('#nm_barang').val(data.nm_barang);
                    $('#production').val(data.production);
                    $('#nm_kegiatan').val(data.nm_kegiatan);
                    $('#no_po').val(data.no_po);
                    $('#panjang').val(data.p_cargo);
                    $('#lebar').val(data.l_cargo);
                    $('#tinggi').val(data.t_cargo);
                    $('#volume_jenis').val(data.volume_satuan);
                    $('#ton_cargo').val(data.ton_satuan);
                    $('#total_volume').val(data.volume_cargo);
                    $('#total_ton').val(data.ton_cargo);
                    $('#revton').val(data.revton_cargo);
                    $('#qty_cargo').val(data.qty_cargo);
                    $('#satuan_jenis').val(data.satuan_cargo);
                    $('#deskripsi_cargo').val(data.deskripsi_cargo);

                }
            });

        });
    });
</script>