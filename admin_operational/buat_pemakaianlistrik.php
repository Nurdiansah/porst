<?php
include "../fungsi/koneksi.php";

if(isset($_POST['simpan'])) {
    $lokasi = $_POST['lokasi'];
    $bulan = $_POST['bulan'];
    $meter_awal = $_POST['meter_awal'];
    $meter_akhir = $_POST['meter_akhir'];
    $tanggal_awal = $_POST['tanggal_awal'];
    $tanggal_akhir = $_POST['tanggal_akhir'];
    $jml_pemakaian = $_POST['jml_pemakaian'];
    $faktor = $_POST['faktor'];
    $total_meter = $_POST['total_meter'];
    $beban_puncak = $_POST['beban_puncak'];
    $satuan_kwh = $_POST['satuan_kwh'];
    $tagihan_pln = $_POST['tagihan_pln'];

    $path = ($_FILES['dokumen']['tmp_name']);
    $nm_file = ($_FILES['dokumen']['name']);
    move_uploaded_file($path, "../file/$nm_file");

    $query = "INSERT INTO pemakaian_listrik (lokasi, bulan, meter_awal, tanggal_awal, meter_akhir, tanggal_akhir, jml_pemakaian, faktor, total_meter, beban_puncak, satuan_kwh, tagihan_pln, file) VALUES 
                                    ('$lokasi', '$bulan', '$meter_awal', '$tanggal_awal', '$meter_akhir', '$tanggal_akhir', '$jml_pemakaian', '$faktor', '$total_meter', '$beban_puncak', '$satuan_kwh', '$tagihan_pln', '$nm_file');
                ";
    
    $hasil = mysqli_query($koneksi, $query);
    if ($hasil) {
        header("location:index.php?p=buat_pemakaianlistrik");
    } else {
        die("Error cuii : " . mysqli_error($koneksi));
    }

}
?>

