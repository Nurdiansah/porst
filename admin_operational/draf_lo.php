<?php

include "../fungsi/koneksi.php";
include "../fungsi/fungsi.php";


if (isset($_GET['aksi']) && isset($_GET['id'])) {
    //die($id = $_GET['id']);
    $id = $_GET['id'];
    echo $id;

    if ($_GET['aksi'] == 'edit') {
        header("location:?p=buat_cargo&id=$id");
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
                                                WHERE jo.status_jo=1 
                                                ORDER BY jo.id_joborder DESC  ");

?>
<!-- Conten header -->
<section class="content-header">
    <h1>
        DRAF Stevedoring Vessel
        <small>Daftar Draf Stevedoring Vessel di PT. Nurdiansah Bongkar Muat </small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="index.php"><i class="fa fa-dashboard"></i> Dashboard</a></li>
        <li><a href="index.php?p=lihat_jovessel"> Stevedoring Vessel </a></li>
        <li class="active">Draf</li>
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
                    <h3 class="text-center">DAFTAR DRAF STEVEDORING</h3>
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
                                    <th>Tanggal Masuk</th>
                                    <th>ID Job Order</th>
                                    <th>Nama Kapal</th>
                                    <th>Client</th>
                                    <th>Sandar Kapal</th>
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

                                    ?>
                                            <td> <?= $no; ?> </td>
                                            <td> <?= tanggal_indo($row['tgl_masuk']); ?> </td>
                                            <td> <?= $row['kode_jovessel']; ?> </td>
                                            <td> <?= $row['nm_kapal']; ?> </td>
                                            <td> <?= $row['nm_client']; ?> </td>
                                            <td> <?= $row['sandar_kapal']; ?> </td>


                                            <td>
                                                <a href="?p=draf_lo&aksi=edit&id=<?= $row['id_joborder']; ?>"><span data-placement='top' data-toggle='tooltip' title='Lihat'><button class="btn btn-info">Lihat</button></span></a>
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