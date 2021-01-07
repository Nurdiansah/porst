<?php
include "../fungsi/koneksi.php";
include "../fungsi/fungsi.php";

if (isset($_GET['aksi']) && isset($_GET['id'])) {
    //die($id = $_GET['id']);
    $id = $_GET['id'];

    if ($_GET['aksi'] == 'edit') {
        header("location:?p=edituser&id=$id");
    } else if ($_GET['aksi'] == 'hapus') {
        hapusJenisBarang($id);
        // $query = mysqli_query($koneksi,"DELETE FROM jenis_barang where id_jenis=$id");

        // echo "<div class='alert alert-danger' role='alert'> Data berhasil di hapus </div>";
    }
}

// var_dump($Area);
// die;

$query = mysqli_query($koneksi, "SELECT * FROM jenis_barang WHERE area = '$Area' ORDER BY nm_jenis ASC");

?>

<!-- Conten header -->
<section class="content-header">
    <h1>
        Jenis Barang
        <small>Jenis dan ukuran barang-barang di pelabuhan</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="index.php"><i class="fa fa-dashboard"></i> Dashboard</a></li>
        <li class="active">Jenis Barang</li>
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
                    <h3 class="text-center">Daftar Jenis Barang</h3>
                </div>
                <div class="box-body">
                    <div class="row">
                        <div class="col-md-2">
                            <button type="button" class="btn btn-primary col-sm-offset- modalTambah" data-toggle="modal" data-target="#myModal">Tambah Data</button>
                        </div>
                        <br><br>
                    </div>
                    <div class="table-responsive">
                        <table class="table text-center table table-striped table-hover" id="material">

                            <thead style="background-color :#B0C4DE;">
                                <tr>
                                    <th>No</th>
                                    <th>Nama</th>
                                    <th colspan="3">Dimensi</th>
                                    <th>Volume (cbm)</th>
                                    <th>Satuan</th>
                                    <th>Aksi</th>
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
                                            <td> <?= $row['nm_jenis']; ?> </td>
                                            <td> <?= $row['p']; ?> </td>
                                            <td> <?= $row['l']; ?> </td>
                                            <td> <?= $row['t']; ?> </td>
                                            <td> <?= $row['volume_jenis']; ?> </td>
                                            <td> <?= $row['satuan_jenis']; ?> </td>
                                            <td>
                                                <button class="btn btn-info modalLihat" data-toggle="modal" data-target="#myModal" data-id="<?= $row['id_jenis']; ?>"> <i class="fa fa-search-plus"></i> </button>
                                                <button class="btn btn-success modalEdit" data-toggle="modal" data-target="#myModal" data-id="<?= $row['id_jenis']; ?>"> <i class="fa fa-edit"></i> </button>
                                                <a href="?p=jenis_barang&aksi=hapus&id=<?= $row['id_jenis']; ?>" onclick="javascript: return confirm('Anda yakin ingin menghapus <?= $row['nm_jenis']; ?>?')"><span data-placement='top' data-toggle='tooltip' title='Hapus'><button class="btn btn-danger"> <i class="fa fa-trash"></i> </button></span></a>
                                            </td>
                                </tr>
                        <?php $no++;
                                        endwhile;
                                    } ?>
                            </tbody>
                        </table>
                    </div>
                </div>
                <!--  -->
                <div id="myModal" class="modal fade" role="dialog">
                    <div class="modal-dialog">
                        <!-- konten modal-->
                        <div class="modal-content">
                            <!-- heading modal -->
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <h4 class="modal-title">Tambah Jenis Barang</h4>
                            </div>
                            <!-- body modal -->
                            <div class="modal-body">
                                <div class="perhitungan">
                                    <form method="post" name="form" enctype="multipart/form-data" action="add_jenis.php" class="form-horizontal">
                                        <div class="box-body">
                                            <div class="form-group">
                                                <input type="hidden" id="id_jenis" name="id_jenis">
                                                <input type="hidden" name="area" value="<?= $Area ?>">
                                                <label for="nm_jenis" class="col-sm-offset-1 col-sm-3 control-label">Nama </label>
                                                <div class="col-sm-5">
                                                    <input type="text" required class="form-control" id="nm_jenis" name="nm_jenis" placeholder="Nama Barang">
                                                </div>
                                            </div>
                                            <hr>
                                            <div class="form-group">
                                                <label for="nm_jenis" class="col-sm-offset-1 col-sm-6 control-label">Dimensi</label>
                                            </div>
                                            <div class="form-group">
                                                <label for="p" class="col-sm-offset-1 col-sm-3 control-label">Panjang</label>
                                                <div class="col-sm-5">
                                                    <input type="text" required class="form-control" name="p" id="panjang">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="l" class="col-sm-offset-1 col-sm-3 control-label">Lebar</label>
                                                <div class="col-sm-5">
                                                    <input type="text" required class="form-control" name="l" id="lebar">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="t" class="col-sm-offset-1 col-sm-3 control-label">Tinggi</label>
                                                <div class="col-sm-5">
                                                    <input type="text" required class="form-control" name="t" id="tinggi">
                                                </div>
                                            </div>
                                            <hr>
                                            <div class="form-group">
                                                <label id="tes" for="volume_jenis" class="col-sm-offset-1 col-sm-3 control-label">Volume (CBM)</label>
                                                <div class="col-sm-5 ">
                                                    <input type="text" readonly class="form-control" id="volume_jenis" name="volume_jenis">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label id="tes" for="satuan_jenis" class="col-sm-offset-1 col-sm-3 control-label">Satuan Jenis</label>
                                            <div class="col-sm-5 ">
                                                <input type="text" required class="form-control" id="satuan_jenis" name="satuan_jenis" placeholder="Satuan Barang">
                                            </div>
                                        </div>
                                        <div class=" modal-footer">
                                            <input type="submit" name="add" class="btn btn-primary col-sm-offset-1 submit" value="Tambah">
                                            &nbsp;
                                            <input type="reset" class="btn btn-danger reset" data-dismiss="modal" value="Batal">
                                        </div>
                                </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <!--  -->
            </div>
        </div>
    </div>

