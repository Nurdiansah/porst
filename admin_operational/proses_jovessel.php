<?php

include "../fungsi/koneksi.php";
include "../fungsi/fungsi.php";


if (isset($_GET['aksi']) && isset($_GET['id'])) {
    //die($id = $_GET['id']);
    $id = $_GET['id'];
    echo $id;

    if ($_GET['aksi'] == 'edit') {
        header("location:?p=lihat_prosesjoborder&id=$id");
    } else if ($_GET['aksi'] == 'hapus') {
        header("location:?p=hapus_joborder&id=$id");
    }
}

$queryUser =  mysqli_query($koneksi, "SELECT area from user WHERE username  = '$_SESSION[username]'");
$rowUser = mysqli_fetch_assoc($queryUser);
$Area = $rowUser['area'];

$query = mysqli_query($koneksi, "SELECT jo.tgl_masuk, jo.id_joborder, jo.nm_kapal, c.nm_client , jo.sandar_kapal, jo.status_jo, jo.nm_kegiatan
                                                FROM job_order jo
                                                JOIN client c
                                                ON c.id_client = jo.id_client
                                                WHERE jo.status_jo>=2 AND jo.status_jo<=3 
                                                ORDER BY jo.id_joborder DESC  ");

?>
<!-- Conten header -->
<section class="content-header">
    <h1>
        Proses Stevedoring Vessel
        <small>Daftar Pekerjaan Stevedoring Vessel di PT. Nurdiansah Bongkar Muat yang sedang berlangsung </small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="index.php"><i class="fa fa-dashboard"></i> Dashboard</a></li>
        <li><a href="index.php?p=lihat_jovessel"> Stevedoring Vessel </a></li>
        <li class="active">Proses</li>
    </ol>
    <h3 class="text-right mb-1" id="jam"> </h3>
</section>

<!-- Main content -->
<section class="content">
    <!-- Small boxes (Stat box) -->
    <div class="row">
        <div class="col-sm-12">
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="text-center">DAFTAR PROSES STEVEDORING</h3>
                </div>
                <div class="box-body">
                    <div class="row">
                        <br><br>
                    </div>
                    <div class="table-responsive">
                        <table class="table text-center table table-striped table-hover" id=" ">
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>ID Job Order</th>
                                    <th>Tanggal Masuk</th>
                                    <th>Nama Kapal</th>
                                    <th>Client</th>
                                    <th>Sandar Kapal</th>
                                    <th>Kegiatan</th>
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
                                            $idJoborder = $row['id_joborder'];

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
                                            <td> <?= $no; ?> </td>
                                            <td> <?= $row['kode_jovessel']; ?> </td>
                                            <td> <?= tanggal_indo($row['tgl_masuk']); ?> </td>
                                            <td> <?= $row['nm_kapal']; ?> </td>
                                            <td> <?= $row['nm_client']; ?> </td>
                                            <td> <?= $row['sandar_kapal']; ?> </td>
                                            <td> <?= $row['nm_kegiatan']; ?> </td>
                                            <td>
                                                <div class="progress">
                                                    <div class="progress-bar progress-bar-success progress-bar-striped" role="progressbar" aria-valuenow="<?= $statusCargo; ?>" aria-valuemin="0" aria-valuemax="100" style="width: <?= $statusCargo; ?>%">
                                                        <font style="color:black"><b><?= $statusCargo ?>%</b></font>
                                                    </div>
                                                </div>
                                            </td>


                                            <td>
                                                <a href="?p=proses_jovessel&aksi=edit&id=<?= $row['id_joborder']; ?>"><span data-placement='top' data-toggle='tooltip' title='Lihat'><button class="btn btn-info">Lihat</button></span></a>

                                                <!-- <a target="_blank" href="cetak_jobreportvessel.php" class="btn btn-success"><i class="fa fa-print"></i> Cetak </a> -->
                                            </td>
                                </tr>
                        <?php

                                            // if ($status==100) {
                                            //     $query1 = mysqli_query($koneksi, "UPDATE job_order SET kondisi = 1 WHERE id_joborder = $row['id_joborder'] ");
                                            // }                             
                                            $no++;
                                        endwhile;
                                    } ?>
                            </tbody>
                        </table>
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