<?php  
    include "../fungsi/koneksi.php";
    include "../fungsi/fungsi.php";

        $id = $_GET['id'];

        $query2 = mysqli_query($koneksi, "SELECT * FROM job_order WHERE id_joborder='$id' ");
        $queryView = mysqli_query($koneksi, "SELECT * from detail_joborder WHERE id_joborder = '$id' ");
        $queryDoc = mysqli_query($koneksi, "SELECT * from doc_lo WHERE id_joborder = '$id' ");
        $queryNama =  mysqli_query($koneksi, "SELECT nama from user WHERE username  = '$_SESSION[username]'");
	    $rowNama=mysqli_fetch_assoc($queryNama);
        $Nama=$rowNama['nama'];
    
?>
<section class="content">
    <div class="row">
        <div class="col-sm-12 col-xs-12">
            <div class="box box-primary">
                <div class="row">
                        <div class="col-md-2">
                            <a href="index.php?p=data_jovessel" class="btn btn-primary"><i class="fa fa-backward"></i> Kembali</a> 
                        </div>
                        <br><br>
                </div>
                
                <!-- Detail Job Order -->
                
                <div class="box-header with-border">
                    <h3 class="text-center">Konfirmasi Job Order Vessel</h3>
                </div>
                <form method="post" enctype="multipart/form-data" class="form-horizontal">
                        <?php 
                        if (mysqli_num_rows($query2)) {
                            while($row2=mysqli_fetch_assoc($query2)):
                            // query Total_cargo
                            $queryTc =  mysqli_query($koneksi, "SELECT sum(m3_cargo) as total_cargo FROM detail_joborder WHERE id_joborder='$id' AND cargo_final='1'");
                            $rowTc=mysqli_fetch_assoc($queryTc);
                            $Tc=$rowTc['total_cargo'];
                        ?>
                    <div class="box-body">
                    <div class="form-group ">
                            <label for="id_joborder" class=" col-sm-2 control-label">ID Job Order</label>
                            <div class="col-sm-3">
                                <input type="text" value="<?= $row2['id_joborder']; ?>" readonly class="form-control" name="id_joborder" >
                            </div>
                            <label id="tes"for="agen_kapal"  class=" col-sm-3 control-label">Document_perintah</label>
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
                        <!-- </div>
                        <div class="form-group"> -->
                            <label for="jml_cargo" class="col-sm-3 control-label">Jumlah Cargo</label>
                            <div class="col-sm-3">
                                <input type="number" value="<?= $row2['total_cargo']; ?>" readonly  class="form-control" name="jml_cargo">
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
                    </div>
                </form>

                <div class="box-header with-border">
                    <h3 class="text-center">Detail Cargo</h3>
                </div>                         
                <div class="table-responsive">
                		<table class="table text-center table table-striped table-hover" id="jobordervessel">
                			<thead  > 
	                			<tr style="background-color: #ADD8E6">
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
                                <tr style="background-color: #ADD8E6;">
                                    <td colspan="7"><b> Total Cargo</b></td>
                                    <td colspan="2"><b><?= $Tc?></b></td>
                                </tr>
                			</tbody>
                		</table>
                	</div>

               <!-- Embed Document               -->
               <!-- Document PTW -->
               <?php 
                  if (mysqli_num_rows($queryDoc)) {
                      while($rowDoc=mysqli_fetch_assoc($queryDoc)):
                                     ?>
                    <div class="box-header with-border">
                    <h3 class="text-center"><?php echo $rowDoc['nmDoc']; ?> </h3>
                    <div class="embed-responsive embed-responsive-16by9">
                        <iframe class="embed-responsive-item" src="../file/<?php echo $rowDoc['docLo']; ?> "></iframe>
                    </div>
                                   
                <?php endwhile; } ?>
                               
                    <br>
                    <br>
                    <div class="col-sm-offset-9 col-sm-3 control-label">
                    <h4> Konfirmasi Job Order </h4>
                    <a  href="setuju_joborder.php?id=<?= $row2['id_joborder']; ?>"><span data-placement='top' data-toggle='tooltip' title='Setujui'><button   class="btn btn-success">Setujui</button></span></a>                
                    <button type="button"  class="btn btn-danger" data-toggle="modal" data-target="#tolak" >Tidak Setuju</button></span></a>            
                    </div>
                <!-- </div> -->
                </div>   
            </div>
        </div>
    </div>

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
                            <form method="post" enctype="multipart/form-data" action="tolak_joborder.php" class="form-horizontal">
                                <div class="box-body">
                                    <div class="form-group ">
                                        
                                        <div class="col-sm-4">
                                            <input type="hidden" value="<?= $row2['id_joborder']; ?>" class="form-control" name="id_joborder" readonly>
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
                                        <!-- <input type="submit" name="simpan" class="btn btn-primary col-sm-offset-1 " value="kirim" >  -->
                                        &nbsp;
                                        <input type="reset" class="btn btn-danger" data-dismiss="modal" value="Batal">                                                                              
                                    </div>
                                </div>
                            </form> 
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
</script>


