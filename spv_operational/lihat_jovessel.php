<?php  

    include "../fungsi/koneksi.php";
	include "../fungsi/fungsi.php";


    if (isset($_GET['aksi']) && isset($_GET['id'])) {
        //die($id = $_GET['id']);
        $id = $_GET['id'];
        echo $id;

        if ($_GET['aksi'] == 'edit') {
            header("location:?p=lihat_joborder&id=$id");
        } else if ($_GET['aksi'] == 'hapus') {
            header("location:?p=hapus_joborder&id=$id");
        } 
    }
	
	// if(isset($_GET['id_jenis'])){
    //     $id_jenis = $_GET['id_jenis'];
        $queryUser =  mysqli_query($koneksi, "SELECT area from user WHERE username  = '$_SESSION[username]'");
	    $rowUser=mysqli_fetch_assoc($queryUser);
        $Area=$rowUser['area'];

        $query = mysqli_query($koneksi, "SELECT * FROM job_order jo
                                                  JOIN client c
                                                  ON c.id_client = jo.id_client
                                                  WHERE jo.status_jo>=2 AND jo.area = '$Area' 
                                                  ORDER BY jo.id_joborder DESC  ");    
        

	

?>
<!-- Main content -->
<section class="content">
<!-- Small boxes (Stat box) -->
	<div class="row">
		<div class="col-sm-12">
			 <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="text-center">JOB ORDER VESSEL</h3>
                </div>                
                <div class="box-body">
                <div class="row">
                    <!-- <div class="col-md-2">
                        <a href="index.php?p=tambahmaterial" class=" btn btn-primary"><i class="fa fa-plus"></i> Tambah Data Stok</a><br>						
                </div>
					 -->
					<!-- <div class="col-md-2 pull-right">
						<a target="_blank" href="cetakstok.php?idjenis=<?= $id_jenis;  ?>" class="btn btn-success"><i class="fa fa-print"></i> Cetak Job Order</a><br>
					</div> -->
                    <br><br>
                </div>                        
                	<div class="table-responsive">
                		<table class="table text-center table table-striped table-hover" id="material">
                			<thead  > 
	                			<tr>
	                				<th>No</th>	  
									<th>Tanggal Masuk</th>									
                                    <th>ID Job Order</th>        				
	                				<th>Nama Kapal</th>
	                				<th>Client</th>
                                    <th>Sandar Kapal</th>
                                    <th>Status</th>
	                				<th>Aksi</th>	                				
	                			</tr>
                			</thead>
                			<tbody>
                				<tr>
                					<?php 
                						$no =1 ;
                						if (mysqli_num_rows($query)) {
                							while($row=mysqli_fetch_assoc($query)):
                                            $idJoborder=$row['id_joborder'];

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
                						<td> <?= $no; ?> </td>      
										<td> <?= tanggal_indo($row['tgl_masuk']); ?> </td>
                                        <td> <?= $row['id_joborder']; ?> </td>          					
                						<td> <?= $row['nm_kapal']; ?> </td>
                						<td> <?= $row['nm_client']; ?> </td>
                                        <td> <?= $row['sandar_kapal']; ?> </td>
                                        <td>                
                                            <?php if ($row['status_jo'] == 0) {
                                                echo '<span class=text-warning>Sudah di submit ke finance </span>';
                                                echo round($statusCargo,0), ' %';
                                            } else if ($row['status_jo'] == 1) {
                                                echo '<span class=text-primary>Menunggu Approved Manager Shorebase</span>';
                                            } else {
                                                echo round($statusCargo,0), ' %';
                                            }
                                            ?>                                        
                                         </td>
                                        
                                        
                						<td>
                                            <a href="?p=lihat_jovessel&aksi=edit&id=<?= $row['id_joborder']; ?>"><span data-placement='top' data-toggle='tooltip' title='Lihat'><button  class="btn btn-info">Lihat</button></span></a>                     

                                            <!-- <a target="_blank" href="cetak_jobreportvessel.php" class="btn btn-success"><i class="fa fa-print"></i> Cetak </a> -->
                                        </td>              					
                				</tr>
                            <?php 
                                               
                            $no++; endwhile; } ?>
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
        $("#material").DataTable({
             "language": {
            "url": "http://cdn.datatables.net/plug-ins/1.10.9/i18n/Indonesian.json",
            "sEmptyTable": "Tidak ada data di database"
            }
        });
    });
</script> 