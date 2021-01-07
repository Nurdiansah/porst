<?php  

	include "../fungsi/koneksi.php";
    $id = $_GET['id'];


    $query = mysqli_query($koneksi, "SELECT * FROM detail_joborder WHERE id_joborder='$id' ORDER BY tgl_cargo ASC ");
    $query2 = mysqli_query($koneksi, "SELECT * FROM job_order WHERE id_joborder='$id' ");
    $queryView = mysqli_query($koneksi, "SELECT * from detail_joborder WHERE id_joborder = '$id' ");
    

    // $selisih = $jumlahCargo['ton_cargo'] * $totalCargo  ;
?>

<section class="content">
    <div class="row">
        <div class="col-sm-12 col-xs-12">
            <div class="box box-primary">
                <div class="row">
                        <div class="col-md-2">
                            <a href="index.php?p=lihat_jovessel" class="btn btn-primary"><i class="fa fa-backward"></i> Kembali</a> 
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
                            $idJoborder=$row2['id_joborder'];
                            $statusJo=$row2['status_jo'];
                        ?>
                    <div class="box-body">
                    <div class="form-group ">
                            <label for="id_joborder" class=" col-sm-2 control-label">ID Job Order</label>
                            <div class="col-sm-3">
                                <input type="text" value="<?= $row2['id_joborder']; ?>" readonly class="form-control" name="id_joborder" >
                            </div>
                            <label id="tes"for="agen_kapal"  class=" col-sm-3 control-label">Document Perintah</label>
                            <div class="col-sm-3">
                                <input type="text"  value="<?= $row2['document_perintah']; ?>" readonly  class="form-control" name="agen_kapal">
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
                            <label id="tes"for="sandar_kapal" class="col-sm-3 control-label">Sandar Kapal</label>
                            <div class="col-sm-3">
                                <input type="text" value="<?=  $row2['sandar_kapal']; ?>" readonly  class="form-control" name="sandar_kapal">
                            </div>
                        </div>
						<div class="form-group">
                            <label id="tes"for="alat_berat" class="col-sm-2 control-label">Alat Berat</label>
                            <div class="col-sm-3">
                                <input type="text" value="<?= $row2['alat_berat']; ?>" readonly  class="form-control" name="alat_berat">
                            </div>
                        </div> 
                        <div class="form-group">
                            <?php 
                            if ($row2['alat_berat2']!='NULL') { ?>
                                    <div class="col-sm-offset-2 col-sm-3">
                                        <input type="text" value="<?= $row2['alat_berat2']; ?>" readonly  class="form-control" name="alat_berat2">
                                    </div>
                            <?php   } ?>
                        </div>
                        <div class="form-group">
                            <?php   if($row2['alat_berat3']!='NULL'){ ?>
                                    <div class="col-sm-offset-2 col-sm-3">
                                        <input type="text" value="<?= $row2['alat_berat3']; ?>" readonly  class="form-control" name="alat_berat3">
                                    </div>
                            <?php   } ?>
                        </div>
                            
                    </div>
                    <?php endwhile; } ?>
                </form>
                               
                <div class="box-header with-border">
                    <h3 class="text-center">Update Progress Job Order Vessel</h3>
                </div>                         
                <div class="table-responsive">
                		<table class="table text-center table table-striped table-hover" id="jobordervessel">
                			<thead  > 
	                			<tr>
                                    <th>No </th>
                                    <th>Doc No./ Police</th>
                                    <th>Quantity</th>
                                    <th>Satuan</th>	  
									<th>Description</th>									
                                    <th>M<sup>3</sup></th>        				
	                				<th>Ton</th>
									<th>Remarks</th>
                                    <th>Status</th>	                				
	                			</tr>
                			</thead>
                			<tbody>
                				<tr>
                					<?php 
                						$no =1 ;
                						if (mysqli_num_rows($queryView)) {
                							while($row=mysqli_fetch_assoc($queryView)):
                					 ?>
                						<td> <?= $no; ?> </td>      
										<td> <?= $row['doc_no']; ?> </td>
                                        <td> <?= $row['qty_cargo']; ?> </td>
                                        <td> <?= $row['satuan_cargo']; ?> </td>
                						<td> <?= $row['rincian_cargo']; ?> </td>
										<td> <?= $row['m3_cargo']; ?> </td>
                                        <td> <?= $row['ton_cargo']; ?> </td>
                                        <td> <?= $row['remarks_cargo']; ?> </td>
                                        <td>
                                        <?php  if ($row['cargo_final']==0) { ?>
                                            <span>Open</span>
                                        <?php } else if ($row['cargo_final']==1) { ?>
                                            <span>Selesai</span>
                                        <?php } else if ($row['cargo_final']==2) { ?>
                                            <span>Tidak Ada</span>
                                        <?php } ?>
                                        </td>				
                				</tr>
                			<?php $no++; endwhile; } ?>
                			</tbody>
                		</table>
                	</div>
                    
                    <?php 
                    // query booking cargo
                    $queryBc =  mysqli_query($koneksi, "SELECT sum(m3_cargo) as booking_cargo FROM detail_joborder WHERE id_joborder='$idJoborder' AND status_cargo=1");
                    $rowBc=mysqli_fetch_assoc($queryBc);
                    $Bc=$rowBc['booking_cargo'];

                    // -- query addtional_cargo
                    $queryAc =  mysqli_query($koneksi, "SELECT sum(m3_cargo) as addtional_cargo FROM detail_joborder WHERE id_joborder='$idJoborder' AND status_cargo=2 or status_cargo=3");
                    $rowAc=mysqli_fetch_assoc($queryAc);
                    $Ac=$rowAc['addtional_cargo'];

                    // query na_cargo
                    $queryNc =  mysqli_query($koneksi, "SELECT sum(m3_cargo) as na_cargo FROM detail_joborder WHERE id_joborder='$idJoborder' AND cargo_final=2");
                    $rowNc=mysqli_fetch_assoc($queryNc);
                    $Nc=$rowNc['na_cargo'];

                    // query progres_cargo
                    $queryPc =  mysqli_query($koneksi, "SELECT sum(m3_cargo) as progres_cargo FROM detail_joborder WHERE id_joborder='$idJoborder' AND cargo_final='1'");
                    $rowPc=mysqli_fetch_assoc($queryPc);
                    $Pc=$rowPc['progres_cargo'];

                    $statusCargo= @($Pc/($Bc+$Ac-$Nc)*100) ;
                    
                    ?>
                    <h4>Persentase</h4>
                    <div class="progress">
                        <div class="progress-bar" role="progressbar" aria-valuemin="0" aria-valuemax="100" style="width: <?= round($statusCargo,0); ?>%;">
                        <?= round($statusCargo,0); ?> %
                         </div>
                    <br>
                    <br>             
                    <h5>.</h5>
                </div>
                
                <!-- Akhir Modal -->
                <!-- </div> -->
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