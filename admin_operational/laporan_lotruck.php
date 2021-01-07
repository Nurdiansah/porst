<?php
include "../fungsi/koneksi.php";
include "../fungsi/fungsi.php";


if (isset($_GET['aksi']) && isset($_GET['id'])) {
    //die($id = $_GET['id']);
    $id = $_GET['id'];
    echo $id;

    if ($_GET['aksi'] == 'edit') {
        header("location:?p=lihat_joborder&id=$id");
    } else if ($_GET['aksi'] == 'hapus') {
        header("location:?p=hapus_joborder&id=$id");
    }
}


?>
<!-- Main content -->
<section class="content">
    <!-- Small boxes (Stat box) -->
    <div class="row">
        <div class="col-sm-12">
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="text-center">Report Loading / Offloading</h3>
                </div>
                <div class="box-header with-border">


                    <!-- form -->
                    <form method="get" enctype="multipart/form-data" action="cetak_jobreportvessel.php" class="form-horizontal">
                        <div class="box-body">
                            <!-- <div class="form-group">
                                        <label id="tes"for="alat_berat" class="col-sm-offset-1 col-sm-3 control-label">Alat Berat</label>
                                        <div class="col-sm-4">
                                            <select name="id_joborder" class="form-control" >
                                                <option value="">Joborder</option>
                                                <?php
                                                $query = mysqli_query($koneksi, "SELECT * FROM job_order WHERE status_jo>=3 ");
                                                if (mysqli_num_rows($query)) {
                                                    while ($row = mysqli_fetch_assoc($query)) :
                                                ?>
                                                <option value="<?= $row['id_joborder']; ?>" type="checkbox"><?= $row['id_joborder']; ?></option>
                                                <?php endwhile;
                                                } ?>
                                            </select>
                                        </div>
                                    </div> -->
                            <div class="form-group ">
                                <h4> Download Job Report Loading / Offloading </h4>
                                <br>
                                <div class="col-sm-2">
                                    <input type="text" class="form-control" name="id" placeholder="Input Id Joborder">
                                </div>
                                <input target="_blank" type="submit" name="simpan" class="btn btn-success col-sm-offset- " value="Cetak">
                            </div>
                        </div>
                    </form>
                    <!-- akhir form -->
                    <!-- form -->
                    <form method="get" enctype="multipart/form-data" action="cetak_tallysheetvessel.php" class="form-horizontal">
                        <div class="box-body">
                            <div class="form-group ">
                                <h4> Download Tally Sheet Loading / Offloading </h4>
                                <br>
                                <div class="col-sm-2">
                                    <input type="text" class="form-control" name="id" placeholder="Input Id Joborder">
                                </div>
                                <input type="submit" name="simpan" class="btn btn-success col-sm-offset- " value="Cetak">
                            </div>
                        </div>
                    </form>
                    <!-- akhir form -->

                </div>

            </div>
        </div>
    </div>
    </div>
</section>
<script>
    $(function() {
        $("#material").DataTable({
            "language": {
                "url": "http://cdn.datatables.net/plug-ins/1.10.9/i18n/Indonesian.json",
                "sEmptyTable": "Tidak ada data di database"
            }
        });
    });
</script>