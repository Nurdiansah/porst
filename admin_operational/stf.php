<?php

include "../fungsi/koneksi.php";
include "../fungsi/fungsi.php";


if (isset($_GET['aksi']) && isset($_GET['id'])) {
    //die($id = $_GET['id']);
    $id = $_GET['id'];
    echo $id;

    if ($_GET['aksi'] == 'edit') {
        header("location:?p=detail_stf&id=$id");
    } else if ($_GET['aksi'] == 'hapus') {
        header("location:?p=hapus_joborder&id=$id");
    }
}

$queryUser =  mysqli_query($koneksi, "SELECT area from user WHERE username  = '$_SESSION[username]'");
$rowUser = mysqli_fetch_assoc($queryUser);
$Area = $rowUser['area'];

$query = mysqli_query($koneksi, "SELECT * FROM job_order jo
                                                JOIN client c
                                                ON c.id_client = jo.id_client
                                                WHERE jo.status_jo=4 
                                                ORDER BY jo.id_joborder DESC  ");

$queryReject = mysqli_query($koneksi, "SELECT * FROM job_order jo
                                                JOIN client c
                                                ON c.id_client = jo.id_client
                                                WHERE jo.status_jo=4  AND komentar IS NOT NULL
                                                ORDER BY jo.id_joborder DESC  ");

?>
<!-- Conten header -->
<section class="content-header">
    <h1>
        Verifikasi Stevedoring Vessel
        <small>Daftar Pekerjaan Stevedoring Vessel di PT. Nurdiansah Bongkar Muat yang perlu di verifikasi </small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="index.php"><i class="fa fa-dashboard"></i> Dashboard</a></li>
        <li><a href="index.php?p=lihat_jovessel"> Stevedoring Vessel </a></li>
        <li class="active">Verifikasi</li>
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
                    <h3 class="text-center">VERIFIKASI JOB STEVEDORING VESSEL</h3>
                </div>
                <div class="box-body">
                    <div class="row">
                        <br><br>
                    </div>
                    <div class="table-responsive">
                        <table class="table text-center table table-striped table-hover" id="">
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>ID Job Order</th>
                                    <th>Tanggal Masuk</th>
                                    <th>Nama Kapal</th>
                                    <th>Client</th>
                                    <th>Sandar Kapal</th>
                                    <th>Kegiatan</th>
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
                                            $idJoborder = $row['id_joborder'];

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

                                    ?>
                                            <td> <?= $no; ?> </td>
                                            <td> <?= $row['kode_jovessel']; ?> </td>
                                            <td> <?= tanggal_indo($row['tgl_masuk']); ?> </td>
                                            <td> <?= $row['nm_kapal']; ?> </td>
                                            <td> <?= $row['nm_client']; ?> </td>
                                            <td> <?= $row['sandar_kapal']; ?> </td>
                                            <td> <?= $row['nm_kegiatan']; ?> </td>
                                            <td> <?= $row['total_cargo']; ?> </td>

                                            <td>
                                                <a href="?p=stf&aksi=edit&id=<?= $row['id_joborder']; ?>"><span data-placement='top' data-toggle='tooltip' title='Lihat'><button class="btn btn-info">Lihat</button></span></a>

                                                <!-- <a target="_blank" href="cetak_jobreportvessel.php" class="btn btn-success"><i class="fa fa-print"></i> Cetak </a> -->
                                            </td>
                                </tr>
                        <?php
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

    <!-- Box Baru -->
    <?php if (mysqli_num_rows($queryReject)) { ?>
        <!-- Small boxes (Stat box) -->
        <div class="row">
            <div class="col-sm-12">
                <div class="box box-danger">
                    <div class="box-header with-border">
                        <h3 class="text-center">REJECTED</h3>
                    </div>
                    <div class="box-body">
                        <div class="row">
                            <br><br>
                        </div>
                        <div class="table-responsive">
                            <table class="table text-center table table-striped table-hover" id="">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>ID Job Order</th>
                                        <th>Tanggal Masuk</th>
                                        <th>Nama Kapal</th>
                                        <th>Client</th>
                                        <th>Komentar</th>
                                        <th>Total Cargo</th>
                                        <th>Aksi</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <?php
                                        $no = 1;
                                        if (mysqli_num_rows($queryReject)) {
                                            while ($rowR = mysqli_fetch_assoc($queryReject)) :
                                                $idJoborder = $rowR['id_joborder'];

                                        ?>
                                                <td> <?= $no; ?> </td>
                                                <td> <?= $rowR['kode_jovessel']; ?> </td>
                                                <td> <?= tanggal_indo($rowR['tgl_masuk']); ?> </td>
                                                <td> <?= $rowR['nm_kapal']; ?> </td>
                                                <td> <?= $rowR['nm_client']; ?> </td>
                                                <td> <?= limitKata($rowR['komentar']); ?> </td>
                                                <td> <?= $rowR['total_cargo']; ?> </td>

                                                <td>
                                                    <a href="?p=stf&aksi=edit&id=<?= $rowR['id_joborder']; ?>"><span data-placement='top' data-toggle='tooltip' title='Lihat'><button class="btn btn-danger">Lihat</button></span></a>
                                                </td>
                                    </tr>
                            <?php

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
    <?php } ?>
    <!-- Box -->
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