<?php
include "../fungsi/koneksi.php";
include "../fungsi/fungsi.php";

if (!isset($_GET['id'])) {
    header("location:../index.php");
}

$id = $_GET['id'];
$id = base64_decode($id);

//   if (isset($_GET['aksi']) && isset($_GET['id'])) {
//     //die($id = $_GET['id']);
//     $id = $_GET['id'];        

//     if ($_GET['aksi'] == 'update') {
//         header("location:?p=detail_jobordertrcuk&id=$id");
//     } else if ($_GET['aksi'] == 'hapus') {
//         hapusJenisBarang($id);
//         // $query = mysqli_query($koneksi,"DELETE FROM jenis_barang where id_jenis=$id");

//         // echo "<div class='alert alert-danger' role='alert'> Data berhasil di hapus </div>";
//     } 
// }

$query = mysqli_query($koneksi, "SELECT * FROM job_ordertruck jo
                                              JOIN alat_berat a
                                              ON a.id_alatberat = jo.id_alatberat 
                                              JOIN client c
                                              ON c.id_client = jo.id_client
                                              WHERE jo.id_jobordertruck = '$id'
                                              ");
$row = mysqli_fetch_assoc($query);
$start = $row['mulai_kegiatan'];


$queryDetail = mysqli_query($koneksi, "SELECT * FROM detail_jobordertruck WHERE id_jobordertruck = '$id' AND qty_cargo >0 ");

$queryJ = mysqli_query($koneksi, "SELECT count(id_djotruck) AS jumlah FROM detail_jobordertruck WHERE id_jobordertruck = '$id' AND qty_cargo >0 ");
$rowJumlah = mysqli_fetch_assoc($queryJ);
$jumlah = $rowJumlah['jumlah'];

$queryActual = mysqli_query($koneksi, "SELECT *  FROM actual_jobordertruck WHERE id_jobordertruck='$id' ORDER BY time_at ASC ");

$queryJA = mysqli_query($koneksi, "SELECT count(id_at) AS jumlah FROM actual_jobordertruck WHERE id_jobordertruck = '$id'");
$rowJumlahActual = mysqli_fetch_assoc($queryJA);
$jumlahActual = $rowJumlahActual['jumlah'];
?>

<!-- Main content -->
<section class="content">
    <!-- Small boxes (Stat box) -->
    <div class="row">
        <div class="col-sm-12">
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="text-center">Loading/Offloading Truck</h3>
                </div>
                <div class="box-body">
                    <!-- Head -->
                    <div class="row">
                        <label for="id_joborder" class=" col-sm-2 control-label">ID Job Order</label>
                        <div class="col-sm-3">
                            <input type="text" value="<?= $row['kode_lotruck']; ?>" readonly class="form-control" name="id_joborder">
                        </div>
                        <label id="tes" for="client" class="col-sm-1 col-sm-offset-3 control-label">Client</label>
                        <div class="col-sm-3">
                            <input type="text" value="<?= $row['nm_client']; ?>" readonly class="form-control" name="client">
                        </div>
                    </div>
                    <br>
                    <div class="row">
                        <label id="tes" for="nm_kapal" class=" col-sm-2 control-label">Alat Berat</label>
                        <div class="col-sm-3">
                            <input type="text" value="<?= $row['nm_alatberat']; ?>" readonly class="form-control" name="nm_kapal">
                        </div>
                        <!-- </div>
                    <div class="form-group">  -->
                        <!-- <label id="tes"for="agen_kapal"  class="col-sm-1   control-label"></label> -->
                        <div class="col-sm-offset-8">
                            <a target="_blank" href="../assets/tcpdf/cetak_tallysheettruck.php?id=<?= $id; ?>" class="btn btn-success"><i class="fa fa-print"></i> Tally Sheet </a>
                            <span data-placement='top' data-toggle="modal" data-target="#stf" title='Continue'><button class="btn btn-primary"><i class="fa fa-send"></i> Submit To Manager</button></span>
                            <!-- <input type="text"  value="<?= $row2['agen_kapal']; ?>" readonly  class="form-control" name="agen_kapal"> -->
                        </div>
                    </div>
                    <br>
                    <!-- Progress Cargo  -->

                    <hr>
                    <h3 class="text-center">Detail Cargo</h3>
                    <hr>
                    <div class="table-responsive">
                        <table class="table text-center table table-striped table-hover" id="">
                            <thead style="background-color :#B0C4DE;">
                                <tr>
                                    <th>No </th>
                                    <th>Time</th>
                                    <th>Vendor</th>
                                    <th>Nama Barang</th>
                                    <th>Kegiatan</th>
                                    <th>Quantity</th>
                                    <th>Satuan</th>
                                    <th>M<sup>3</sup></th>
                                    <th>Ton</th>
                                    <th>RevTon</th>
                                    <th>Keterangan</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                $no = 1;
                                if (mysqli_num_rows($queryActual)) {
                                    while ($rowAct = mysqli_fetch_assoc($queryActual)) : ?>
                                        <td> <?= $no; ?> </td>
                                        <td> <?= $rowAct['time_at']; ?> </td>
                                        <td> <?= $rowAct['nm_company_at']; ?> </td>
                                        <td> <?= $rowAct['nm_barang_at']; ?> </td>
                                        <td> <?= $rowAct['nm_kegiatan_at']; ?> </td>
                                        <td> <?= $rowAct['qty_cargo_at']; ?> </td>
                                        <td> <?= $rowAct['satuan_cargo_at']; ?> </td>
                                        <td> <?= $rowAct['volume_cargo_at']; ?> </td>
                                        <td> <?= $rowAct['ton_cargo_at']; ?> </td>
                                        <td> <?= $rowAct['revton_cargo_at']; ?> </td>
                                        <td> <?= $rowAct['keterangan_at']; ?> </td>
                                        </tr>
                                <?php
                                        $no++;
                                    endwhile;
                                } ?>
                            </tbody>
                            <tr style="background-color :#B0C4DE;">
                                <td colspan="9"><b>Total Cargo</b> </td>
                                <td><b><?= $row['total_cargo']; ?></b></td>
                                <td></td>
                            </tr>
                        </table>
                    </div>
                    <!--  -->

                    <br>

                </div>
            </div>
        </div>
</section>

<!-- Modal stf-->
<div class="modal fade" id="stf" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <form method="post" action="submit_lotruck.php" enctype="multipart/form-data" class="form-horizontal">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title" id="exampleModalLabel">Konfirmasi</h4>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <div class="col-sm-6 col-sm-offset-3">
                            <input type="hidden" value="<?= $id; ?>" name="id_jobordertruck">
                            <input type="text" class="form-control" name="no_wo" required placeholder="Inputkan no wo">
                        </div>
                    </div>
                    <h4 class="col-sm-offset-1">Apa anda yakin ingin mengirim ke Manager Shorebase?</h4>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>
                    <button type="submit" name="submit" class="btn btn-primary">Ya</button></a>
                </div>
        </form>
    </div>
</div>
</div>

<!-- akhir modul stf -->

<?php
$host = host();

?>

<script>
    var host = '<?= $host ?>';

    var panjanGlobal = 0;
    var lebarGlobal = 0;
    var tinggiGlobal = 0;
    var volumeGlobal = 0;


    $(function() {
        $("#user").DataTable({
            "language": {
                "url": "http://cdn.datatables.net/plug-ins/1.10.9/i18n/Indonesian.json",
                "sEmptyTable": "Tidak ada data di database"
            }
        });
    });

    // Modal Lihat
    $(function() {
        $('.modalLihat').on('click', function() {

            $('.modal-title').html('Detail Cargo');
            $('.modal-footer input[type=reset]').val('Tutup');
            $(".submit").hide();

            const id = $(this).data('id');

            // console.log(id);

            $("#nm_company").prop("readonly", true);
            $("#nm_barang").prop("readonly", true);
            $("#production").prop("readonly", true);
            $("#nm_kegiatan").prop("disabled", true);
            $("#no_po").prop("readonly", true);
            $("#panjang").prop("readonly", true);
            $("#lebar").prop("readonly", true)
            $("#tinggi").prop("readonly", true)
            $("#volume_jenis").prop("readonly", true)
            $("#ton_cargo").prop("readonly", true)
            $("#revton").prop("readonly", true)
            $("#qty_cargo").prop("readonly", true)
            $("#satuan_jenis").prop("readonly", true)
            $("#deskripsi_cargo").prop("readonly", true)


            $.ajax({
                url: host + 'checker/getcargotruck.php',
                data: {
                    id: id
                },
                method: 'post',
                dataType: 'json',
                success: function(data) {
                    // console.log(data);                     
                    $('#nm_company').val(data.nm_company);
                    $('#nm_barang').val(data.nm_barang);
                    $('#production').val(data.production);
                    $('#nm_kegiatan').val(data.nm_kegiatan);
                    $('#no_po').val(data.no_po);
                    $('#panjang').val(data.p_cargo);
                    $('#lebar').val(data.l_cargo);
                    $('#tinggi').val(data.t_cargo);
                    $('#volume_jenis').val(data.volume_cargo);
                    $('#ton_cargo').val(data.ton_cargo);
                    $('#revton').val(data.revton_cargo);
                    $('#qty_cargo').val(data.qty_cargo);
                    $('#satuan_jenis').val(data.satuan_cargo);
                    $('#deskripsi_cargo').val(data.deskripsi_cargo);
                }
            });
        });
    });
</script>