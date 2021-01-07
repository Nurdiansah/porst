<?php
include "../fungsi/koneksi.php";
include "../fungsi/fungsi.php";


if (isset($_GET['aksi']) && isset($_GET['id'])) {
    //die($id = $_GET['id']);
    $id = $_GET['id'];
    echo $id;

    if ($_GET['aksi'] == 'edit') {
        header("location:?p=edit&id=$id");
    } else if ($_GET['aksi'] == 'hapus') {
        header("location:?p=hapus&id=$id");
    }
}

// if(isset($_GET['id_jenis'])){
//     $id_jenis = $_GET['id_jenis'];
$queryUser =  mysqli_query($koneksi, "SELECT area from user WHERE username  = '$_SESSION[username]'");
$rowUser = mysqli_fetch_assoc($queryUser);
$Area = $rowUser['area'];

$query = mysqli_query($koneksi, "SELECT jo.tgl_masuk, jo.kode_jovessel, jo.id_joborder, jo.nm_kapal, c.nm_client, jo.sandar_kapal, jo.nm_kegiatan, jo.total_cargo
                                        FROM job_order jo
                                        JOIN client c
                                        ON c.id_client = jo.id_client
                                        WHERE jo.status_jo = 4 AND jo.area = '$Area'  ORDER BY jo.tgl_masuk DESC  ");


// } else {
//     $query = mysqli_query($koneksi, "SELECT * FROM stokbarang");        
// }



?>
<!-- Main content -->
<section class="content">
    <!-- Small boxes (Stat box) -->
    <div class="row">
        <div class="col-sm-12">
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="text-center">JOB ORDER VESSEL</h3>
                </div>
                <div class="box-body">
                    <div class="row">
                        <!-- <div class="col-md-2">
                        <a href="index.php?p=tambahmaterial" class=" btn btn-primary"><i class="fa fa-plus"></i> Tambah Data Stok</a><br>						
                </div>
					 -->
                        <!-- <div class="col-md-2 pull-right">
						<a target="_blank" href="cetakstok.php?idjenis=<?= $id_jenis;  ?>" class="btn btn-success"><i class="fa fa-print"></i> Cetak Job Order</a><br>
					</div> -->
                        <br><br>
                    </div>
                    <div class="table-responsive">
                        <table class="table text-center table-striped table-hover" id="">
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
                                    <!-- <th>Aksi</th>	                				 -->
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
                                            <td> <?= $row['total_cargo']; ?> </td>
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