<?php



include "../fungsi/koneksi.php";


?>
<!-- Conten header -->
<section class="content-header">
    <h1>
        Buat Alat Berat
        <small>Tambah alat berat baru di PT.Nurdiansah Bongkar Muat</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="index.php"><i class="fa fa-dashboard"></i> Dashboard</a></li>
        <li><a href="index.php?p=alat_berat">Alat Berat</a></li>
        <li class="active">Buat Alat Berat</li>
    </ol>
    <h3 class="text-right mb-1" id="jam"> </h3>
</section>

<!-- Main Content -->
<section class="content">
    <div class="row">
        <div class="col-sm-6 col-xs-12">
            <div class="box box-primary">
                <div class="row">
                    <br>
                    <div class="col-sm-4 col-sm-offset-1">
                        <a href="index.php?p=alat_berat" class="btn btn-primary"><i class="fa fa-backward"></i> Kembali</a>
                    </div>
                </div>
                <div class="box-header with-border">
                    <h3 class="text-center">Tambah Alat Berat</h3>
                </div>
                <form method="post" enctype="multipart/form-data" action="add_alatberat.php" class="form-horizontal">
                    <div class="box-body">
                        <div class="form-group">
                            <label id="tes" for="nm_alatberat" class="col-sm-offset-1 col-sm-3 control-label">Nama Alat Berat</label>
                            <div class="col-sm-4">
                                <input type="text" required class="form-control is-valid" name="nm_alatberat">
                            </div>
                        </div>
                        <div class="form-group">
                            <label id="tes" for="jns_alatberat" class="col-sm-offset-1 col-sm-3 control-label">Jenis Alat Berat</label>
                            <div class="col-sm-4">
                                <select required name="jns_alatberat" class="form-control">
                                    <option>--Pilih Jenis--</option>
                                    <option value="CRANE">CRANE</option>
                                    <option value="FORKLIFT">FORKLIFT</option>
                                    <option value="TRAILER">TRAILER</option>
                                    <option value="TRUCK">TRUCK</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label id="tes" for="area_alatberat" class="col-sm-offset-1 col-sm-3 control-label">Area</label>
                            <div class="col-sm-4">
                                <select required name="area_alatberat" class="form-control">
                                    <option>--Pilih Area--</option>
                                    <option value="KJ1">KJ 1&2</option>
                                    <option value="KJ4">KJ 4</option>
                                    <option value="KJ5">KJ 5</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label id="tes" for="status_alatberat" class="col-sm-offset-1 col-sm-3 control-label">Status Alat Berat</label>
                            <div class="col-sm-4">
                                <select required name="status_alatberat" class="form-control">
                                    <option value="0">Ready</option>
                                    <option value="1">Maintenance</option>
                                </select>
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