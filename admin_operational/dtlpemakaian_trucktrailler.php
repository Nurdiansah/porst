<?php  
      include "../fungsi/koneksi.php";
      include "../fungsi/fungsi.php";

      if(isset($_GET['id'])){
          $id = $_GET['id'];
      }

      if(isset($_POST['simpan'])) {
        $id = $_POST['id'];
        $tanggal = $_POST['tanggal'];
        $no_so = $_POST['no_so'];
        $no_wo = $_POST['no_wo'];
        $truck_losbak = $_POST['truck_losbak'];
        $trailler_tronton = $_POST['trailler_tronton'];
        $trailler_lowbed = $_POST['trailler_lowbed'];
    
        $path = ($_FILES['dokumen']['tmp_name']);
        $nm_file = ($_FILES['dokumen']['name']);
        move_uploaded_file($path, "../file/$nm_file");

        $query = "INSERT INTO dtl_trucktrailler (id_trucktrailler, tanggal, no_so, no_wo, truck_losbak, trailler_tronton, trailler_lowbed, file) VALUES 
                                        ($id, '$tanggal', '$no_so', '$no_wo', '$truck_losbak', '$trailler_tronton', '$trailler_lowbed', '$nm_file');
                    ";
        
        $hasil = mysqli_query($koneksi, $query);
            if ($hasil) {
                header("location:index.php?p=dtlpemakaian_trucktrailler&id=$id");
            } else {
                die("Error cuii : " . mysqli_error($koneksi));
            }
    
        }
    
    $query = mysqli_query($koneksi, "SELECT * FROM dtl_trucktrailler WHERE id_trucktrailler = '$id'");
    $query_tt = mysqli_query($koneksi, "SELECT * FROM pemakaian_trucktrailler WHERE id_trucktrailler = '$id'");
    $row_tt = mysqli_fetch_assoc($query_tt);

    $querySum = mysqli_query($koneksi, "SELECT sum(truck_losbak) as sum_tl, sum(trailler_tronton) as sum_tt, sum(trailler_lowbed) as sum_lb
                                        FROM dtl_trucktrailler WHERE id_trucktrailler = '$id'");
    $rowSum = mysqli_fetch_assoc($querySum);
?>

<!-- Main content -->
<section class="content">
<!-- Small boxes (Stat box) -->
	<div class="row">
		<div class="col-sm-12">
			 <div class="box box-primary">
                <div class="box-header with-border">
                    <div class="row">
                        <div class="col-md-2">
                            <a href="index.php?p=pemakaian_trucktrailler" class="btn btn-primary"><i class="fa fa-backward"></i> Kembali</a> 
                        </div>
                        <br><br>
                    </div> 
                    <h4 class="text-center"><b>
                        LAND TRANSPORTATION <br>
                        (<?= $row_tt['nm_lokasi']; ?>) <br>
                        ENC - PHE OSES</b>
                    </h4>
                </div>
                <div class="box-body">
                    <div class="row">
                        <div class="col-md-2">
                        <button type="button" class="btn btn-primary col-sm-offset- modalTambah" data-toggle="modal" data-target="#myModal">Tambah Data</button>
                        </div>
                    <br><br>
                    </div>
                	<div class="table-responsive">
                        <div id="jo_table">  
                		<table class="table text-center table-striped table-hover"  >
                			<thead style="background-color :;" > 
	                			<tr>
	                				<th style="width: 20px;">No</th>
                                    <th>Tanggal</th>
                                    <th>No. SO</th>
                                    <th>No. WO</th>
                                    <th>Truck / Losbak Trip</th>
                                    <th>Trailler / Tronton Trip</th>
                                    <th>Trailler / Low Bed Trip</th>
	                			</tr>                                
                			</thead>
                			<tbody>
                				<tr>
                					<?php 
                						$no =1 ;
                						if (mysqli_num_rows($query)) {
                                            while($row=mysqli_fetch_assoc($query)):      
                					    ?>
                					<td> <?= $no; ?> </td>
                                    <td> <?= $row['tanggal']; ?></td>
                                    <td> <?= $row['no_so']; ?></td>
                                    <td> <?= $row['no_wo']; ?></td>
                                    <td> <?= $row['truck_losbak']; ?></td>
                                    <td> <?= $row['trailler_tronton']; ?></td>
                                    <td> <?= $row['trailler_lowbed']; ?></td>
                                    <!-- <td>
                                        <a href="index.php?p=dtlpemakaian_trucktrailler"><button class="btn btn-success" > <i class="fa fa-search-plus"></i> </button></a> 
                                    </td> -->
                				</tr>
                			<?php $no++; endwhile; } ?>
                                <tr style="background-color: ;">
                                    <th colspan="4">Total</th>
                                    <th><?= $rowSum['sum_tl']; ?></th> 
                                    <th><?= $rowSum['sum_tt']; ?></th>
                                    <th><?= $rowSum['sum_lb']; ?></th>
                                </tr>
                			</tbody>
                		</table>
                	</div>                	
                </div>
                      
            </div>
		</div>
	</div>

    <div id="myModal" class="modal fade" role="dialog">
                <div class="modal-dialog">
                    <!-- konten modal-->
                    <div class="modal-content">
                        <!-- heading modal -->
                        <div class="modal-header">
                            <button type="button" enctype="multipart/form-data" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">Tambah Data</h4>
                        </div>
                        <!-- body modal -->
                        <div class="modal-body">
                            <form method="post" name="form" enctype="multipart/form-data" action="" class="form-horizontal">
                                <div class="box-body">
                                <input type="hidden" name="id" value="<?= $id ?>">
                                    <div class="form-group">
                                        <label for="tanggal" class="col-sm-offset-1 col-sm-3 control-label">Tanggal</label>
                                        <div class="col-sm-5">
                                            <input type="text" required class="form-control tanggal" name="tanggal" id="tanggal">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="no_so" class="col-sm-offset-1 col-sm-3 control-label">No. Service Order</label>
                                        <div class="col-sm-5">
                                            <input type="text" required class="form-control" name="no_so" id="no_so">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="no_wo" class="col-sm-offset-1 col-sm-3 control-label">No. Work Order</label>
                                        <div class="col-sm-5">
                                            <input type="text" required class="form-control" name="no_wo" id="no_wo">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="truck_losbak" class="col-sm-offset-1 col-sm-3 control-label">Truck / Losbak Trip</label>
                                        <div class="col-sm-5">
                                            <input type="number" required class="form-control" name="truck_losbak" id="truck_losbak">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="trailler_tronton" class="col-sm-offset-1 col-sm-3 control-label">Trailler / Tronton Trip</label>
                                        <div class="col-sm-5">
                                            <input type="number" required class="form-control" name="trailler_tronton" id="trailler_tronton">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="trailler_lowbed" class="col-sm-offset-1 col-sm-3 control-label">Trailler / Low Bed Trip</label>
                                        <div class="col-sm-5">
                                            <input type="number" required class="form-control" name="trailler_lowbed" id="trailler_lowbed">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="dokumen" class="col-sm-offset-1 col-sm-3 control-label">Dokumen Pendukung</label>
                                        <div class="col-sm-5">
                                            <input type="file" name="dokumen" id="dokumen">
                                        </div>
                                    </div>
                                    <div class=" modal-footer">
                                        <input type="submit" name="simpan" class="btn btn-success col-sm-offset-1 " value="Tambah" > 
                                        &nbsp;
                                        <input type="reset" class="btn btn-warning" data-dismiss="modal" value="Batal">                                                                              
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
</script>