</section>

<?php
$host = host();

?>

<script>
    var host = '<?= $host ?>';

    $(function() {
        $("#material").DataTable({
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
        vlm.toFixed(3)
        $("#volume").attr("value", vlm);
        document.form.volume_jenis.value = vlm;


    });

    $(function() {
        $('.modalTambah').on('click', function() {

            $('.modal-title').html('Tambah Jenis Barang');
            $('.modal-footer input[type=reset]').val('Batal');
            $(".submit").show();
            $('.submit').val('Tambah');

            $("#nm_jenis").prop("readonly", false);
            $("#panjang").prop("readonly", false);
            $("#lebar").prop("readonly", false);
            $("#tinggi").prop("readonly", false);
            $("#satuan_jenis").prop("readonly", false);

            console.log(host);
            $('.modal-body form').attr('action', host + 'admin_operational/add_jenis.php')

        });
    });

    $(function() {
        $('.modalEdit').on('click', function() {

            $('.modal-title').html('Edit Jenis Barang');
            $('.modal-footer input[type=reset]').val('Batal');
            $(".submit").show();
            $('.submit').val('Edit');

            $("#nm_jenis").prop("readonly", false);
            $("#panjang").prop("readonly", false);
            $("#lebar").prop("readonly", false);
            $("#tinggi").prop("readonly", false);
            $("#satuan_jenis").prop("readonly", false);

            $('.modal-body form').attr('action', host + 'admin_operational/ubahjenis.php')

            const id = $(this).data('id');

            $.ajax({
                url: host + 'admin_operational/getubahjenis.php',
                data: {
                    id: id
                },
                method: 'post',
                dataType: 'json',
                success: function(data) {
                    console.log(data);
                    $('#id_jenis').val(data.id_jenis);
                    $('#nm_jenis').val(data.nm_jenis);
                    $('#panjang').val(data.p);
                    $('#lebar').val(data.l);
                    $('#tinggi').val(data.t);
                    $('#volume_jenis').val(data.volume_jenis);
                    $('#satuan_jenis').val(data.satuan_jenis);
                }
            });
        });
    });

    $(function() {
        $('.modalLihat').on('click', function() {

            $('.modal-title').html('Jenis Barang');
            $('.modal-footer input[type=reset]').val('Tutup');
            $(".submit").hide();

            const id = $(this).data('id');

            // console.log(id);

            $("#nm_jenis").prop("readonly", true);
            $("#panjang").prop("readonly", true);
            $("#lebar").prop("readonly", true);
            $("#tinggi").prop("readonly", true);
            $("#volume_jenis").prop("readonly", true);
            $("#satuan_jenis").prop("readonly", true);



            $.ajax({
                url: host + 'admin_operational/getubahjenis.php',
                data: {
                    id: id
                },
                method: 'post',
                dataType: 'json',
                success: function(data) {
                    console.log(data);
                    $('#id_jenis').val(data.id_jenis);
                    $('#nm_jenis').val(data.nm_jenis);
                    $('#panjang').val(data.p);
                    $('#lebar').val(data.l);
                    $('#tinggi').val(data.t);
                    $('#volume_jenis').val(data.volume_jenis);
                    $('#satuan_jenis').val(data.satuan_jenis);
                }
            });
        });
    });
</script>