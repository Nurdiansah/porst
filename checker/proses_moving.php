<?php
include "../fungsi/koneksi.php";
include "../fungsi/fungsi.php";

if (isset($_GET['aksi']) && isset($_GET['id'])) {
    //die($id = $_GET['id']);
    $id = $_GET['id'];

    if ($_GET['aksi'] == 'update') {
        header("location:?p=detail_prosestruck&id=$id");
    } else if ($_GET['aksi'] == 'hapus') {
        hapusJenisBarang($id);
    }
}

$query = mysqli_query($koneksi, "SELECT * FROM moving s
                                              JOIN client c
                                              ON c.id_client = s.id_client
                                              WHERE s.status_moving <= '2'
                                              ");

?>

<!-- Main content -->
<section class="content">
    <!-- Small boxes (Stat box) -->
    <div class="row">
        <div class="col-sm-12">
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="text-center">Proses Internal Moving</h3>
                </div>
                <div class="box-body">
                    <?php

                    if (isset($_SESSION['pesan']) && $_SESSION['pesan'] <> '') {
                        echo $_SESSION['pesan'];
                    }
                    $_SESSION['pesan'] = '';
                    ?>
                    <br>
                    <div class="row">
                        <div class="col-md-2">
                            <button type="button" class="btn btn-primary col-sm-offset- modalTambah" data-toggle="modal" data-target="#myModal"><i class="fa fa-plus-circle" aria-hidden="true"></i> Create </button>
                        </div>
                        <br><br>
                    </div>
                    <div class="table-responsive">
                        <div id="jo_table">
                            <table class="table text-center table-striped table-hover">
                                <thead style="background-color :#B0C4DE;">
                                    <tr>
                                        <th>No</th>
                                        <th>Id Job Order</th>
                                        <th>Tanggal</th>
                                        <th>Equipment 1</th>
                                        <th>Equipment 2</th>
                                        <th>Client</th>
                                        <th>Status</th>
                                        <th>Aksi</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <?php
                                        $no = 1;
                                        if (mysqli_num_rows($query)) {
                                            while ($row = mysqli_fetch_assoc($query)) :
                                                $start = $row['mulai_kegiatan'];

                                        ?>
                                                <td> <?= $no; ?> </td>
                                                <td> <?= $row['id_moving']; ?> </td>
                                                <td><?= tanggal($row['created_on']); ?> </td>
                                                <td> <?= $row['nm_trailer']; ?> </td>
                                                <td> <?= $row['nm_alatberat']; ?> </td>
                                                <td> <?= $row['nm_client']; ?> </td>
                                                <td>
                                                    <?php if ($row['status_moving'] == 1 && is_null($start)) {
                                                        echo  "<button type='button' class='btn btn-warning'>Ready</button>";
                                                    } else if ($row['status_moving'] == 1) {
                                                        echo  "<button type='button' class='btn btn-success'>Progress</button>";
                                                    } else if ($row['status_moving'] == 2) {
                                                        echo  "<button type='button' class='btn btn-danger'>Stop</button>";
                                                    }
                                                    ?>
                                                </td>
                                                <td>
                                                    <a href="?p=detail_prosesmoving&id=<?= base64_encode($row['id_moving']); ?>"><button class="btn btn-info"> Update </button></a>
                                                </td>
                                    </tr>
                            <?php $no++;
                                            endwhile;
                                        } ?>
                                </tbody>
                            </table>
                        </div>
                    </div>

                    <!-- Awal Modal Create -->
                    <div id="myModal" class="modal fade" role="dialog">
                        <div class="modal-dialog">
                            <!-- konten modal-->
                            <div class="modal-content">
                                <!-- heading modal -->
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title">Create Internal Moving</h4>
                                </div>
                                <!-- body modal -->
                                <div class="modal-body">
                                    <div class="perhitungan">
                                        <form method="post" name="form" id="insert_form" enctype="multipart/form-data" action="add_moving.php" class="form-horizontal">
                                            <div class="box-body">
                                                <div class="form-group">
                                                    <div class="form-group">
                                                        <label id="tes" for="alat_berat" class="col-sm-offset-1 col-sm-3 control-label">Truck / Trailer / Forklift</label>
                                                        <div class="col-sm-5">
                                                            <select name="nm_trailer" class="form-control" required>
                                                                <option value="">--Pilih Alat--</option>
                                                                <?php
                                                                $queryT = mysqli_query($koneksi, "SELECT * FROM alat_berat WHERE status_alatberat = '0' AND jns_alatberat != 'CRANE' ORDER BY nm_alatberat ASC ");
                                                                if (mysqli_num_rows($queryT)) {
                                                                    while ($rowT = mysqli_fetch_assoc($queryT)) :
                                                                ?>
                                                                        <option value="<?= $rowT['nm_alatberat']; ?>" type="checkbox"><?= $rowT['nm_alatberat']; ?></option>
                                                                <?php endwhile;
                                                                } ?>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label id="tes" for="alat_berat" class="col-sm-offset-1 col-sm-3 control-label">Alat Berat</label>
                                                        <div class="col-sm-5">
                                                            <select name="nm_alatberat" class="form-control">
                                                                <option value="">--Pilih Alat--</option>
                                                                <?php
                                                                $queryAlat = mysqli_query($koneksi, "SELECT * FROM alat_berat WHERE status_alatberat = '0' AND jns_alatberat != 'TRUCK' AND jns_alatberat != 'TRAILER' ORDER BY nm_alatberat ASC ");
                                                                if (mysqli_num_rows($queryAlat)) {
                                                                    while ($rowAlat = mysqli_fetch_assoc($queryAlat)) :
                                                                ?>
                                                                        <option value="<?= $rowAlat['nm_alatberat']; ?>" type="checkbox"><?= $rowAlat['nm_alatberat']; ?></option>
                                                                <?php endwhile;
                                                                } ?>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label id="tes" for="client" class="col-sm-offset-1 col-sm-3 control-label">Client</label>
                                                        <div class="col-sm-5">
                                                            <select name="id_client" class="form-control" required>
                                                                <option value="">--Pilih Client--</option>
                                                                <?php
                                                                $queryClient = mysqli_query($koneksi, "SELECT * FROM client ORDER BY  nm_client  ASC ");
                                                                if (mysqli_num_rows($queryClient)) {
                                                                    while ($rowClient = mysqli_fetch_assoc($queryClient)) :
                                                                ?>
                                                                        <option value="<?= $rowClient['id_client']; ?>" type="checkbox"><?= $rowClient['nm_client']; ?></option>
                                                                <?php endwhile;
                                                                } ?>
                                                            </select>
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

<!-- Awal Modal Update -->

<!--  Akhir Modal-->

<?php
$host = host();

?>

<script>
    var host = '<?= $host ?>';

    var lengt = 0;
    var wide = 0;
    var high = 0;
    var volume = 0;

    $(function() {
        $("#user").DataTable({
            "language": {
                "url": "http://cdn.datatables.net/plug-ins/1.10.9/i18n/Indonesian.json",
                "sEmptyTable": "Tidak ada data di database"
            }
        });
    });
</script>