<section class="content">
    <div class="row">
        <div class="col-sm-12 col-xs-12">
            <div class="box box-primary">
                <div class="box-header with-border">
                    <div class="box-header with-border">
                        <h3 class="text-center">Input Pemakaian Listrik</h3>
                    </div>
                    <form action="" method="POST" enctype="multipart/form-data" class="form-horizontal">
                        <div class="box-body">
                            <div class="form-group">
                                <label for="lokasi" class="col-sm-offset-1 col-sm-2 control-label">Area</label>
                                <div class="col-sm-2">
                                    <select name="lokasi" id="lokasi" required class="" style="width: 185px">
                                        <option value="PHE Office">PHE Office</option>
                                        <option value="RPI Office">RPI Office</option>
                                    </select>
                                </div>
                                <label for="bulan" class=" col-sm-2 control-label">Bulan</label>
                                <div class="col-sm-2">
                                    <select name="bulan" id="bulan" required class="" style="width: 185px">
                                        <option value="01">Januari</option>
                                        <option value="02">Februari</option>
                                        <option value="03">Maret</option>
                                        <option value="04">April</option>
                                        <option value="05">Mei</option>
                                        <option value="06">Juni</option>
                                        <option value="07">Juli</option>
                                        <option value="08">Agustus</option>
                                        <option value="09">September</option>
                                        <option value="10">Oktober</option>
                                        <option value="11">November</option>
                                        <option value="12">Desember</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="tanggal_awal" class="col-sm-offset-1 col-sm-2 control-label">Tanggal Awal</label>
                                <div class="col-sm-2">
                                    <input type="text"  name="tanggal_awal" required class="tanggal">
                                </div>
                                <label for="tanggal_akhir" class=" col-sm-2 control-label">Tanggal Akhir</label>
                                <div class="col-sm-2">
                                    <input type="text" name="tanggal_akhir" required class="tanggal">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="meter_awal" class="col-sm-offset-1 col-sm-2 control-label">Meter Awal</label>
                                <div class="col-sm-2">
                                    <input type="text" name="meter_awal" id="meter_awal" required onkeyup="kurang_meter();" step="any">
                                </div>
                                <label for="meter_akhir" class=" col-sm-2 control-label">Meter Akhir</label>
                                <div class="col-sm-2">
                                    <input type="text" name="meter_akhir" id="meter_akhir" required onkeyup="kurang_meter();" step="any">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="jml_pemakaian" class="col-sm-offset-1 col-sm-2 control-label">Jumlah Pemakaian</label step="any">
                                <div class="col-sm-2" style="color: gray;">
                                    <input type="text" name="jml_pemakaian" id="jml_pemakaian" required readonly onkeyup="kali_faktor();">
                                </div>
                                <label for="faktor" class="col-sm-2 control-label">Faktor</label>
                                <div class="col-sm-2">
                                    <input type="text" name="faktor" id="faktor" required onkeyup="kali_faktor();">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="total_meter" class="col-sm-offset-1 col-sm-2 control-label">Total Meter</label>
                                <div class="col-sm-2" style="color: gray;">
                                    <input type="text" name="total_meter" id="total_meter" required readonly onkeyup="sum_kwh();">
                                </div>
                                <label for="beban_puncak" class=" col-sm-2 control-label">Waktu Beban Puncak</label>
                                <div class="col-sm-2">
                                    <input type="text" name="beban_puncak" id="beban_puncak" required onkeyup="sum_kwh();">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="satuan_kwh" class="col-sm-offset-1 col-sm-2 control-label">Total Satuan KWH</label>
                                <div class="col-sm-2" style="color: gray;">
                                    <input type="text" name="satuan_kwh" id="satuan_kwh" required readonly>
                                </div>
                                <label for="tagihan_pln" class="col-sm-2 control-label">Tagihan PLN</label>
                                <div class="col-sm-2">
                                    <input type="text" name="tagihan_pln" id="tagihan_pln" required>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="dokumen" class="col-sm-offset-1 col-sm-2 control-label">Dokumen Pendukung</label>
                                <div class="col-sm-2">
                                    <input type="file" name="dokumen" id="dokumen">
                                </div>
                            </div>
                            <br>
                            <div class="form-group">
                                <input type="submit" name="simpan" value="Simpan" class="btn btn-success col-sm-offset-5"> &nbsp;
                                <input type="reset" value="Batal" class="btn btn-warning">
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>

<script>
    $(document).ready(function(){
        $('.tanggal').datepicker({
            format:"yyyy-mm-dd",
            autoclose:true
        });
        $(".add-more").click(function(){ 
          var html = $(".copy").html();
          $(".after-add-more").after(html);
        });
        $("body").on("click",".remove",function(){ 
          $(this).parents(".control-group").remove();
        });
    });

    function kurang_meter() {
        var txtFirstNumberValue = document.getElementById('meter_akhir').value;
        var txtSecondNumberValue = document.getElementById('meter_awal').value;
        var result = parseFloat(txtFirstNumberValue) - parseFloat(txtSecondNumberValue);
        if (!isNaN(result)) {
            document.getElementById('jml_pemakaian').value = result.toFixed(2);
        }
    }

    function kali_faktor() {
        var txtFirstNumberValue = document.getElementById('jml_pemakaian').value;
        var txtSecondNumberValue = document.getElementById('faktor').value;
        var result = parseFloat(txtFirstNumberValue) * parseFloat(txtSecondNumberValue);
        if (!isNaN(result)) {
            document.getElementById('total_meter').value = result.toFixed(2);
        }
    }

    function sum_kwh() {
        var txtFirstNumberValue = document.getElementById('total_meter').value;
        var txtSecondNumberValue = document.getElementById('beban_puncak').value;
        var result = parseFloat(txtFirstNumberValue) + parseFloat(txtSecondNumberValue);
        if (!isNaN(result)) {
            document.getElementById('satuan_kwh').value = result.toFixed(2);
        }
    }

</script>