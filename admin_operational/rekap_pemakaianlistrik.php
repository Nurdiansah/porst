<?php  
      include "../fungsi/koneksi.php";
      include "../fungsi/fungsi.php";

      if(isset($_GET['id']) && isset($_GET['bln']) && isset($_GET['thn'])){
          $id = $_GET['id'];
          $bulan = $_GET['bln'];
          $tahun = $_GET['thn'];
      }
    
    $query = mysqli_query($koneksi, "SELECT * FROM pemakaian_listrik WHERE bulan = '$bulan' AND YEAR(tanggal_awal) = '$tahun'");
    $queryTgl = mysqli_query($koneksi, "SELECT *, sum(satuan_kwh) as satuan_kwh FROM pemakaian_listrik WHERE bulan = '$bulan' AND YEAR(tanggal_awal) = '$tahun'");
    $rowTgl = mysqli_fetch_assoc($queryTgl);
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
                            <a href="index.php?p=pemakaian_listrik" class="btn btn-primary"><i class="fa fa-backward"></i> Kembali</a> 
                        </div>
                        <br><br>
                    </div> 
                    <h4 class="text-center"><b>
                        ELECTRICAL PHE OSES KALIJAPAT IV<br>
                        ENC - PHE OSES<br>
                        Periode : <?= tanggal($rowTgl['tanggal_awal']); ?> - <?= tanggal($rowTgl['tanggal_akhir']); ?>
                        </b>
                    </h4>
                </div>
                <div class="box-body">
                	<div class="table-responsive">
                        <div id="jo_table">  
                		<table class="table text-center table-striped table-hover"  >
                			<thead style="background-color: ;" > <!-- #ccccff -->
	                			<tr>
	                				<th style="width: 20px;">No</th>
                                    <th>Description</th>
                                    <th>Jumlah Pemakaian Listrik Perbulan<br>(Dalam Satuan KWH)</th>
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
                                    <td> <?= $row['lokasi']; ?></td>
                                    <td> <?= $row['satuan_kwh']; ?></td>
                                    <!-- <td>
                                        <a href="index.php?p=dtlpemakaian_trucktrailler"><button class="btn btn-success" > <i class="fa fa-search-plus"></i> </button></a> 
                                    </td> -->
                				</tr>
                			<?php $no++; endwhile; } ?>
                                <tr style="background-color: ;">
                                    <th colspan="2">Total</th>
                                    <th><?= $rowTgl['satuan_kwh']; ?></th>
                                </tr>
                			</tbody>
                		</table>
                	</div>                	
                </div>
                      
            </div>
		</div>
	</div>
</section>

