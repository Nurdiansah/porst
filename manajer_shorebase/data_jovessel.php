<?php
include "../fungsi/koneksi.php";
include "../fungsi/fungsi.php";
$query = mysqli_query($koneksi,  "SELECT * 
                                        FROM job_order jo
                                        JOIN client c
                                        ON c.id_client = jo.id_client
                                        WHERE status_jo=5");
?>
<!-- Main content -->
<section class="content">
    <!-- Small boxes (Stat box) -->
    <div class="row">
        <div class="col-sm-12">
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="text-center">APPROVAL STEVEDORING</h3>
                </div>

                <div class="box-body">
                    <div class="table-responsive">
                        <table id="datapesanan" class="table text-center table-striped table-hover">
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>ID Joborder</th>
                                    <th>Tanggal Masuk</th>
                                    <th>Nama Kapal</th>
                                    <th>Client</th>
                                    <th>Sandar Kapal</th>
                                    <th>Total Cargo</th>
                                    <th>Aksi</th>
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
                                            <td> <?= $row['kode_jovessel']; ?> </td>
                                            <td> <?= tanggal_indo($row['tgl_masuk']); ?> </td>
                                            <td> <?= $row['nm_kapal']; ?> </td>
                                            <td> <?= $row['nm_client']; ?> </td>
                                            <td> <?= $row['sandar_kapal']; ?> </td>
                                            <td> <?= $row['total_cargo']; ?> </td>
                                            <td>
                                                <a href="?p=detil_jovessel&id=<?= $row['id_joborder']; ?>"><span data-placement='top' data-toggle='tooltip' title='Detail Permintaan'><button class="btn btn-info">Detail</button></span></a>

                                            </td>
                                </tr>
                        <?php $no++;
                                        endwhile;
                                    } else {
                                        echo "<tr><td colspan=9>Tidak Job Order.</td></tr>";
                                    } ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>