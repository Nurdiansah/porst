<?php
include "../fungsi/koneksi.php";
include "../fungsi/fungsi.php";

if (!isset($_GET['id'])) {
    header("location:../index.php");
}

$id = $_GET['id'];
$id = base64_decode($id);

$query = mysqli_query($koneksi, "SELECT * FROM moving s                                           
                                                JOIN client c
                                                ON c.id_client = s.id_client
                                                WHERE s.id_moving = '$id'
                                                ");
$row = mysqli_fetch_assoc($query);
$start = $row['mulai_kegiatan'];


$queryDetail = mysqli_query($koneksi, "SELECT * FROM detail_moving WHERE id_moving = '$id' AND qty_cargo >0 ");

$queryJ = mysqli_query($koneksi, "SELECT count(id_cargo) AS jumlah FROM detail_moving WHERE id_moving = '$id' AND qty_cargo >0 ");
$rowJumlah = mysqli_fetch_assoc($queryJ);
$jumlah = $rowJumlah['jumlah'];

$queryActual = mysqli_query($koneksi, "SELECT *  FROM actual_moving WHERE id_moving='$id' ORDER BY time_as ASC ");

$queryJA = mysqli_query($koneksi, "SELECT count(id_as) AS jumlah FROM actual_moving WHERE id_moving = '$id'");
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
                    <h3 class="text-center">Detail Internal Moving</h3>
                </div>
                <div class="box-body">
                    <!-- Head -->
                    <div class="row">
                        <label for="id_joborder" class=" col-sm-2 control-label">ID Job Order</label>
                        <div class="col-sm-3">
                            <input type="text" value="<?= $row['id_moving']; ?>" readonly class="form-control" name="id_joborder">
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
                        <label id="tes" for="client" class="col-sm-1 col-sm-offset-3 control-label">Alat Berat</label>
                        <div class="col-sm-3">
                            <input type="text" value="<?= $row['nm_trailer']; ?>" readonly class="form-control" name="client">
                        </div>
                    </div>
                    <br>
                    <div class="row mt-3">
                        <label id="tes" for="client" class="col-sm-2 col-sm-offset- control-label">Tanggal</label>
                        <div class="col-sm-3">
                            <input type="text" value="<?= tanggal($row['created_on']); ?>" readonly class="form-control" name="client">
                        </div>
                    </div>
                    <br>
                    <div class="row">
                        <div class="col-md-5">
                            <?php if ($jumlahActual >= 1) {  ?>
                                <button class="btn btn-success col-sm-offset-" type="button" data-toggle="collapse" data-target="#cargo" aria-expanded="false" aria-controls="collapseExample">
                                    Progres Cargo
                                </button>
                            <?php } ?>
                        </div>
                        <br><br>
                    </div>

                    <!-- Progress Cargo  -->

                    <div class="collapse" id="cargo">
                        <hr>
                        <h3 class="text-center">Progress Cargo</h3>
                        <hr>
                        <div class="table-responsive">
                            <table class="table text-center table table-striped table-hover" id="">
                                <thead>
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
                                        <th>Lokasi Awal</th>
                                        <th>Lokasi Akhir</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    $no = 1;
                                    if (mysqli_num_rows($queryActual)) {
                                        while ($rowAct = mysqli_fetch_assoc($queryActual)) : ?>
                                            <td> <?= $no; ?> </td>
                                            <td> <?= $rowAct['time_as']; ?> </td>
                                            <td> <?= $rowAct['nm_company_as']; ?> </td>
                                            <td> <?= $rowAct['nm_barang_as']; ?> </td>
                                            <td> <?= $rowAct['qty_cargo_as']; ?> </td>
                                            <td> <?= $rowAct['satuan_cargo_as']; ?> </td>
                                            <td> <?= $rowAct['volume_cargo_as']; ?> </td>
                                            <td> <?= $rowAct['ton_cargo_as']; ?> </td>
                                            <td> <?= $rowAct['revton_cargo_as']; ?> </td>
                                            <td> <?= $rowAct['lokasi_awal']; ?> </td>
                                            <td> <?= $rowAct['lokasi_akhir']; ?> </td>
                                            </tr>
                                    <?php
                                            $no++;
                                        endwhile;
                                    } ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <!--  -->

                    <br>
                    <?php if (is_null($start)) { ?>
                        <div class="alert alert-warning" role="alert">
                            <b>Loading/Offloading Truck siap di Mulai</b>
                        </div>
                    <?php } else if ($row['status_stacking'] == '2') { ?>
                        <div class="alert alert-danger" role="alert">
                            <b>Loading/Offloading Truck dalam keadaan berhenti <br>" <?= $keterangan ?> "</b>
                        </div>
                    <?php } else { ?>
                        <div class="alert alert-success" role="alert">
                            <b>Loading/Offloading Truck sedang berlangsung </b>
                        </div>
                    <?php } ?>
                    <!-- Table  -->
                    <div class="table-responsive">
                        <div id="jo_table">
                            <table class="table text-center table-striped table-hover">
                                <thead style="background-color :#B0C4DE;">
                                    <tr>
                                        <th>No</th>
                                        <th>Vendor</th>
                                        <th>Nama Barang</th>
                                        <th>Qty</th>
                                        <th>Satuan</th>
                                        <th>M<sup>3</sup></th>
                                        <th>Ton</th>
                                        <th>RevTon</th>
                                        <th>Aksi</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <?php
                                        $no = 1;
                                        if (mysqli_num_rows($queryDetail)) {
                                            while ($row2 = mysqli_fetch_assoc($queryDetail)) :

                                        ?>
                                                <td> <?= $no; ?> </td>
                                                <td> <?= $row2['nm_company']; ?> </td>
                                                <td> <?= $row2['nm_barang']; ?> </td>
                                                <td> <?= $row2['qty_cargo']; ?> </td>
                                                <td> <?= $row2['satuan_cargo']; ?> </td>
                                                <td> <?= $row2['volume_cargo']; ?> </td>
                                                <td> <?= $row2['ton_cargo']; ?> </td>
                                                <td> <?= $row2['revton_cargo']; ?> </td>
                                                <td>
                                                    <button class="btn btn-success modalLihat" data-toggle="modal" data-target="#myModal" data-id="<?= $row2['id_cargo']; ?>"> <i class="fa fa-search-plus"></i></button>
                                                </td>
                                    </tr>
                            <?php $no++;
                                            endwhile;
                                        } ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <!-- Akhir Table -->

                    <!-- Awal Modal Create -->
                    <div id="myModal" class="modal fade" role="dialog">
                        <div class="modal-dialog">
                            <!-- konten modal-->
                            <div class="modal-content">
                                <!-- heading modal -->
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title">Add Cargo</h4>
                                </div>
                                <!-- body modal -->
                                <div class="modal-body">
                                    <div class="perhitungan">
                                        <form method="post" name="form" id="insert_form" enctype="multipart/form-data" action="" class="form-horizontal">
                                            <div class="box-body">
                                                <input type="hidden" required class="form-control" id="id_moving" name="id_moving" value="<?= $id ?>">
                                                <div class="form-group">
                                                    <label for="nm_jenis" class="col-sm-offset-1 col-sm-3 control-label">Vendor</label>
                                                    <div class="col-sm-5">
                                                        <input type="text" required class="form-control" id="nm_company" name="nm_company" placeholder="Vendor">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="nm_barang" class="col-sm-offset-1 col-sm-3 control-label">Nama Barang</label>
                                                    <div class="col-sm-5">
                                                        <input type="text" class="form-control" id="nm_barang" name="nm_barang" placeholder="Nama Barang">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="production" class="col-sm-offset-1 col-sm-3 control-label">Production Drilling</label>
                                                    <div class="col-sm-5">
                                                        <input type="text" class="form-control" id="production" name="production" placeholder="Production">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="nm_jenis" class="col-sm-offset-1 col-sm-3 control-label">PO #</label>
                                                    <div class="col-sm-5">
                                                        <input type="text" required class="form-control" id="no_po" name="no_po">
                                                    </div>
                                                </div>
                                                <hr>
                                                <div class="dimensi">
                                                    <div class="form-group">
                                                        <label for="nm_jenis" id="label-dimensi" class="col-sm-offset-1 col-sm-6 control-label">Dimensi</label>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="p" id="label-panjang" class="col-sm-offset-1 col-sm-3 control-label">Panjang</label>
                                                        <div class="col-sm-5">
                                                            <input type="text" autocomplete="off" required value="0" class="form-control" name="p" id="panjang">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="l" id="label-lebar" class="col-sm-offset-1 col-sm-3 control-label">Lebar</label>
                                                        <div class="col-sm-5">
                                                            <input type="text" autocomplete="off" required value="0" class="form-control" name="l" id="lebar">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="t" id="label-tinggi" class="col-sm-offset-1 col-sm-3 control-label">Tinggi</label>
                                                        <div class="col-sm-5">
                                                            <input type="text" autocomplete="off" required value="0" class="form-control" name="t" id="tinggi">
                                                        </div>
                                                    </div>
                                                    <div class="satuan">
                                                        <div class="form-group">
                                                            <label id="tes" id="label-volume" for="volume_jenis" class="col-sm-offset-1 col-sm-3 control-label">Volume (CBM)</label>
                                                            <div class="col-sm-5 ">
                                                                <input type="text" readonly class="form-control" value="0" id="volume_jenis" name="volume_jenis">
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label id="tes" for="ton_cargo" class="col-sm-offset-1 col-sm-3 control-label">Ton</label>
                                                            <div class="col-sm-5">
                                                                <input type="number" min="0" value="0" required class="form-control " id="ton_cargo" name="ton_cargo" step="any">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <hr>
                                                    <div class="form-group ">
                                                        <label for="qty_cargo" class="col-sm-offset-1 col-sm-3 control-label">Quantity</label>
                                                        <div class="col-sm-5">
                                                            <input type="number" min="1" value="0" required class="form-control" id="qty_cargo" name="qty_cargo">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="total_volume" class="col-sm-offset-1 col-sm-3 control-label">Total Volume</label>
                                                        <div class="col-sm-5 ">
                                                            <input type="text" readonly class="form-control" value="0" id="total_volume" name="total_volume">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="total_ton" class="col-sm-offset-1 col-sm-3 control-label">Total Ton</label>
                                                        <div class="col-sm-5 ">
                                                            <input type="text" readonly class="form-control" value="0" id="total_ton" name="total_ton">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label id="tes" id="" for="" class="col-sm-offset-1 col-sm-3 control-label">RevTon</label>
                                                        <div class="col-sm-5 ">
                                                            <input type="text" readonly class="form-control" value="0" id="revton" name="revton">
                                                        </div>
                                                    </div>
                                                    <div class="form-group ">
                                                        <label for="satuan_jenis" class="col-sm-offset-1 col-sm-3 control-label">Satuan</label>
                                                        <div class="col-sm-5 ">
                                                            <input type="text" class="form-control" id="satuan_jenis" name="satuan_jenis">
                                                        </div>
                                                    </div>
                                                </div>
                                                <hr>
                                                <div class="form-group">
                                                    <label id="tes" for="remarks_cargo" class="col-sm-offset-1 col-sm-3 control-label">Description Of Work</label>
                                                    <div class="col-sm-5">
                                                        <input type="text" required class="form-control" id="deskripsi_cargo" name="deskripsi_cargo" placeholder="Description">
                                                    </div>
                                                </div>
                                                <div class=" modal-footer">
                                                    <input type="submit" id="insert" name="add" class="btn btn-primary col-sm-offset-1 submit" value="Tambah">
                                                    &nbsp;
                                                    <input type="reset" class="btn btn-danger reset" data-dismiss="modal" value="Cancel">
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--  Akhir Modal-->
                    </div>
                </div>
            </div>
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

    $(".perhitungan").keyup(function() {

        //ambil inputan panjang
        var panjang = parseFloat($("#panjang").val())

        // ambil inputan lebar
        var lebar = parseFloat($("#lebar").val())

        // ambil inputan tinggi
        var tinggi = parseFloat($("#tinggi").val())

        var vlm = panjang * lebar * tinggi;
        var nvlm = vlm.toFixed(2);
        $("#volume").attr("value", vlm);
        document.form.volume_jenis.value = nvlm;

        var ton_cargo = parseFloat($("#ton_cargo").val())

        var qty_cargo = parseFloat($("#qty_cargo").val())

        if (qty_cargo >= 0) {
            var tvlm = (vlm * qty_cargo).toFixed(2);
            var tvlm2 = (vlm * qty_cargo);
            document.form.total_volume.value = tvlm;

            var tc = (ton_cargo * qty_cargo).toFixed(2);
            var tc2 = (ton_cargo * qty_cargo);
            document.form.total_ton.value = tc;

            if (tc2 > tvlm2) {
                var revton = tc;
                document.form.revton.value = revton;
            } else if (tc2 < tvlm2) {
                var revton = tvlm;
                document.form.revton.value = revton;
            }

        }



    });

    // Modal Tambah
    $(function() {
        $('.modalTambah').on('click', function() {

            $('.modal-title').html('Add Cargo');
            $('.modal-footer input[type=reset]').val('Cancel');
            $(".submit").show();
            $(".satuan").show();

            $('.submit').val('Create');

            // delete data.nm_company;

            $("#nm_company").prop("readonly", false);
            $("#nm_barang").prop("readonly", false);
            $("#production").prop("readonly", false);
            $("#no_po").prop("readonly", false);
            $("#panjang").prop("readonly", false);
            $("#lebar").prop("readonly", false)
            $("#tinggi").prop("readonly", false)
            $("#volume_jenis").prop("readonly", true)
            $("#ton_cargo").prop("readonly", false)
            $("#revton").prop("readonly", true)
            $("#qty_cargo").prop("readonly", false)
            $("#satuan_jenis").prop("readonly", false)
            $("#deskripsi_cargo").prop("readonly", false)

            $('.modal-body form').attr('action', host + 'checker/add_dmoving.php')




        });
    });

    // Modal Lihat
    $(function() {
        $('.modalLihat').on('click', function() {

            $('.modal-title').html('Detail Cargo');
            $('.modal-footer input[type=reset]').val('Tutup');
            $(".submit").hide();
            $(".satuan").hide(); //cbm dan ton satuan

            const id = $(this).data('id');

            // console.log(id);

            $("#nm_company").prop("readonly", true);
            $("#nm_barang").prop("readonly", true);
            $("#production").prop("readonly", true);
            $("#no_po").prop("readonly", true);
            $("#panjang").prop("readonly", true);
            $("#lebar").prop("readonly", true)
            $("#tinggi").prop("readonly", true)
            $("#total_volume").prop("readonly", true)
            $("#total_ton").prop("readonly", true)
            $("#revton").prop("readonly", true)
            $("#qty_cargo").prop("readonly", true)
            $("#satuan_jenis").prop("readonly", true)
            $("#deskripsi_cargo").prop("readonly", true)


            $.ajax({
                url: host + 'checker/getcargomoving.php',
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
                    $('#no_po').val(data.no_po);
                    $('#panjang').val(data.p_cargo);
                    $('#lebar').val(data.l_cargo);
                    $('#tinggi').val(data.t_cargo);
                    $('#total_volume').val(data.volume_cargo);
                    $('#total_ton').val(data.ton_cargo);
                    $('#revton').val(data.revton_cargo);
                    $('#qty_cargo').val(data.qty_cargo);
                    $('#satuan_jenis').val(data.satuan_cargo);
                    $('#deskripsi_cargo').val(data.deskripsi_cargo);
                }
            });
        });
    });

    // Modal Update
    $(function() {
        var vlm = panjang * lebar * tinggi;
        var nvlm = vlm.toFixed(2);
        $('.modalUpdate').on('click', function() {

            const id = $(this).data('id');



            $.ajax({
                url: host + 'checker/getcargomoving.php',
                data: {
                    id: id
                },
                method: 'post',
                dataType: 'json',
                success: function(data) {
                    // console.log(data);      
                    $('#nm_barang_update').val(data.nm_barang);
                    $('#id_cargo_update').val(data.id_cargo);
                    var mx = data.qty_cargo;
                    // $('.modal-footer input[type=reset]').val('Cancel');    
                    $(".qty-update").attr({
                        "max": mx
                    });
                }
            });

            // console.log(kegiatan);

        });

    });
</script>