<?php  
      include "../fungsi/koneksi.php";
      include "../fungsi/fungsi.php";
    
    if(!isset($_GET['id'])){
        header("location:../index.php");
      }

    $id = $_GET['id'];
    $id = base64_decode($id);

	
    $query = mysqli_query($koneksi, "SELECT * FROM moving s                                              
                                              JOIN client c
                                              ON c.id_client = s.id_client
                                              WHERE s.id_moving = '$id'
                                              ");	
    $row=mysqli_fetch_assoc($query);  
    $start = $row['mulai_kegiatan']; 

    
    $queryDetail = mysqli_query($koneksi, "SELECT * FROM detail_staclomg WHERE id_moving = '$id' AND qty_cargo >0 ");
    
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
                    <h2 class="text-center"><?= $row['nm_kegiatan']; ?></h2>
                </div>                
              <div class="box-body">  
                <!-- Head -->
                    <div class="row">
                            <label for="id_joborder" class=" col-sm-2 control-label">ID Job Order</label>
                            <div class="col-sm-3">
                                <input type="text" value="<?= $row['id_moving']; ?>" readonly class="form-control" name="id_joborder" >
                            </div>
                            <label id="tes"for="client" class="col-sm-1 col-sm-offset-3 control-label">Client</label>
                            <div class="col-sm-3">
                                <input type="text" value="<?= $row['nm_client']; ?>" readonly class="form-control" name="client">
                            </div>
                    </div>
                    <br>
                    <div class="row">
                            <label id="tes"for="nm_kapal" class=" col-sm-2 control-label">Alat Berat</label>
                            <div class="col-sm-3">
                                <input type="text" value="<?= $row['nm_alatberat']; ?>" readonly class="form-control" name="nm_kapal">
                            </div>
                    <!-- </div>
                    <div class="form-group">  -->
                            <!-- <label id="tes"for="agen_kapal"  class="col-sm-1   control-label"></label> -->
                            <div class="col-sm-offset-8">
                                <a target="_blank" href="../assets/tcpdf/cetak_tallysheetmoving.php?id=<?= $id; ?>" class="btn btn-success"><i class="fa fa-print"></i> Tally Sheet </a>                                                                          
                                <span data-placement='top' data-toggle="modal" data-target="#stf" title='Continue'><button  class="btn btn-primary"><i class="fa fa-send"></i> Submit To Manager</button></span>
                                <!-- <input type="text"  value="<?= $row2['agen_kapal']; ?>" readonly  class="form-control" name="agen_kapal"> -->
                            </div>
                    </div>    
                    <br>                                
                    <!-- Progress Cargo  -->
                                                               
                        <hr><h3 class="text-center">Detail Cargo</h3><hr>                                                
                        <div class="table-responsive">
                            <table class="table text-center table table-striped table-hover" id="">
                                    <thead style="background-color :#B0C4DE;" > 
                                        <tr>
                                            <th>No </th>
                                            <th>Time</th>
                                            <th>Vendor</th>
                                            <th>Nama Barang</th>									
                                            <th>Quantity</th>
                                            <th>Satuan</th>
                                            <th>Lokasi Awal</th>	                				                                                                                
                                            <th>Lokasi Akhir</th>	  
                                            <th>M<sup>3</sup></th>        				
                                            <th>Ton</th>
                                            <th>RevTon</th>                                            	                				                                                                                
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <?php 
                                            $no =1 ;
                                            if (mysqli_num_rows($queryActual)) {
                                            while($rowAct=mysqli_fetch_assoc($queryActual)): ?>                					
                                                <td> <?= $no; ?> </td>      
                                                <td> <?= $rowAct['time_as']; ?> </td>
                                                <td> <?= $rowAct['nm_company_as']; ?> </td>
                                                <td> <?= $rowAct['nm_barang_as']; ?> </td>
                                                <td> <?= $rowAct['qty_cargo_as']; ?> </td>                                                
                                                <td> <?= $rowAct['satuan_cargo_as']; ?> </td>
                                                <td> <?= $rowAct['lokasi_awal']; ?> </td>
                                                <td> <?= $rowAct['lokasi_akhir']; ?> </td>
                                                <td> <?= $rowAct['volume_cargo_as']; ?> </td>
                                                <td> <?= $rowAct['ton_cargo_as']; ?> </td>
                                                <td> <?= $rowAct['revton_cargo_as']; ?> </td>                                                                                                
                                        </tr>
                                    <?php                      
                                    $no++; endwhile; } ?>
                                    </tbody>
                                    <tr style="background-color :#B0C4DE;">
                                        <td colspan="10"><h4><b>Total Cargo</b></h4></td>
                                        <td><h4><b><?= $row['total_cargo'];?></b></h4></td>                                        
                                    </tr>
                                </table>
                            </div>                        
                    <!--  --> 
                    
                <br>                                                           
            </div>
		</div>
	</div>
</section>               

                <!-- Modal stf-->
                    <div class="modal fade" id="stf" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <form method="post" action="submit_moving.php" enctype="multipart/form-data" class="form-horizontal">
                                <div class="modal-content">
                                <div class="modal-header">
                                    <h4 class="modal-title" id="exampleModalLabel">Konfirmasi</h4>                  
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <div class="form-group">                                
                                    <div class="col-sm-6 col-sm-offset-3">
                                        <input type="hidden" value="<?=$id;?>" name="id_moving">
                                        <input type="text" class="form-control" name="no_wo" required placeholder="Inputkan no wo">
                                    </div>
                                    </div>
                                    <h4 class="col-sm-offset-1">Apa anda yakin ingin mengirim ke Manager Shorebase?</h4>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>        
                                    <button type="submit" name="submit" class="btn btn-primary">Ya</button></a>
                                </div>
                            </form>
                            </div>
                        </div>
                    </div>

                <!-- akhir modul stf --> 

<?php 
    $host = host();

?>

<script>
    var host ='<?=$host?>';

    var panjanGlobal = 0;
    var lebarGlobal = 0;
    var tinggiGlobal = 0;
    var volumeGlobal = 0; 
    
    
    $(function(){
        $("#user").DataTable({
             "language": {
            "url": "http://cdn.datatables.net/plug-ins/1.10.9/i18n/Indonesian.json",
            "sEmptyTable": "Tidak ada data di database"
            }
        });
    });

    // Modal Lihat
    $(function(){
            $('.modalLihat').on('click', function () {            

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
                    url:host+'checker/getcargotruck.php',
                    data: {id : id},
                    method: 'post',
                    dataType: 'json',
                    success:function(data){
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
