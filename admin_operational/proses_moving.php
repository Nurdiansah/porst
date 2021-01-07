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
        // $query = mysqli_query($koneksi,"DELETE FROM jenis_barang where id_jenis=$id");

        // echo "<div class='alert alert-danger' role='alert'> Data berhasil di hapus </div>";
    }
}

if ($Area == 'kj4') {
    $query = mysqli_query($koneksi, "SELECT * FROM moving s
                                                JOIN client c
                                                ON c.id_client = s.id_client
                                                WHERE s.status_moving <= '2' AND area = 'kj4'
                                                ");
} else {
    $query = mysqli_query($koneksi, "SELECT * FROM moving s
                                                JOIN client c
                                                ON c.id_client = s.id_client
                                                WHERE s.status_moving <= '2' AND area != 'kj4'
                                                ");
}

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
                    <div class="table-responsive">
                        <div id="jo_table">
                            <table class="table text-center table-striped table-hover">
                                <thead style="background-color :#B0C4DE;">
                                    <tr>
                                        <th>No</th>
                                        <th>Id Job Order</th>
                                        <th>Tanggal</th>
                                        <th>Equipment</th>
                                        <th>Equipment</th>
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
                                                    <a href="?p=detail_prosesmoving&id=<?= base64_encode($row['id_moving']); ?>"><button class="btn btn-info"> Detail </button></a>
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