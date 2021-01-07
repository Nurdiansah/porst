<?php
include "../fungsi/koneksi.php";

if (isset($_POST['cari'])) {
    $tgl_awal = $_POST['tgl_awal'];
    $tgl_akhir = $_POST['tgl_akhir'];
    $id_client = $_POST['id_client'];

    $queryC = mysqli_query($koneksi, "SELECT * FROM client WHERE id_client = '$id_client' ");
    $rowC = mysqli_fetch_assoc($queryC);
    $nm_client = $rowC['nm_client'];

    if ($id_client == 'all') {
        $query = mysqli_query($koneksi, "SELECT jt.id_alatberat, jt.id_client, ab.nm_alatberat, cl.nm_client, sum(jt.total_cargo) AS total_cargo FROM job_ordertruck jt
                        LEFT JOIN alat_berat ab
                            ON jt.id_alatberat = ab.id_alatberat
                        LEFT JOIN client cl
                            ON jt.id_client = cl.id_client
                        WHERE DATE(created_on) BETWEEN '$tgl_awal' AND '$tgl_akhir'
                        GROUP BY jt.id_alatberat, jt.id_client
                        ORDER BY created_on DESC");
    } else {
        $query = mysqli_query($koneksi, "SELECT jt.id_alatberat, jt.id_client,  ab.nm_alatberat, cl.nm_client, sum(jt.total_cargo) AS total_cargo FROM job_ordertruck jt
                        LEFT JOIN alat_berat ab
                            ON jt.id_alatberat = ab.id_alatberat
                        LEFT JOIN client cl
                            ON jt.id_client = cl.id_client
                        WHERE cl.id_client = '$id_client' AND DATE(created_on) BETWEEN '$tgl_awal' AND '$tgl_akhir'
                        GROUP BY jt.id_alatberat, jt.id_client
                        ORDER BY created_on DESC");
    }
}

?>

<section class="content">
    <!-- Small boxes (Stat box) -->
    <div class="row">
        <div class="col-sm-12">
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="text-center">Laporan Job Order Truck Periode</h3>
                </div>
                <div class="box-header with-border">
                    <form method="POST" enctype="multipart/form-data" action="" class="form-horizontal">
                        <div class="box-body">

                            <div class="form-group">
                                <div class="col-sm-offset-3">
                                    <input type="text" required class="tanggal" name="tgl_awal" value="<?php if (isset($_POST['tgl_awal'])) {
                                                                                                            echo $_POST['tgl_awal'];
                                                                                                        } ?>" placeholder="Dari" autocomplete="off"> &nbsp;
                                    <label> s/d </label> &nbsp;
                                    <input type="text" required class="tanggal" name="tgl_akhir" value="<?php if (isset($_POST['tgl_akhir'])) {
                                                                                                            echo $_POST['tgl_akhir'];
                                                                                                        } ?>" placeholder="Sampai" autocomplete="off"> &nbsp;
                                    <div class="col-sm-3">
                                        <select name="id_client" class="form-control" required>
                                            <?php if ($_POST['id_client'] != 'all' && !isset($_POST['id_client'])) { ?>
                                                <option value="">--Pilih Client--</option>
                                                <option value="all">ALL</option>
                                                <?php
                                                $queryClient = mysqli_query($koneksi, "SELECT * FROM client ORDER BY  nm_client  ASC ");
                                                if (mysqli_num_rows($queryClient)) {
                                                    while ($rowClient = mysqli_fetch_assoc($queryClient)) :
                                                ?>
                                                        <option value="<?= $rowClient['id_client']; ?>" type="checkbox"><?= $rowClient['nm_client']; ?></option>
                                                <?php endwhile;
                                                }
                                            } else if ($_POST['id_client'] == 'all') { ?>
                                                <option value="all">ALL</option>
                                                <?php
                                                $queryClient = mysqli_query($koneksi, "SELECT * FROM client ORDER BY  nm_client  ASC ");
                                                if (mysqli_num_rows($queryClient)) {
                                                    while ($rowClient = mysqli_fetch_assoc($queryClient)) :
                                                ?>
                                                        <option value="<?= $rowClient['id_client']; ?>" type="checkbox"><?= $rowClient['nm_client']; ?></option>
                                                <?php endwhile;
                                                }
                                            } else { ?>
                                                <option value="<?= $id_client ?>"><?= $nm_client ?></option>
                                                <option value="all">ALL</option>
                                                <?php
                                                $queryClient = mysqli_query($koneksi, "SELECT * FROM client ORDER BY  nm_client  ASC ");
                                                if (mysqli_num_rows($queryClient)) {
                                                    while ($rowClient = mysqli_fetch_assoc($queryClient)) :
                                                ?>
                                                        <option value="<?= $rowClient['id_client']; ?>" type="checkbox"><?= $rowClient['nm_client']; ?></option>
                                            <?php endwhile;
                                                }
                                            } ?>


                                        </select>
                                    </div>
                                    <input type="submit" name="cari" class="btn btn-success col-sm-offset-" value="Cari">
                                </div>
                            </div>

                        </div>
                    </form>
                    <div class="box-body">
                        <div class="table-responsive">
                            <div id="jo_table">
                                <table class="table text-center table-striped table-hover">
                                    <thead style="background-color : ;">
                                        <tr>
                                            <th>No</th>
                                            <th>Alat Berat</th>
                                            <th>Client</th>
                                            <th>Total Cargo</th>
                                            <th>Dari</th>
                                            <th>Sampai</th>
                                            <th>Detail</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <?php
                                            $no = 1;
                                            if (mysqli_num_rows($query)) {
                                                while ($row = mysqli_fetch_assoc($query)) :
                                            ?>
                                                    <td> <?= $no; ?> </td>
                                                    <td> <?= $row['nm_alatberat']; ?> </td>
                                                    <td> <?= $row['nm_client']; ?> </td>
                                                    <td> <?= $row['total_cargo']; ?> </td>
                                                    <td> <?= $tgl_awal; ?> </td>
                                                    <td> <?= $tgl_akhir; ?> </td>
                                                    <td>
                                                        <a href="../assets/tcpdf/cetak_tallysheetweek.php?alat_berat=<?= $row['id_alatberat']; ?>&client=<?= $row['id_client']; ?>&tgl_awal=<?= $tgl_awal ?>&tgl_akhir=<?= $tgl_akhir ?>" target="_blank"><button class="btn btn-success"> <i class="fa fa-search-plus"></i> </button></a>
                                                    </td>
                                        </tr>
                                <?php $no++;
                                                endwhile;
                                            } ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
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
        $(".add-more").click(function() {
            var html = $(".copy").html();
            $(".after-add-more").after(html);
        });
        $("body").on("click", ".remove", function() {
            $(this).parents(".control-group").remove();
        });
    });
</script>