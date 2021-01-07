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
                        <label id="tes" for="client" class="col-sm-1 col-sm-offset-3 control-label">Tanggal</label>
                        <div class="col-sm-3">
                            <input type="text" value="<?= tanggal($row['created_on']); ?>" readonly class="form-control" name="client">
                            <br>
                            <a target="_blank" href="../assets/tcpdf/cetak_tallysheettruck.php?id=<?= $id; ?>" class="btn btn-success"><i class="fa fa-print"></i> Tally Sheet </a>
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
                                <td colspan="8">
                                    <h3><b>Total Cargo</b></h3>
                                </td>
                                <td>
                                    <h3><b><?= $row['total_cargo']; ?></b></h3>
                                </td>
                                <td></td>
                            </tr>
                        </table>
                    </div>
                    <!--  -->

                    <br>
                </div>
            </div>
        </div>
        <br>
        <br>
        <div class="col-sm-offset-9 col-sm-3 control-label">
            <h4> Konfirmasi Job Order </h4>
            <button type="button" class="btn btn-success" data-toggle="modal" data-target="#setuju">Approve</button></span></a>
            <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#tolak">Reject</button></span></a>
        </div>

        <!-- Modal Tolak  -->
        <div id="setuju" class="modal fade" role="dialog">
            <div class="modal-dialog">
                <!-- konten modal-->
                <div class="modal-content">
                    <!-- heading modal -->
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h3 class="modal-title">Konfirmasi</h3>
                    </div>
                    <!-- body modal -->
                    <div class="modal-body">
                        <form method="post" enctype="multipart/form-data" action="setuju_jotruck.php" class="form-horizontal">
                            <div class="box-body">
                                <div class="form-group ">

                                    <div class="col-sm-4">
                                        <input type="hidden" value="<?= $id; ?>" class="form-control" name="id_jotruck" readonly>
                                    </div>
                                </div>
                                <h4 class="text-center">Apa anda yakin menyetujui ?</h4>
                                <br>
                                <div class=" modal-footer">
                                    <button class="btn btn-success" type="submit" name="simpan"> Ya </button></span></a>

                                    &nbsp;
                                    <input type="reset" class="btn btn-danger" data-dismiss="modal" value="Batal">
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- Akhir Modal Tolak  -->

        <!-- Modal Tolak  -->
        <div id="tolak" class="modal fade" role="dialog">
            <div class="modal-dialog">
                <!-- konten modal-->
                <div class="modal-content">
                    <!-- heading modal -->
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Alasan Penolakan </h4>
                    </div>
                    <!-- body modal -->
                    <div class="modal-body">
                        <form method="post" enctype="multipart/form-data" action="tolak_jotruck.php" class="form-horizontal">
                            <div class="box-body">
                                <div class="form-group ">

                                    <div class="col-sm-4">
                                        <input type="hidden" value="<?= $id; ?>" class="form-control" name="id_jotruck" readonly>
                                    </div>
                                </div>

                                <div class="mb-3">
                                    <label for="validationTextarea">Komentar</label>
                                    <textarea rows="8" class="form-control is-invalid" name="komentar" id="validationTextarea" required>@<?php echo $Nama ?> : </textarea>
                                    <div class="invalid-feedback">
                                        Please enter a message in the textarea.
                                    </div>
                                </div>
                                <div class=" modal-footer">
                                    <button class="btn btn-success" type="submit" name="simpan">Kirim</button></span></a>

                                    &nbsp;
                                    <input type="reset" class="btn btn-danger" data-dismiss="modal" value="Batal">
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- Akhir Modal Tolak  -->
</section>





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