<?php



include "../fungsi/koneksi.php";

$queryUser =  mysqli_query($koneksi, "SELECT area from user WHERE username  = '$_SESSION[username]'");
$rowUser = mysqli_fetch_assoc($queryUser);
$Area = $rowUser['area'];


$query = mysqli_query($koneksi, "SELECT MAX(id_joborder) from job_order");

$id_joborder = mysqli_fetch_array($query);
if ($id_joborder) {

    $nilaikode = substr($id_joborder[0], 2);

    $kode = (int) $nilaikode;

    //setiap kode ditambah 1
    $kode = $kode + 1;
    $kode_otomatis = "JV" . str_pad($kode, 5, "0", STR_PAD_LEFT);
} else {
    $kode_otomatis = "JV00001";
}

?>
<!-- Conten header -->
<section class="content-header">
    <h1>
        Buat Stevedoring Vessel
        <small>Buat Stevedoring Vessel di PT. Nurdiansah Bongkar Muat </small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="index.php"><i class="fa fa-dashboard"></i> Dashboard</a></li>
        <li><a href="index.php?p=lihat_jovessel"> Stevedoring Vessel </a></li>
        <li class="active">Buat</li>
    </ol>
    <h3 class="text-right mb-1" id="jam"> </h3>
</section>


<section class="content">
    <div class="row">
        <div class="col-sm-12 col-xs-12">
            <div class="box box-primary">
                <div class="box-header with-border">
                    <div class="row">
                        <div class="col-md-2">
                            <a href="index.php?p=lihat_jovessel" class="btn btn-primary"><i class="fa fa-backward"></i> Kembali</a>
                        </div>
                        <br><br>
                    </div>
                    <div class="box-header with-border">
                        <h3 class="text-center">Buat Stevedoring Vessel</h3>
                    </div>
                    <form method="post" enctype="multipart/form-data" action="add_jo.php" class="form-horizontal">
                        <div class="box-body">
                            <!-- <div class="form-group ">
                            <label for="id_joborder" class="col-sm-offset-1 col-sm-3 control-label">ID Job Order</label>
                            <div class="col-sm-4"> -->
                            <input type="hidden" value="<?= $kode_otomatis; ?>" class="form-control" name="id_joborder" readonly>
                            <!-- </div>
                    </div> -->
                            <div class="form-group">
                                <label id="tes" for="nm_kapal" class="col-sm-offset-1 col-sm-3 control-label">Nama Kapal</label>
                                <div class="col-sm-4">
                                    <input type="text" required class="form-control is-valid" name="nm_kapal">
                                </div>

                            </div>
                            <div class="form-group">
                                <label id="tes" for="agen_kapal" class="col-sm-offset-1 col-sm-3 control-label">Agen Kapal</label>
                                <div class="col-sm-4">
                                    <input type="text" required class="form-control" name="agen_kapal">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="tgl_masuk" class="col-sm-offset-1 col-sm-3 control-label">Tanggal Masuk</label>
                                <div class="col-sm-2">
                                    <input type="text" required class="form-control tanggal" name="tgl_masuk">
                                </div>
                                <!-- </div> -->
                                <!-- <div class="form-group "> -->
                                <label for="jm_masuk" class="col-sm-offset-1 col-sm-1 control-label">Jam Masuk</label>
                                <div class="col-sm-2">
                                    <input type="time" required class="form-control" name="jm_masuk">
                                </div>
                            </div>
                            <?php $batasTgl = 'tgl_masuk' ?>
                            <div class="form-group">
                                <label for="tgl_keluar" class="col-sm-offset-1 col-sm-3 control-label">Tanggal Keluar</label>
                                <div class="col-sm-2">
                                    <input type="text" class="form-control tanggal" name="tgl_keluar">
                                </div>
                                <!-- </div>
                        <div class="form-group "> -->
                                <label for="jm_keluar" class="col-sm-offset-1 col-sm-1 control-label">Jam Keluar</label>
                                <div class="col-sm-2">
                                    <input type="time" class="form-control" name="jm_keluar">
                                </div>
                            </div>
                            <div class="form-group">
                                <label id="tes" for="pelabuhan_asal" class="col-sm-offset-1 col-sm-3 control-label">Pelabuhan Asal</label>
                                <div class="col-sm-2">
                                    <input type="text" required class="form-control" name="pelabuhan_asal">
                                </div>
                                <!-- </div>
                        <div class="form-group"> -->
                                <label id="tes" for="pelabuhan_tujuan" class=" col-sm-2 control-label">Pelabuhan Tujuan</label>
                                <div class="col-sm-2">
                                    <input type="text" required class="form-control" name="pelabuhan_tujuan">
                                </div>
                            </div>
                            <div class="form-group">
                                <label id="tes" for="client" class="col-sm-offset-1 col-sm-3 control-label">Client</label>
                                <div class="col-sm-offset- col-sm-4">
                                    <select name="client" class="form-control">
                                        <option value="NULL">--Pilih Client--</option>
                                        <?php
                                        $queryClient = mysqli_query($koneksi, "SELECT * FROM client ORDER BY  nm_client  ASC ");
                                        if (mysqli_num_rows($queryClient)) {
                                            while ($rowClient = mysqli_fetch_assoc($queryClient)) :
                                        ?>
                                                <option value="<?= $rowClient['id_client']; ?>" type="checkbox"><?= $rowClient['nm_client']; ?></option>
                                        <?php endwhile;
                                        } ?>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label id="tes" for="client" class="col-sm-offset-1 col-sm-3 control-label">Jenis</label>
                                <div class="col-sm-4">
                                    <select required name="jenis_cargo" class="form-control">
                                        <option>--Pilih Jenis--</option>
                                        <option value="Offloading">Offloading Vessel</option>
                                        <option value="Loading">Loading Vessel</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label id="tes" for="document_perintah" class="col-sm-offset-1 col-sm-3 control-label">Document Perintah</label>
                                <div class="col-sm-4">
                                    <input type="text" required class="form-control" name="document_perintah">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="sandar_kapal" class="col-sm-offset-1 col-sm-3 control-label">Sandar Kapal</label>
                                <!-- <div class="col-sm-4">
                                <input type="text" required class="form-control" name="sandar_kapal">
                            </div> -->
                                <div class="col-sm-4">
                                    <select required name="sandar_kapal" class="form-control">
                                        <option>--Pilih Jetty--</option>
                                        <option value="JETTY KJ1">JETTY KJ1</option>
                                        <option value="JETTY KJ2 A">JETTY KJ2 A</option>
                                        <option value="JETTY KJ2 B">JETTY KJ2 B</option>
                                        <option value="JETTY KJ4 A">JETTY KJ4 A</option>
                                        <option value="JETTY KJ4 B">JETTY KJ4 B</option>
                                        <option value="JETTY KJ5 A">JETTY KJ5 A</option>
                                        <option value="JETTY KJ5 B">JETTY KJ5 B</option>
                                        <option value="JETTY KJ5 C">JETTY KJ5 C</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label id="tes" for="alat_berat" class="col-sm-offset-1 col-sm-3 control-label">Alat Berat</label>
                                <div class="col-sm-4">
                                    <select name="alat_berat" class="form-control">
                                        <option value="">--Pilih CRANE--</option>
                                        <?php
                                        $queryAlat = mysqli_query($koneksi, "SELECT * FROM alat_berat WHERE jns_alatberat='CRANE' AND status_alatberat = '0' ");
                                        if (mysqli_num_rows($queryAlat)) {
                                            while ($rowAlat = mysqli_fetch_assoc($queryAlat)) :
                                        ?>
                                                <option value="<?= $rowAlat['nm_alatberat']; ?>" type="checkbox"><?= $rowAlat['nm_alatberat']; ?></option>
                                        <?php endwhile;
                                        } ?>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-offset-4 col-sm-4">
                                    <select name="alat_berat2" class="form-control">
                                        <option value="NULL">--Pilih Alat Berat ke 2--</option>
                                        <?php
                                        $queryAlat = mysqli_query($koneksi, "SELECT * FROM alat_berat WHERE jns_alatberat!='CRANE' AND status_alatberat = '0' ORDER BY nm_alatberat ASC ");
                                        if (mysqli_num_rows($queryAlat)) {
                                            while ($rowAlat = mysqli_fetch_assoc($queryAlat)) :
                                        ?>
                                                <option value="<?= $rowAlat['nm_alatberat']; ?>" type="checkbox"><?= $rowAlat['nm_alatberat']; ?></option>
                                        <?php endwhile;
                                        } ?>
                                    </select>
                                </div>
                                <div class="col-sm-offset-2">
                                    <div class="text-warning">
                                        <p>*Kosongkan Jika Hanya 1 Alat Berat</p>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-offset-4 col-sm-4">
                                    <select name="alat_berat3" class="form-control">
                                        <option value="NULL">--Pilih Alat Berat ke 3--</option>
                                        <?php
                                        $queryAlat = mysqli_query($koneksi, "SELECT * FROM alat_berat WHERE jns_alatberat!='CRANE' AND status_alatberat = '0' ORDER BY nm_alatberat ASC ");
                                        if (mysqli_num_rows($queryAlat)) {
                                            while ($rowAlat = mysqli_fetch_assoc($queryAlat)) :
                                        ?>
                                                <option value="<?= $rowAlat['nm_alatberat']; ?>" type="checkbox"><?= $rowAlat['nm_alatberat']; ?></option>
                                        <?php endwhile;
                                        } ?>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-offset-4 col-sm-4">
                                    <select name="alat_berat4" class="form-control">
                                        <option value="NULL">--Pilih Alat Berat ke 4--</option>
                                        <?php
                                        $queryAlat = mysqli_query($koneksi, "SELECT * FROM alat_berat WHERE jns_alatberat!='CRANE' AND status_alatberat = '0' ORDER BY nm_alatberat ASC ");
                                        if (mysqli_num_rows($queryAlat)) {
                                            while ($rowAlat = mysqli_fetch_assoc($queryAlat)) :
                                        ?>
                                                <option value="<?= $rowAlat['nm_alatberat']; ?>" type="checkbox"><?= $rowAlat['nm_alatberat']; ?></option>
                                        <?php endwhile;
                                        } ?>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-offset-4 col-sm-4">
                                    <select name="alat_berat5" class="form-control">
                                        <option value="NULL">--Pilih Alat Berat ke 5--</option>
                                        <?php
                                        $queryAlat = mysqli_query($koneksi, "SELECT * FROM alat_berat WHERE jns_alatberat!='CRANE' AND status_alatberat = '0' ORDER BY nm_alatberat ASC ");
                                        if (mysqli_num_rows($queryAlat)) {
                                            while ($rowAlat = mysqli_fetch_assoc($queryAlat)) :
                                        ?>
                                                <option value="<?= $rowAlat['nm_alatberat']; ?>" type="checkbox"><?= $rowAlat['nm_alatberat']; ?></option>
                                        <?php endwhile;
                                        } ?>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="alat_beratsewa" class="col-sm-offset-1 col-sm-3 control-label">Alat Berat Sewa</label>
                                <div class="col-sm-4">
                                    <input type="text" class="form-control" name="alat_beratsewa" value="NULL" placeholder="Kosongkan jika tidak ada">
                                </div>
                            </div>



                            <div class="form-group">
                                <label for="sandar_kapal" class="col-sm-offset-1 col-sm-3 control-label">Document Pendukung Kegiatan</label>
                            </div>
                            <div class="form-group">
                                <label for="doc_ptw" class="col-sm-offset-1 col-sm-3 control-label">Upload PTW</label>
                                <div class="col-sm-1">
                                    <input type="file" required name="doc_ptw" id="doc_ptw">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="doc_pjsm" class="col-sm-offset-1 col-sm-3 control-label">Upload PJSM</label>
                                <div class="col-sm-1">
                                    <input type="file" required name="doc_pjsm" id="doc_pjsm">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="doc_lsap" class="col-sm-offset-1 col-sm-3 control-label">Upload List Sertifikat Alat & Personil</label>
                                <div class="col-sm-1">
                                    <input type="file" required name="doc_lsap" id="doc_lsap">
                                </div>
                            </div>
                            <div class="form-group">
                                <input type="submit" name="simpan" class="btn btn-primary col-sm-offset-4 " value="Buat">
                                &nbsp;
                                <input type="reset" class="btn btn-danger" value="Batal">
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
</section>

<script>
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
    });
</script>