<?php
include "../fungsi/koneksi.php";
include "../fungsi/fungsi.php";

if (isset($_GET['aksi']) && isset($_GET['id'])) {
    //die($id = $_GET['id']);
    $id = $_GET['id'];

    if ($_GET['aksi'] == 'update') {
        header("location:?p=detail_prosestruck&id=$id");
    } else if ($_GET['aksi'] == 'hapus') {
        hapusJenisBarang($id);
        // $query = mysqli_query($koneksi,"DELETE FROM jenis_barang where id_jenis=$id");

        // echo "<div class='alert alert-danger' role='alert'> Data berhasil di hapus </div>";
    }
}

$query = mysqli_query($koneksi, "SELECT * FROM stacking s
                                              JOIN alat_berat a
                                              ON a.id_alatberat = s.id_alatberat 
                                              JOIN client c
                                              ON c.id_client = s.id_client
                                              WHERE s.status_stacking <= '3'
                                              ORDER BY s.created_on DESC
                                              ");

?>

<!-- Main content -->
<section class="content">
    <!-- Small boxes (Stat box) -->
    <div class="row">
        <div class="col-sm-12">
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="text-center">Proses Stacking/Stuffing</h3>
                </div>
                <div class="box-body">
                    <div class="table-responsive">
                        <div id="jo_table">
                            <table class="table text-center table-striped table-hover">
                                <thead style="background-color :#B0C4DE;">
                                    <tr>
                                        <th>No</th>
                                        <th>Id Job Order</th>
                                        <th>Tanggal</th>
                                        <th>Equipment</th>
                                        <th>Client</th>
                                        <th>Kegiatan</th>
                                        <th>Status</th>
                                        <th>Aksi</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <?php
                                        $no = 1;
                                        if (mysqli_num_rows($query)) {
                                            while ($row = mysqli_fetch_assoc($query)) :
                                                $start = $row['mulai_kegiatan'];

                                        ?>
                                                <td> <?= $no; ?> </td>
                                                <td> <?= $row['id_stacking']; ?> </td>
                                                <td><?= tanggal($row['created_on']); ?> </td>
                                                <td> <?= $row['nm_alatberat']; ?> </td>
                                                <td> <?= $row['nm_client']; ?> </td>
                                                <td> <?= $row['nm_kegiatan']; ?> </td>
                                                <td>
                                                    <?php if ($row['status_stacking'] == 1 && is_null($start)) {
                                                        echo  "<button type='button' class='btn btn-warning'>Ready</button>";
                                                    } else if ($row['status_stacking'] == 1) {
                                                        echo  "<button type='button' class='btn btn-success'>Progress</button>";
                                                    } else if ($row['status_stacking'] == 2) {
                                                        echo  "<button type='button' class='btn btn-danger'>Stop</button>";
                                                    } else if ($row['status_stacking'] == 3 || $row['status_stacking'] == 20) {
                                                        echo  "<span class='badge badge-pill badge-warning'>Validasi Supervisor</span>";
                                                    }
                                                    ?>
                                                </td>
                                                <td>
                                                    <a href="?p=detail_prosesstacking&id=<?= base64_encode($row['id_stacking']); ?>"><button class="btn btn-info"> Detail </button></a>
                                                </td>
                                    </tr>
                            <?php $no++;
                                            endwhile;
                                        } ?>
                                </tbody>
                            </table>
                        </div>
                    </div>

                    <!-- Awal Modal Create -->
                    <div id="myModal" class="modal fade" role="dialog">
                        <div class="modal-dialog">
                            <!-- konten modal-->
                            <div class="modal-content">
                                <!-- heading modal -->
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title">Create Job Stacking/Stuffing</h4>
                                </div>
                                <!-- body modal -->
                                <div class="modal-body">
                                    <div class="perhitungan">
                                        <form method="post" name="form" id="insert_form" enctype="multipart/form-data" action="add_stacking.php" class="form-horizontal">
                                            <div class="box-body">
                                                <div class="form-group">
                                                    <label id="tes" for="client" class="col-sm-offset-1 col-sm-3 control-label">Kegiatan</label>
                                                    <div class="col-sm-5">
                                                        <select name="nm_kegiatan" class="form-control" required>
                                                            <option value="">--Pilih Kegiatan--</option>
                                                            <option value="Stacking">STACKING</option>
                                                            <option value="Stuffing">STUFFING</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label id="tes" for="alat_berat" class="col-sm-offset-1 col-sm-3 control-label">Alat Berat</label>
                                                    <div class="col-sm-5">
                                                        <select name="id_alatberat" class="form-control">
                                                            <option value="">--Pilih Alat--</option>
                                                            <?php
                                                            $queryAlat = mysqli_query($koneksi, "SELECT * FROM alat_berat WHERE status_alatberat = '0' ORDER BY nm_alatberat ASC ");
                                                            if (mysqli_num_rows($queryAlat)) {
                                                                while ($rowAlat = mysqli_fetch_assoc($queryAlat)) :
                                                            ?>
                                                                    <option value="<?= $rowAlat['id_alatberat']; ?>" type="checkbox"><?= $rowAlat['nm_alatberat']; ?></option>
                                                            <?php endwhile;
                                                            } ?>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label id="tes" for="client" class="col-sm-offset-1 col-sm-3 control-label">Client</label>
                                                    <div class="col-sm-5">
                                                        <select name="id_client" class="form-control" required>
                                                            <option value="">--Pilih Client--</option>
                                                            <?php
                                                            $queryClient = mysqli_query($koneksi, "SELECT * FROM client GROUP BY  nm_client  ASC ");
                                                            if (mysqli_num_rows($queryClient)) {
                                                                while ($rowClient = mysqli_fetch_assoc($queryClient)) :
                                                            ?>
                                                                    <option value="<?= $rowClient['id_client']; ?>" type="checkbox"><?= $rowClient['nm_client']; ?></option>
                                                            <?php endwhile;
                                                            } ?>
                                                        </select>
                                                    </div>
                                                </div>

                                                <div class=" modal-footer">
                                                    <input type="submit" id="insert" name="add" class="btn btn-primary col-sm-offset-1 submit" value="Tambah">
                                                    &nbsp;
                                                    <input type="reset" class="btn btn-danger reset" data-dismiss="modal" value="Cancel">
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--  Akhir Modal-->
                    </div>
                </div>
            </div>

</section>

<!-- Awal Modal Update -->

<!--  Akhir Modal-->

<?php
$host = host();

?>

<script>
    var host = '<?= $host ?>';

    var lengt = 0;
    var wide = 0;
    var high = 0;
    var volume = 0;

    $(function() {
        $("#user").DataTable({
            "language": {
                "url": "http://cdn.datatables.net/plug-ins/1.10.9/i18n/Indonesian.json",
                "sEmptyTable": "Tidak ada data di database"
            }
        });
    });

    // $(".perhitungan").keyup(function(){

    //         var qty_cargo = parseFloat($("#qty_cargo").val())
    //         //hitung panjang            
    //         var npn = lengt*qty_cargo;
    //         var np = npn.toFixed(2);

    //         // hitung lebar            
    //         var nlb = wide * qty_cargo;
    //         var nl = nlb.toFixed(2);

    //         // hitung tinggi            
    //         var ntg = high * qty_cargo;
    //         var nt = ntg.toFixed(2);

    //         var vlm = (lengt*wide*high)*qty_cargo;
    //         var nvlm = vlm.toFixed(2);
    //         // $("#volume").attr("value",vlm);    
    //         document.form.panjang.value = np;
    //         document.form.lebar.value = nl;
    //         document.form.tinggi.value = nt;
    //         document.form.volume_jenis.value = nvlm;                     

    //         console.log(lengt,wide,high,volume);                    

    //         // Menentukan revton 
    //         var ton_cargo = parseFloat($("#ton_cargo").val())   
    //         if (ton_cargo>volume) {
    //             var revton = ton_cargo;
    //         } else {
    //             var revton = volume;
    //         }

    //         document.form.revton.value = revton; 


    // });

    // $(function(){
    //     $('.modalTambah').on('click', function () {            

    //         $('.modal-title').html('Create Job Order Truck');
    //         $('.modal-footer input[type=reset]').val('Cancel');     
    //         $(".submit").show(); 
    //         $('.submit').val('Create');

    //         $("#nm_jenis").prop("readonly", false);
    //         $("#panjang").prop("readonly", true);
    //         $("#lebar").prop("readonly", true);
    //         $("#tinggi").prop("readonly", true);            
    //         $("#satuan_jenis").prop("readonly", true);

    //         $(".satuan").hide();                         
    //         $(".dimensi").hide();

    //         $('.modal-body form').attr('action', host+'checker/add_stacking.php')

    //         // saat di klik jenis barang  
    //                     $(function(){
    //                         $('.jenis').on('change', function () {                                            
    //                             const id = $('.jenis option:selected').attr('value');    

    //                                 if (id == 'NULL') {
    //                                     $(".satuan").hide();                         
    //                                     $(".dimensi").hide();                                        
    //                                 } else {
    //                                     $(".satuan").show();
    //                                     $(".dimensi").show();
    //                                 }

    //                             $.ajax({
    //                                 url:host+'checker/getjenis.php',
    //                                 data: {id : id},
    //                                 method: 'post',
    //                                 dataType: 'json',
    //                                 success:function(data){                                                                                           
    //                                     $('#satuan_jenis').val(data.satuan_jenis);
    //                                     $('#panjang').val(data.p);
    //                                     $('#lebar').val(data.l);
    //                                     $('#tinggi').val(data.t); 
    //                                     $('#volume_jenis').val(data.volume_jenis); 
    //                                     $('#qty_cargo').val(1);       
    //                                     $('#revton').val(data.volume_jenis); 
    //                                     lengt = data.p;
    //                                     wide = data.l;
    //                                     high = data.t;
    //                                     volume = data.volume_jenis;

    //                                  }
    //                                 });
    //                             });
    //                     });     

    //     });
    // });

    //add
    // $('#insert_form').on("submit", function(event){  
    //        event.preventDefault(); 
    //        $.ajax({  
    //                             url:"add_stacking.php",  
    //                             method:"POST",  
    //                             data:$('#insert_form').serialize(),  
    //                             beforeSend:function(){  
    //                                 $('#insert').val("Tambah");  
    //                             },  
    //                             success:function(data){  
    //                                 $('#insert_form')[0].reset();  
    //                                 $('#myModal').modal('hide');  
    //                                 $('#jo_table').html(data);  
    //                             }  
    //                         });
    // }); 


    // $(function(){
    //     $('.modalEdit').on('click', function () {            

    //         $('.modal-title').html('Edit Jenis Barang');
    //         $('.modal-footer input[type=reset]').val('Batal');     
    //         $(".submit").show(); 
    //         $('.submit').val('Edit');

    //         $("#nm_jenis").prop("readonly", false);
    //         $("#panjang").prop("readonly", false);
    //         $("#lebar").prop("readonly", false);
    //         $("#tinggi").prop("readonly", false);            
    //         $("#satuan_jenis").prop("readonly", false);

    //         $('.modal-body form').attr('action',host+'admin_operational/ubahjenis.php')

    //         const id = $(this).data('id');

    //         $.ajax({
    //             url:host+'admin_operational/getubahjenis.php',
    //             data: {id : id},
    //             method: 'post',
    //             dataType: 'json',
    //             success:function(data){
    //                 console.log(data);                     
    //                 $('#id_jenis').val(data.id_jenis);
    //                  $('#nm_jenis').val(data.nm_jenis);
    //                  $('#panjang').val(data.p);
    //                  $('#lebar').val(data.l);
    //                  $('#tinggi').val(data.t);                     
    //                  $('#volume_jenis').val(data.volume_jenis);
    //                  $('#satuan_jenis').val(data.satuan_jenis);                             
    //              }
    //             });
    //         });
    // });

    // $(function(){
    //     $('.modalLihat').on('click', function () {            

    //         $('.modal-title').html('Jenis Barang');
    //         $('.modal-footer input[type=reset]').val('Tutup');     
    //         $(".submit").hide();            

    //         const id = $(this).data('id');

    //         $("#nm_jenis").prop("readonly", true);
    //         $("#panjang").prop("readonly", true);
    //         $("#lebar").prop("readonly", true);
    //         $("#tinggi").prop("readonly", true);
    //         $("#volume_jenis").prop("readonly", true);
    //         $("#satuan_jenis").prop("readonly", true);



    //         $.ajax({
    //             url:host+'admin_operational/getubahjenis.php',
    //             data: {id : id},
    //             method: 'post',
    //             dataType: 'json',
    //             success:function(data){
    //                 console.log(data);                     
    //                 $('#id_jenis').val(data.id_jenis);
    //                  $('#nm_jenis').val(data.nm_jenis);
    //                  $('#panjang').val(data.p);
    //                  $('#lebar').val(data.l);
    //                  $('#tinggi').val(data.t);                     
    //                  $('#volume_jenis').val(data.volume_jenis);
    //                  $('#satuan_jenis').val(data.satuan_jenis);                             
    //              }
    //             });
    //         });
    // });
</script>