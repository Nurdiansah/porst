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

$query = mysqli_query($koneksi, "SELECT id_listrik, lokasi, bulan, YEAR(tanggal_awal) as tanggal_awal, YEAR(tanggal_akhir), sum(meter_awal) as meter_awal, sum(meter_akhir) as meter_akhir, sum(jml_pemakaian) as jml_pemakaian, sum(faktor) as faktor, sum(total_meter) as total_meter, sum(beban_puncak) as beban_puncak, sum(satuan_kwh) as satuan_kwh, sum(tagihan_pln) as tagihan_pln
    FROM pemakaian_listrik
    group by bulan, YEAR(tanggal_awal)");
?>

<!-- Main content -->
<section class="content">
    <!-- Small boxes (Stat box) -->
    <div class="row">
        <div class="col-sm-12">
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="text-center">Rekap Pemakaian Listrik</h3>
                </div>
                <div class="box-body">
                    <div class="table-responsive">
                        <div id="jo_table">
                            <table class="table text-center table-striped table-hover">
                                <thead style="background-color :#B0C4DE;">
                                    <tr>
                                        <th>No</th>
                                        <!-- <th>Area</th> -->
                                        <th>Bulan</th>
                                        <!-- <th>Tanggal Awal</th>
                                    <th>Tanggal Akhir</th>                                     -->
                                        <th>Meter Awal</th>
                                        <th>Meter Akhir</th>
                                        <th>Jml Pemakaian</th>
                                        <th>Faktor</th>
                                        <th>Total Meter</th>
                                        <th>WBP</th>
                                        <th>KWH</th>
                                        <th>Tagihan PLN</th>
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
                                                <!-- <td> </?= $row['lokasi']; ?></td> -->
                                                <td> <?= getBulan($row['bulan']); ?> <?= $row['tanggal_awal'] ?></td>
                                                <!-- <td> </?= $row['tanggal_awal']; ?> </td>
                					<td> </?= $row['tanggal_akhir']; ?> </td> -->
                                                <td> <?= $row['meter_awal']; ?> </td>
                                                <td> <?= $row['meter_akhir']; ?> </td>
                                                <td> <?= $row['jml_pemakaian']; ?> </td>
                                                <td> <?= $row['faktor']; ?> </td>
                                                <td> <?= $row['total_meter']; ?> </td>
                                                <td> <?= $row['beban_puncak']; ?> </td>
                                                <td> <?= $row['satuan_kwh']; ?> </td>
                                                <td> <?= $row['tagihan_pln']; ?> </td>
                                                <td>
                                                    <a href="index.php?p=rekap_pemakaianlistrik&id=<?= $row['id_listrik']; ?>&bln=<?= $row['bulan']; ?>&thn=<?= $row['tanggal_awal']; ?>"><button class="btn btn-success"> <i class="fa fa-search-plus"></i> </button></a>
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

<?php
$host = host();

?>