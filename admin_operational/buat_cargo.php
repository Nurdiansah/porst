<?php
include "../fungsi/koneksi.php";
include "../fungsi/fungsi.php";

if (!isset($_GET['id'])) {
    header("location:index.php");
}

$id_joborder = $_GET['id'];

$err = "";

if (isset($_GET['aksi']) && isset($_GET['id'])) {
    $id = $_GET['id'];

    if ($_GET['aksi'] == 'edit') {
        header("location:?p=edituser&id=$id");
    } else if ($_GET['aksi'] == 'hapus') {
        hapusCargo($id);
    }
}

$query = mysqli_query($koneksi, "SELECT MAX(id_cargo) from detail_joborder");
$queryView = mysqli_query($koneksi, "SELECT d.id_cargo, d.doc_no, d.qty_cargo, j.satuan_jenis, j.nm_jenis, d.rincian_cargo, 
                                        d.m3_cargo, d.ton_cargo, d.revton_cargo, d.remarks_cargo
                                        FROM detail_joborder d
                                        JOIN jenis_barang j
                                        ON j.id_jenis = d.id_jenis
                                        WHERE d.id_joborder = '$id_joborder' ");

$id_cargo = mysqli_fetch_array($query);

$query2 = mysqli_query($koneksi, "SELECT * FROM job_order jo
                                               JOIN client c
                                               ON c.id_client = jo.id_client 
                                                WHERE jo.id_joborder='$id_joborder' ");
$row2 = mysqli_fetch_assoc($query2);
$idJoborder = $row2['id_joborder'];
$kegiatan = $row2['nm_kegiatan'];
$statusJo = $row2['status_jo'];
$mulai_kegiatan = $row2['mulai_kegiatan'];
$mulai_kegiatan = date("d-F-Y H:i:s", strtotime($row2['mulai_kegiatan']));
$finish_kegiatan = date("d-F-Y H:i:s", strtotime($row2['finish_kegiatan']));

if ($id_cargo) {

    $nilaikode = substr($id_cargo[0], 2);

    $kode = (int) $nilaikode;

    //setiap kode ditambah 1
    $kode = $kode + 1;
    $kode_otomatis = "IC" . str_pad($kode, 6, "0", STR_PAD_LEFT);
} else {
    $kode_otomatis = "IC000001";
}

?>
<!-- Conten header -->
<section class="content-header">
    <h1>
        Buat Cargo Stevedoring Vessel
        <small>Buat Cargo Stevedoring Vessel di PT. Nurdiansah Bongkar Muat </small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="index.php"><i class="fa fa-dashboard"></i> Dashboard</a></li>
        <li><a href="index.php?p=lihat_jovessel"> Stevedoring Vessel </a></li>
        <li><a href="index.php?p=draf_lo"> Draf </a></li>
        <li class="active"><?= $row2['kode_jovessel']; ?></li>
    </ol>
    <h3 class="text-right mb-1" id="jam"> </h3>
</section>

<section class="content">
    <div class="row">
        <div class="col-sm-12 col-xs-12">
            <div class="box box-primary">
                <div class="box-header with-border">
                    <div class="col-sm-offset-">
                        <button class="btn btn-warning " type="button" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
                            Detail Job Order
                        </button>
                    </div>
                </div>
                <div class="collapse" id="collapseExample">

                    <!-- Detail Job Order -->
                    <div class="box-header with-border">
                        <h3 class="text-center">Detail Job Order Vessel</h3>
                    </div>
                    <form method="post" enctype="multipart/form-data" class="form-horizontal">
                        <div class="box-body">
                            <div class="form-group ">
                                <label for="id_joborder" class=" col-sm-2 control-label">ID Job Order</label>
                                <div class="col-sm-3">
                                    <input type="text" value="<?= $row2['kode_jovessel']; ?>" readonly class="form-control" name="id_joborder">
                                </div>
                                <label id="tes" for="client" class="col-sm-3 control-label">Client</label>
                                <div class="col-sm-3">
                                    <input type="text" value="<?= $row2['nm_client']; ?>" readonly class="form-control" name="client">
                                </div>
                            </div>
                            <div class="form-group">
                                <label id="tes" for="nm_kapal" class=" col-sm-2 control-label">Nama Kapal</label>
                                <div class="col-sm-3">
                                    <input type="text" value="<?= $row2['nm_kapal']; ?>" readonly class="form-control" name="nm_kapal">
                                </div>
                                <!-- </div>
                        <div class="form-group"> -->
                                <label id="tes" for="agen_kapal" class=" col-sm-3 control-label">Agen Kapal</label>
                                <div class="col-sm-3">
                                    <input type="text" value="<?= $row2['agen_kapal']; ?>" readonly class="form-control" name="agen_kapal">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="tgl_masuk" class=" col-sm-2 control-label">Tanggal Masuk</label>
                                <div class="col-sm-3">
                                    <input type="text" value="<?= tanggal_indo($row2['tgl_masuk']); ?>" readonly class="form-control tanggal" name="tgl_masuk">
                                </div>
                                <!-- </div> -->
                                <!-- <div class="form-group "> -->
                                <label for="jm_masuk" class="col-sm-3 control-label">Jam Masuk</label>
                                <div class="col-sm-3">
                                    <input type="text" value="<?= $row2['jm_masuk']; ?>" readonly class="form-control" name="jm_masuk">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="tgl_keluar" class="col-sm-2 control-label">Tanggal Keluar</label>
                                <div class="col-sm-3">
                                    <input type="text" value="<?= $row2['tgl_keluar']; ?>" readonly class="form-control tanggal" name="tgl_keluar">
                                </div>
                                <!-- </div>
                            <div class="form-group "> -->
                                <label for="jm_keluar" class="col-sm-3 control-label">Jam Keluar</label>
                                <div class="col-sm-3">
                                    <input type="text" value="<?= $row2['jm_keluar']; ?>" readonly class="form-control" name="jm_keluar">
                                </div>
                            </div>
                            <div class="form-group">
                                <label id="tes" for="pelabuhan_asal" class="col-sm-2 control-label">Pelabuhan Asal</label>
                                <div class="col-sm-3">
                                    <input type="text" value="<?= $row2['pelabuhan_asal']; ?>" readonly class="form-control" name="pelabuhan_asal">
                                </div>
                                <!-- </div>
                            <div class="form-group"> -->
                                <label id="tes" for="pelabuhan_tujuan" class="col-sm-3 control-label">Pelabuhan Tujuan</label>
                                <div class="col-sm-3">
                                    <input type="text" value="<?= $row2['pelabuhan_tujuan']; ?>" readonly class="form-control" name="pelabuhan_tujuan">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="sandar_kapal" class="col-sm-2 control-label">Sandar Kapal</label>
                                <div class="col-sm-3">
                                    <input type="text" value="<?= $row2['sandar_kapal']; ?>" readonly class="form-control" name="sandar_kapal">
                                </div>
                                <!-- </div>
                            <div class="form-group"> -->
                                <label id="tes" for="alat_berat" class="col-sm-3 control-label">Alat Berat</label>
                                <div class="col-sm-3">
                                    <input type="text" value="<?= $row2['alat_berat']; ?>" readonly class="form-control" name="alat_berat">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="nm_kegiatan" class="col-sm-2 control-label">Kegiatan</label>
                                <div class="col-sm-3">
                                    <input type="text" value="<?= $row2['nm_kegiatan']; ?>" readonly class="form-control" name="nm_kegiatan">
                                </div>
                                <?php
                                if ($row2['alat_berat2'] != 'NULL') { ?>
                                    <div class="col-sm-offset-3  col-sm-3">
                                        <input type="text" value="<?= $row2['alat_berat2']; ?>" readonly class="form-control" name="alat_berat2">
                                    </div>
                                <?php   } ?>
                            </div>
                            <div class="form-group">
                                <?php if ($row2['alat_berat3'] != 'NULL') { ?>
                                    <div class="col-sm-offset-8 col-sm-3">
                                        <input type="text" value="<?= $row2['alat_berat3']; ?>" readonly class="form-control" name="alat_berat3">
                                    </div>
                                <?php   } ?>
                            </div>
                            <div class="form-group">
                                <?php if ($row2['alat_berat4'] != 'NULL') { ?>
                                    <div class="col-sm-offset-8 col-sm-3">
                                        <input type="text" value="<?= $row2['alat_berat4']; ?>" readonly class="form-control" name="alat_berat4">
                                    </div>
                                <?php   } ?>
                            </div>
                            <div class="form-group">
                                <?php if ($row2['alat_berat5'] != 'NULL') { ?>
                                    <div class="col-sm-offset-8 col-sm-3">
                                        <input type="text" value="<?= $row2['alat_berat5']; ?>" readonly class="form-control" name="alat_berat5">
                                    </div>
                                <?php   } ?>
                            </div>
                            <div class="form-group">
                                <?php if ($row2['alat_beratsewa'] != 'NULL') { ?>
                                    <div class="col-sm-offset-8 col-sm-3">
                                        <input type="text" value="<?= $row2['alat_beratsewa']; ?>" readonly class="form-control" name="alat_beratsewa">
                                    </div>
                                <?php   } ?>
                            </div>
                        </div>
                    </form>
                </div>
                <!-- akhir detail joborder -->
                <hr>

                <!-- <?php
                        if (!isset($_COOKIE['msg'])) {
                            echo "<div class='row' style='margin-top: 15px';>
                        <div class='col-md-12'>
                                <div class='box box-solid bg-red'>
                                    <div class='box-header'>
                                        <h3 class='box-title'>Data Di Hapus!</h3>
                                    </div>
                                    <div class='box-body'>
                                        <p>Data Berhasil di hapus</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>";
                        }

                        ?> -->

                <div class="box-header with-border">
                    <h3 class="text-center">Manifest Stevedoring Vessel</h3>
                    <button type="button" class="btn btn-primary col-sm-offset- modalTambah" data-toggle="modal" data-target="#myModal">Tambah Cargo</button>
                </div>
                <div class="table-responsive">
                    <table class="table text-center table table-striped table-hover" id="jobordervessel">
                        <thead>
                            <tr>
                                <th>No </th>
                                <th>Doc No./ Police</th>
                                <th>Description</th>
                                <th>Quantity</th>
                                <th>Satuan</th>
                                <th>M<sup>3</sup></th>
                                <th>Ton</th>
                                <th>RevTon</th>
                                <th>Remarks</th>
                                <th>Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <?php
                                $no = 1;
                                if (mysqli_num_rows($queryView)) {
                                    while ($row = mysqli_fetch_assoc($queryView)) :
                                ?>
                                        <td> <?= $no; ?> </td>
                                        <td> <?= $row['doc_no']; ?> </td>
                                        <td> <?= $row['rincian_cargo']; ?> </td>
                                        <td> <?= $row['qty_cargo']; ?> </td>
                                        <td> <?= $row['satuan_jenis']; ?> </td>
                                        <td> <?= $row['m3_cargo']; ?> </td>
                                        <td> <?= $row['ton_cargo']; ?> </td>
                                        <td> <?= $row['revton_cargo']; ?> </td>
                                        <td> <?= $row['remarks_cargo']; ?> </td>
                                        <td>
                                            <button class="btn btn-success modalEdit" data-toggle="modal" data-target="#myModal" data-id="<?= $row['id_cargo']; ?>"> <i class="fa fa-edit"></i> </button>
                                            <a href="?p=buat_cargo&aksi=hapus&id=<?= $row['id_cargo']; ?>" onclick="javascript: return confirm('Anda yakin ingin menghapus <?= $row['rincian_cargo']; ?>?')"><span data-placement='top' data-toggle='tooltip' title='Hapus'><button class="btn btn-danger"> <i class="fa fa-trash"></i> </button></span></a>
                                        </td>
                            </tr>
                    <?php $no++;
                                    endwhile;
                                } ?>
                        </tbody>
                    </table>
                </div>
                <div class="row">
                    <div class="col-md-2 col-sm-offset-10 ">
                        <button type="button" class="btn btn-primary Done" data-toggle="modal" data-target="#modalDone">Done</button>

                    </div>
                    <br><br>
                </div>
                <!-- Mulai Modal -->
                <div id="myModal" class="modal fade" role="dialog">
                    <div class="modal-dialog">
                        <!-- konten modal-->
                        <div class="modal-content">
                            <!-- heading modal -->
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <h4 class="modal-title">Tambah Cargo</h4>
                            </div>
                            <!-- body modal -->
                            <div class="modal-body">
                                <form method="post" name="form" enctype="multipart/form-data" action="add_cargo.php" class="form-horizontal">
                                    <div class="box-body">
                                        <input type="hidden" id="id_joborder" name="id_joborder" value="<?= $id_joborder ?>">
                                        <input type="hidden" value="<?= $kode_otomatis ?>" class="form-control" name="id_cargo" readonly>
                                        <input type="hidden" class="form-control" id="id_cargo_edit" name="id_cargo_edit">
                                        <div class="form-group ">
                                            <label for="jenis" class="col-sm-offset-1 col-sm-3 control-label">Jenis Barang</label>
                                            <div class="col-sm-5">
                                                <select id="id_jenis" name="id_jenis" required>
                                                    <option value="">&nbsp;&nbsp;&nbsp;--- Pilih Jenis Barang --- &nbsp;&nbsp;</option>
                                                    <?php
                                                    $queryJB = mysqli_query($koneksi, "SELECT * FROM jenis_barang ORDER BY  nm_jenis  ASC ");
                                                    if (mysqli_num_rows($queryJB)) {
                                                        while ($rowJB = mysqli_fetch_assoc($queryJB)) :
                                                    ?>
                                                            <option value="<?= $rowJB['id_jenis']; ?>" type="checkbox"><?= $rowJB['nm_jenis']; ?></option>
                                                    <?php endwhile;
                                                    } ?>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="doc_no" class="col-sm-offset-1 col-sm-3 control-label">Doc No.</label>
                                            <div class="col-sm-5">
                                                <input type="text" required class="form-control" placeholder="Nomor Cargo" name="doc_no" id="doc_no">
                                            </div>
                                        </div>
                                        <div class="form-group ">
                                            <label for="rincian_cargo" class="col-sm-offset-1 col-sm-3 control-label">Description</label>
                                            <div class="col-sm-8">
                                                <textarea type="text" required class="form-control" id="rincian_cargo" name="rincian_cargo" placeholder="Deskripsi Barang"></textarea>
                                            </div>
                                        </div>
                                        <div class="form-group ">
                                            <label for="qty_cargo" class="col-sm-offset-1 col-sm-3 control-label">Quantity</label>
                                            <div class="col-sm-5">
                                                <input type="number" min="0" required class="form-control" id="qty_cargo" name="qty_cargo">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label id="tes" for="ton_cargo" class="col-sm-offset-1 col-sm-3 control-label">Ton</label>
                                            <div class="col-sm-5">
                                                <input type="number" min="0" required class="form-control " id="ton_cargo" name="ton_cargo" step="any">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label id="tes" for="remarks_cargo" class="col-sm-offset-1 col-sm-3 control-label">Keterangan</label>
                                            <div class="col-sm-5">
                                                <input type="text" required class="form-control" id="remarks_cargo" name="remarks_cargo" placeholder="Pemilik Barang">
                                            </div>
                                        </div>
                                        <div class=" modal-footer">
                                            <input type="submit" name="simpan" class="btn btn-primary col-sm-offset-1 " value="Tambah">
                                            &nbsp;
                                            <input type="reset" class="btn btn-danger" data-dismiss="modal" value="Batal">
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Akhir Modal -->

            </div>
        </div>
    </div>
</section>

<!-- Modal Done-->
<div id="modalDone" class="modal fade" role="dialog">
    <div class="modal-dialog">
        <!-- konten modal-->
        <div class="modal-content">
            <!-- heading modal -->
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Konfirmasi </h4>
            </div>
            <!-- body modal -->
            <div class="modal-body">
                <form method="post" enctype="multipart/form-data" action="add_bookingcargo.php" class="form-horizontal">
                    <div class="box-body">
                        <input type="hidden" value="<?= $id_joborder; ?>" class="form-control" name="id" readonly>
                        <div class="form-group ">
                            <label for="keterangan" class="col-sm-offset-1 col-sm-3 control-label">Pilih Checker </label>
                            <div class="col-sm-5">
                                <select name="id_checker" class="form-control" required>
                                    <option value="">--Pilih Checker--</option>
                                    <?php
                                    $queryChecker = mysqli_query($koneksi, "SELECT * FROM user WHERE level = 'checker'");
                                    if (mysqli_num_rows($queryChecker)) {
                                        while ($rowChecker = mysqli_fetch_assoc($queryChecker)) :
                                    ?>
                                            <option value="<?= $rowChecker['id_user']; ?>" type="checkbox"><?= $rowChecker['nama']; ?></option>
                                    <?php endwhile;
                                    } ?>
                                </select>
                            </div>
                        </div>
                        <div class=" modal-footer">
                            <button class="btn btn-success" type="submit" name="simpan">Done</button></span></a>
                            &nbsp;
                            <input type="reset" class="btn btn-danger" data-dismiss="modal" value="Batal">
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- akhir modal stop -->

<?php
$host = host();

?>

<script>
    var host = '<?= $host ?>';

    $(document).ready(function() {
        $('.tanggal').datepicker({
            format: "yyyy-mm-dd",
            autoclose: true
        });
        $(".add-more").click(function() {
            var html = $(".copy").html();
            $(".after-add-more").after(html);
        });
        $("body").on("click", ".remove", function() {
            $(this).parents(".control-group").remove();
        });

        // $("#jenis”).on(“change”, function(){

        // // ambil nilai
        // var satuan_jenis = $("#jenis option:selected”).attr(“satuan_jenis”);
        // var volume_jenis = $("#jenis option:selected”).attr(“volume_jenis”);        

        // // pindahkan nilai ke input
        // $("#satuan_jenis”).val(satuan_jenis);
        // $("#volume_jenis”).val(volume_jenis);        

    });

    // });

    // function kota(jenis){
    //       $.ajax({
    //         url:host+'admin_operational/jenis.php',
    //         data:'jenis='+jenis,
    //         type:'post',
    //         datatype:'html',
    //         timeout:100000,
    //         success:function(response){
    //           $('#kota').html(response);
    //         //   $("#kota").attr("value",data);    
    //         //   document.form.m3_cargo.value = data;
    //         }
    //       })
    //     }

    // $(function(){

    // });

    $(function() {
        $('.modalTambah').on('click', function() {
            $('.modal-title').html('Tambah Cargo');
            $('.modal-footer input[type=submit]').val('Tambah');


            $('.modal-body form').attr('action', host + 'admin_operational/add_cargo.php')

        });

        $('.modalEdit').on('click', function() {
            // 
            $('.modal-title').html('Edit Cargo');
            $('.modal-footer input[type=submit]').val('Edit');


            $('.modal-body form').attr('action', host + 'admin_operational/ubahcargo.php')

            const id = $(this).data('id');

            // console.log(id);

            $.ajax({
                url: host + 'admin_operational/getubahcargo.php',
                data: {
                    id: id
                },
                method: 'post',
                dataType: 'json',
                success: function(data) {
                    // console.log(data);                     
                    $('#id_jenis').val(data.id_jenis);
                    $('#id_cargo_edit').val(data.id_cargo);
                    $('#doc_no').val(data.doc_no);
                    $('#rincian_cargo').val(data.rincian_cargo);
                    $('#qty_cargo').val(data.qty_cargo);
                    $('#ton_cargo').val(data.ton_cargo);
                    $('#remarks_cargo').val(data.remarks_cargo);
                    //          $('#satuan_jenis').val(data.satuan_jenis);                             
                }
            });
        });
    });

    function formatState(state) {
        if (!state.id) {
            return state.text;
        }

        var $state = $(
            '<span> <span></span></span>'
        );

        // Use .text() instead of HTML string concatenation to avoid script injection issues
        $state.find("span").text(state.text);

        return $state;
    };

    $("#id_jenis").select2({
        templateSelection: formatState
    });
</script>