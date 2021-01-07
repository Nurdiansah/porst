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
	

        $query = mysqli_query($koneksi, "SELECT * FROM job_order  ORDER BY progres_jo ASC ");    


?>
<!-- Main content -->
<section class="content">
<!-- Small boxes (Stat box) -->
	<div class="row">
		<div class="col-sm-12">
			 <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="text-center">LAPORAN SANDAR KAPAL</h3>
                </div>                
                <div class="box-header with-border">
                    <h4>Download Laporan Sandar Kapal </h4> <a target="_blank" href="cetak_laporansandar.php" class="btn btn-success"><i class="fa fa-print"></i> Cetak </a>

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