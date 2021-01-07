<?php  
      include "../fungsi/koneksi.php";
      if (isset($_GET['aksi']) && isset($_GET['id'])) {
        //die($id = $_GET['id']);
        $id = $_GET['id'];        

        if ($_GET['aksi'] == 'edit') {
            header("location:?p=edituser&id=$id");
        } else if ($_GET['aksi'] == 'hapus') {
            header("location:?p=hapususer&id=$id");
        } 
    }
	
	$query = mysqli_query($koneksi, "SELECT * FROM alat_berat ORDER BY nm_alatberat ASC");	

?>

<!-- Main content -->
<section class="content">
<!-- Small boxes (Stat box) -->
	<div class="row">
		<div class="col-sm-12">
			 <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="text-center">Alat Berat</h3>
                </div>                
                <div class="box-body">
               <div class="row">
                    <!-- <div class="col-md-2">
                        <a href="index.php?p=tambah_alatberat" class=" btn btn-primary"><i class="fa fa-plus"></i> Tambah Data</a> 
                    </div>
                    <br><br> -->
                </div>                  
                	<div class="table-responsive">
                		<table class="table text-center  table table-striped table-hover" id="alat_berat">
                			<thead  > 
	                			<tr>
	                				<th>No</th>
	                				<th>Nama Alat Berat</th>
                                    <th>Jenis</th>
                                    <th>Area</th>	                					                				
                                    <th>Status</th>               				
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
                						<td> <?= $row['nm_alatberat']; ?> </td> 
                                        <td> <?= $row['jns_alatberat']; ?> </td> 
                                        <td> <?= $row['area_alatberat']; ?> </td>                                       
                                        <td> 
                                        <?php
                                            if ($row['status_alatberat']=="0") {
                                                echo "READY" ;
                                            } else if ($row['status_alatberat']=="1") {
                                                echo "SERVICES" ;
                                            } else if ($row['status_alatberat']=="2") {
                                                echo "REPAIR" ;
                                            } else if ($row['status_alatberat']=="3") {
                                                echo "DOWNTIME" ;
                                            }
                                            

                                        ?> 
                                        
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

</section>

<script>
    $(function(){
        $("#user").DataTable({
             "language": {
            "url": "http://cdn.datatables.net/plug-ins/1.10.9/i18n/Indonesian.json",
            "sEmptyTable": "Tidak ada data di database"
            }
        });
    });
</script> 
