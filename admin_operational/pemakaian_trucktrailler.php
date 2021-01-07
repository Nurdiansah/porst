<?php  
      include "../fungsi/koneksi.php";
      include "../fungsi/fungsi.php";

      if(isset($_POST['simpan'])) {
        $nm_lokasi = $_POST['nm_lokasi'];
    
        $query = "INSERT INTO pemakaian_trucktrailler (nm_lokasi) VALUES 
                                        ('$nm_lokasi');
                    ";
        
        $hasil = mysqli_query($koneksi, $query);
            if ($hasil) {
                header("location:index.php?p=pemakaian_trucktrailler");
            } else {
                die("Error cuii : " . mysqli_error($koneksi));
            }
    
        }
	
    $query = mysqli_query($koneksi, "SELECT * FROM pemakaian_trucktrailler");	

?>

<!-- Main content -->
<section class="content">
<!-- Small boxes (Stat box) -->
	<div class="row">
		<div class="col-sm-12">
			 <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="text-center">Pemakaian Truck / Trailler</h3>
                </div>                
                <div class="box-body">
                    <div class="row">
                        <div class="col-md-2">
                        <button type="button" class="btn btn-primary col-sm-offset- modalTambah" data-toggle="modal" data-target="#myModal">Tambah Area</button>
                        </div>
                    <br><br>
                    </div>
                	<div class="table-responsive">
                        <div id="jo_table">  
                		<table class="table text-center table-striped table-hover"  >
                			<thead style="background-color :#B0C4DE;" > 
	                			<tr>
	                				<th style="width: 20px;">No</th>
                                    <th>Area</th>
                                    <th>Aksi</th>
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
                                    <td> <?= $row['nm_lokasi']; ?></td>
                                    <td>
                                        <a href="index.php?p=dtlpemakaian_trucktrailler&id=<?= $row['id_trucktrailler']; ?>"><button class="btn btn-success" > <i class="fa fa-search-plus"></i> </button></a> 
                                    </td>
                				</tr>
                			<?php $no++; endwhile; } ?>
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
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">Tambah Area</h4>
                        </div>
                        <!-- body modal -->
                        <div class="modal-body">
                            <form method="post" name="form" enctype="multipart/form-data" action="" class="form-horizontal">
                                <div class="box-body">
                                <div class="form-group">
                                        <label for="nm_lokasi" class="col-sm-offset- col-sm-3 control-label">Nama Area</label>
                                        <div class="col-sm-8">
                                            <input type="text" required class="form-control" placeholder="Contoh : BSD Tangerang Selatan - Jakarta Selatan" name="nm_lokasi" id="nm_lokasi">
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

<?php 
    $host = host();

?>

