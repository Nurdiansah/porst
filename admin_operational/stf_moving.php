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

if ($Area == 'kj4') {
    $query = mysqli_query($koneksi, "SELECT * FROM moving s                                              
                                                JOIN client c
                                                ON c.id_client = s.id_client
                                                WHERE status_moving = '3' AND area = 'kj4'
                                                ");

    $queryReject = mysqli_query($koneksi, "SELECT * FROM moving s                                              
                                                    JOIN client c
                                                    ON c.id_client = s.id_client
                                                    WHERE status_moving = '20' AND area = 'kj4'
                                                    ");
} else {
    $query = mysqli_query($koneksi, "SELECT * FROM moving s                                              
                                                JOIN client c
                                                ON c.id_client = s.id_client
                                                WHERE status_moving = '3' AND area != 'kj4'
                                                ");

    $queryReject = mysqli_query($koneksi, "SELECT * FROM moving s                                              
                                                    JOIN client c
                                                    ON c.id_client = s.id_client
                                                    WHERE status_moving = '20' AND area != 'kj4'
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
                    <h3 class="text-center">Internal Moving</h3>
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
                                        <th>Client</th>
                                        <th>Revton</th>
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
                                                <td> <?= $row['nm_alatberat']; ?> </td>
                                                <td> <?= $row['nm_client']; ?> </td>
                                                <td> <?= $row['total_cargo']; ?> </td>
                                                <td>
                                                    <a href="?p=stf_dmoving&id=<?= base64_encode($row['id_moving']); ?>"><button class="btn btn-info"> Detail </button></a>
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
    <!-- end box -->

    <!-- box baru -->
    <?php if (mysqli_num_rows($queryReject)) { ?>
        <!-- Small boxes (Stat box) -->
        <div class="row">
            <div class="col-sm-12">
                <div class="box box-danger">
                    <div class="box-header with-border">
                        <h3 class="text-center">Rejected</h3>
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
                                            <th>Client</th>
                                            <th>Revton</th>
                                            <th>Komentar</th>
                                            <th>Aksi</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <?php
                                            $no = 1;
                                            if (mysqli_num_rows($queryReject)) {
                                                while ($rowR = mysqli_fetch_assoc($queryReject)) :
                                                    $start = $rowR['mulai_kegiatan'];

                                            ?>
                                                    <td> <?= $no; ?> </td>
                                                    <td> <?= $rowR['id_moving']; ?> </td>
                                                    <td><?= tanggal($rowR['created_on']); ?> </td>
                                                    <td> <?= $rowR['nm_alatberat']; ?> </td>
                                                    <td> <?= $rowR['nm_client']; ?> </td>
                                                    <td> <?= $rowR['total_cargo']; ?> </td>
                                                    <td> <?= limitKata($rowR['komentar']); ?> </td>
                                                    <td>
                                                        <a href="?p=stf_dmoving&id=<?= base64_encode($rowR['id_moving']); ?>"><button class="btn btn-danger"> Detail </button></a>
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
    <?php } ?>
    <!-- end box -->
</section>

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