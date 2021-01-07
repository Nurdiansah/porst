<?php  

	include "../fungsi/koneksi.php";
    $id = $_GET['id'];

    if (isset($_GET['aksi']) && isset($_GET['id'])) {
        //die($id = $_GET['id']);
        $id = $_GET['id'];
        echo $id;

        if ($_GET['aksi'] == 'hapus') {
            header("location:?p=hapus_jovessel&id=$id");
        } 
}
    
    $query = mysqli_query($koneksi, "SELECT * FROM detail_joborder WHERE id_joborder='$id' ORDER BY tgl_cargo ASC ");
    $query2 = mysqli_query($koneksi, "SELECT * FROM job_order WHERE id_joborder='$id' ");
    

    // $selisih = $jumlahCargo['ton_cargo'] * $totalCargo  ;
?>

<section class="content">
    <div class="row">
        <div class="col-sm-12 col-xs-12">
            <div class="box box-primary">
                <div class="row">
                        <div class="col-md-2">
                            <a href="index.php?p=data_ditolak" class="btn btn-primary"><i class="fa fa-backward"></i> Kembali</a> 
                        </div>
                        <br><br>
                </div>
                
                <!-- Detail Job Order -->
                
                <div class="box-header with-border">
                    <h3 class="text-center">Detail Job Order Vessel</h3>
                </div>
                <form method="post" enctype="multipart/form-data" class="form-horizontal">
                        <?php 
                        if (mysqli_num_rows($query2)) {
                            while($row2=mysqli_fetch_assoc($query2)):
                            $batas=$row2['jml_cargo']-$row2['progres_jo'];
                            
                        ?>
                    <div class="box-body">
                    <div class="form-group ">
                            <label for="id_joborder" class=" col-sm-2 control-label">ID Job Order</label>
                            <div class="col-sm-3">
                                <input type="text" value="<?= $row2['id_joborder']; ?>" readonly class="form-control" name="id_joborder" >
                            </div>
                            <label id="tes"for="document_perintah"  class=" col-sm-3 control-label">Document Perintah</label>
                            <div class="col-sm-3">
                                <input type="text"  value="<?= $row2['document_perintah']; ?>" readonly  class="form-control" name="document_perintah">
                            </div>
                    </div>
                    <div class="form-group">
                            <label id="tes"for="nm_kapal" class=" col-sm-2 control-label">Nama Kapal</label>
                            <div class="col-sm-3">
                                <input type="text" value="<?= $row2['nm_kapal']; ?>" readonly class="form-control" name="nm_kapal">
                            </div>
                    <!-- </div>
                    <div class="form-group"> -->
                            <label id="tes"for="agen_kapal"  class=" col-sm-3 control-label">Agen Kapal</label>
                            <div class="col-sm-3">
                                <input type="text"  value="<?= $row2['agen_kapal']; ?>" readonly  class="form-control" name="agen_kapal">
                            </div>
                    </div>
					<div class="form-group">
                            <label for="tgl_masuk" class=" col-sm-2 control-label">Tanggal Masuk</label>
                            <div class="col-sm-3">
                                <input type="text" value="<?= $row2['tgl_masuk']; ?>" readonly class="form-control tanggal" name="tgl_masuk">
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
                            <label id="tes"for="pelabuhan_asal" class="col-sm-2 control-label">Pelabuhan Asal</label>
                            <div class="col-sm-3">
                                <input type="text" value="<?= $row2['pelabuhan_asal']; ?>" readonly class="form-control" name="pelabuhan_asal">
                            </div>
                        <!-- </div>
                        <div class="form-group"> -->
                            <label id="tes"for="pelabuhan_tujuan" class="col-sm-3 control-label">Pelabuhan Tujuan</label>
                            <div class="col-sm-3">
                                <input type="text" value="<?= $row2['pelabuhan_tujuan']; ?>" readonly  class="form-control" name="pelabuhan_tujuan">
                            </div>
                        </div>
                        <div class="form-group">
                            <label id="tes"for="client" class="col-sm-2 control-label">Client</label>
                            <div class="col-sm-3">
                                <input type="text" value="<?= $row2['client']; ?>" readonly class="form-control" name="client">
                            </div>
                        <!-- </div>
                        <div class="form-group"> -->
                            <label for="jml_cargo" class="col-sm-3 control-label">Jumlah Cargo</label>
                            <div class="col-sm-3">
                                <input type="number" value="<?= $row2['jml_cargo']; ?>" readonly  class="form-control" name="jml_cargo">
                            </div>
                        </div>
						<div class="form-group">
                            <label for="sandar_kapal" class="col-sm-2 control-label">Sandar Kapal</label>
                            <div class="col-sm-3">
                                <input type="text" value="<?= $row2['sandar_kapal']; ?>" readonly class="form-control" name="sandar_kapal">
                            </div>
                        <!-- </div>
                        <div class="form-group"> -->
                            <label id="tes"for="alat_berat" class="col-sm-3 control-label">Alat Berat</label>
                            <div class="col-sm-3">
                                <input type="text" value="<?= $row2['alat_berat']; ?>" readonly  class="form-control" name="alat_berat">
                            </div>  
                        </div>
                        <div class="form-group">
                            <?php 
                            if ($row2['alat_berat2']!='NULL') { ?>
                                    <div class="col-sm-offset-8 col-sm-3">
                                        <input type="text" value="<?= $row2['alat_berat2']; ?>" readonly  class="form-control" name="alat_berat2">
                                    </div>
                            <?php   } ?>
                        </div>
                        <div class="form-group">
                            <?php   if($row2['alat_berat3']!='NULL'){ ?>
                                    <div class="col-sm-offset-8 col-sm-3">
                                        <input type="text" value="<?= $row2['alat_berat3']; ?>" readonly  class="form-control" name="alat_berat3">
                                    </div>
                            <?php   } ?>
                        </div> 
                        <div class="form-group"> 
                            <label id="tes"for="komentar" class="col-sm-offset-1 col-sm-1 control-label">Alasan Penolakan</label>
                            <div class="col-sm-4">
                            <textarea rows="8" class="form-control is-invalid" name="komentar" id="validationTextarea" readonly value="<?= $row2['komentar']; ?>"><?= $row2['komentar']; ?></textarea>
                            </div>  
                        </div>
                    </div>

                </form>                      
                
                <button type="button" class="btn btn-primary col-sm-offset-9" data-toggle="modal" data-target="#edit">Edit</button>
                <a  href="?p=detil_tolak&aksi=hapus&id=<?= $row2['id_joborder']; ?>"><span data-placement='top' data-toggle='tooltip' title='Hapus'><button  class="btn btn-danger" onclick="return confirm('Yakin ingin menghapus ?')">Hapus</button></span></a>                    
                <br>
                    </div>
                </div>
                </div>    


                                <!-- Modal Edit   -->
                
                <div id="edit" class="modal fade" role="dialog">
                <div class="modal-dialog modal-lg">
                    <!-- konten modal-->
                    <div class="modal-content">
                        <!-- heading modal -->
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">Edit Job Order Vessel</h4>
                        </div>
                        <!-- body modal -->
                        <div class="modal-body">
                            <form method="post" enctype="multipart/form-data" action="edit_jovessel.php" class="form-horizontal">
                                <div class="box-body">
                                    <div class="form-group ">
                                        <label for="id_joborder" class="col-sm-offset-1 col-sm-3 control-label">ID Job Order</label>
                                        <div class="col-sm-4">
                                            <input type="text" value="<?= $row2['id_joborder']; ?>" readonly class="form-control" name="id_joborder" >
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label id="tes"for="nm_kapal" class="col-sm-offset-1 col-sm-3 control-label">Nama Kapal</label>
                                        <div class="col-sm-4">
                                            <input type="text" value="<?= $row2['nm_kapal']; ?>" required class="form-control" name="nm_kapal">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                            <label id="tes"for="agen_kapal" class="col-sm-offset-1 col-sm-3 control-label">Agen Kapal</label>
                                            <div class="col-sm-4">
                                                <input type="text"  value="<?= $row2['agen_kapal']; ?>" required class="form-control" name="agen_kapal">
                                            </div>
                                    </div>
                                    <div class="form-group">
                                            <label for="tgl_masuk" class="col-sm-offset-1 col-sm-3 control-label">Tanggal Masuk</label>
                                            <div class="col-sm-2">
                                                <input type="text"  value="<?= $row2['tgl_masuk']; ?>" required class="form-control tanggal" name="tgl_masuk">
                                            </div>
                                        <!-- </div> -->
                                        <!-- <div class="form-group "> -->
                                            <label for="jm_masuk" class="col-sm-offset-1 col-sm-1 control-label">Jam Masuk</label>
                                            <div class="col-sm-2">
                                                <input type="text"  value="<?= $row2['jm_masuk']; ?>" required class="form-control" name="jm_masuk">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="tgl_keluar" class="col-sm-offset-1 col-sm-3 control-label">Tanggal Keluar</label>
                                            <div class="col-sm-2">
                                                <input type="text"  value="<?= $row2['tgl_keluar']; ?>" required class="form-control tanggal" name="tgl_keluar">
                                            </div>
                                        <!-- </div>
                                        <div class="form-group "> -->
                                            <label for="jm_keluar" class="col-sm-offset-1 col-sm-1 control-label">Jam Keluar</label>
                                            <div class="col-sm-2">
                                                <input type="text"  value="<?= $row2['jm_keluar']; ?>" required class="form-control" name="jm_keluar">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label id="tes"for="pelabuhan_asal" class="col-sm-offset-1 col-sm-3 control-label">Pelabuhan Asal</label>
                                            <div class="col-sm-2">
                                                <input type="text"  value="<?= $row2['pelabuhan_asal']; ?>" required class="form-control" name="pelabuhan_asal">
                                            </div>
                                        <!-- </div>
                                        <div class="form-group"> -->
                                            <label id="tes"for="pelabuhan_tujuan" class=" col-sm-2 control-label">Pelabuhan Tujuan</label>
                                            <div class="col-sm-2">
                                                <input type="text"  value="<?= $row2['pelabuhan_tujuan']; ?>" required class="form-control" name="pelabuhan_tujuan">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label id="tes"for="client" class="col-sm-offset-1 col-sm-3 control-label">Client</label>
                                            <div class="col-sm-4">
                                                <select required name="client" class="form-control">
                                                    <option value="<?= $row2['client']; ?>"  > <?= $row2['client']; ?> </option>
                                                    <option value="Pertamina Hulu Energi">Pertamina Hulu Energi</option>
                                                    <option value="Medco">Medco</option>
                                                    <option value="Premier Oil">Premier Oil</option>
                                                </select>
                                            </div>
                                        </div> 
                                        <div class="form-group">
                                            <label id="tes"for="document_perintah" class="col-sm-offset-1 col-sm-3 control-label">Document Perintah</label>
                                            <div class="col-sm-4">
                                                <input type="text"  value="<?= $row2['document_perintah']; ?>" required class="form-control" name="document_perintah">
                                            </div>  
                                        </div>
                                        <div class="form-group">
                                            <label for="jml_cargo" class="col-sm-offset-1 col-sm-3 control-label">Jumlah Cargo</label>
                                            <div class="col-sm-4">
                                                <input type="number"  value="<?= $row2['jml_cargo']; ?>" required class="form-control" name="jml_cargo">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sandar_kapal" class="col-sm-offset-1 col-sm-3 control-label">Sandar Kapal</label>
                                            <div class="col-sm-4">
                                                <input type="text"  value="<?= $row2['sandar_kapal']; ?>" required class="form-control" name="sandar_kapal">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label id="tes"for="alat_berat" class="col-sm-offset-1 col-sm-3 control-label">Alat Berat</label>
                                            <div class="col-sm-4">
                                                <select required name="alat_berat" class="form-control" >
                                                    <option value="<?= $row2['alat_berat']; ?>" > <?= $row2['alat_berat']; ?></option>
                                                    <option value="CRANE" type="checkbox">CRANE</option>
                                                    <option value="KALMAR" type="checkbox">KALMAR</option>
                                                    <option value="FORKLIFT" type="checkbox">FORKLIFT</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-sm-offset-4 col-sm-4">
                                                <select name="alat_berat2" class="form-control" >
                                                    <option value="<?= $row2['alat_berat2']; ?>" type="checkbox"><?= $row2['alat_berat2']; ?></option>
                                                    <option value="NULL">--Kosongkan--</option>
                                                    <option value="CRANE" type="checkbox">CRANE</option>
                                                    <option value="KALMAR" type="checkbox">KALMAR</option>
                                                    <option value="FORKLIFT" type="checkbox">FORKLIFT</option>
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
                                                <select name="alat_berat3" class="form-control" >
                                                    <option value="<?= $row2['alat_berat3']; ?>" type="checkbox"><?= $row2['alat_berat3']; ?></option>
                                                    <option value="NULL">--Kosongkan--</option>
                                                    <option value="CRANE" type="checkbox">CRANE</option>
                                                    <option value="KALMAR" type="checkbox">KALMAR</option>
                                                    <option value="FORKLIFT" type="checkbox">FORKLIFT</option>
                                                </select>
                                            </div>
                                        </div>
                                            <!-- <div class="input-group-btn"> 
                                                <button class="btn btn-success add-more" type="button"><i class="glyphicon glyphicon-plus"></i> Add</button>
                                            </div> -->
                                    
                                        
                                    
                                        <div class="form-group">
                                            <label for="sandar_kapal" class="col-sm-4 control-label">Document Pendukung Kegiatan</label>
                                        </div>
                                        <div class="form-group">
                                            <label for="doc_ptw" class="col-sm-offset-1 col-sm-3 control-label">Upload PTW</label>
                                            <div class="col-sm-4">
                                                <div class="input-group input-file" name="doc_ptw">
                                                    <input type="text" class="form-control" required />			
                                                    <span class="input-group-btn">
                                                        <button class="btn btn-default btn-choose" type="button">Browse</button>
                                                    </span>
                                                </div>
                                            </div>
                                            <div class="col-sm-offset-2">
                                                <div class="text-warning">
                                                    <p>*Upload ulang document</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="doc_pjsm"  class="col-sm-offset-1 col-sm-3 control-label">Upload PJSM</label>
                                            <div class="col-sm-4">
                                                <div class="input-group input-file" name="doc_pjsm">
                                                    <input type="text" class="form-control" required />			
                                                    <span class="input-group-btn">
                                                        <button class="btn btn-default btn-choose" type="button">Browse</button>
                                                    </span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="doc_lsap" class="col-sm-offset-1 col-sm-3 control-label">Upload List Sertifikat Alat & Personil</label>
                                            <div class="col-sm-4">
                                                 <div class="input-group input-file" name="doc_lsap">
                                                    <input type="text" class="form-control" required />			
                                                    <span class="input-group-btn">
                                                        <button class="btn btn-default btn-choose" type="button">Browse</button>
                                                    </span>
                                                </div>
                                            </div>
                                        </div> 
                                        <div class=" modal-footer">
                                            <input type="submit" name="edit" class="btn btn-primary col-sm-offset-1 " value="Update" > 
                                            &nbsp;
                                            <input type="reset" class="btn btn-danger" data-dismiss="modal" value="Batal">                                                                              
                                        </div>
                                </div>
                            </form> 
                        </div>
                        <!-- footer modal -->
                        <!-- <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Tutup Modal</button>
                        </div> -->
                    </div>
                </div>
                </div>
                <?php endwhile; } ?>
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
    });



    // script upload file

        function bs_input_file() {
        $(".input-file").before(
            function() {
                if ( ! $(this).prev().hasClass('input-ghost') ) {
                    var element = $("<input type='file' class='input-ghost' style='visibility:hidden; height:0'>");
                    element.attr("name",$(this).attr("name"));
                    element.change(function(){
                        element.next(element).find('input').val((element.val()).split('\\').pop());
                    });
                    $(this).find("button.btn-choose").click(function(){
                        element.click();
                    });
                    $(this).find("button.btn-reset").click(function(){
                        element.val(null);
                        $(this).parents(".input-file").find('input').val('');
                    });
                    $(this).find('input').css("cursor","pointer");
                    $(this).find('input').mousedown(function() {
                        $(this).parents('.input-file').prev().click();
                        return false;
                    });
                    return element;
                }
            }
        );
    }
    $(function() {
        bs_input_file();
    });
</script>