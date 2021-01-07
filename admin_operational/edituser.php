<?php  
	include "../fungsi/koneksi.php";
    //mengambil id untuk edit user
	if (isset($_GET['id'])) {
		$id = $_GET['id'];
		$query = mysqli_query($koneksi, "SELECT * FROM user WHERE id_user = $id ");
		if (mysqli_num_rows($query)) {
			while($row2 = mysqli_fetch_assoc($query)):
?>

<section class="content">
    <div class="row">
        <div class="col-sm-8 col-sm-offset-2 col-xs-12">
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="text-center">Edit Data User</h3>
                </div>                
                <form method="post"  action="edituproses.php" class="form-horizontal">
                    <div class="box-body">
                     <div class="row">
                        <div class="col-md-2">
                            <a href="index.php?p=user" class="btn btn-primary"><i class="fa fa-backward"></i> Kembali</a> 
                        </div>
                        <br><br>
                    </div>     
                    	<input type="hidden" name="id" value="<?= $row2['id_user']; ?>">
                        <div class="form-group ">
                            <label for="username" class="col-sm-offset-1 col-sm-3 control-label">Username</label>
                            <div class="col-sm-4">
                                <input type="text"  required value="<?= $row2['username']; ?>" class="form-control" name="username">
                            </div>
                        </div>
                        <div class="form-group ">
                            <label for="nama" class="col-sm-offset-1 col-sm-3 control-label">Nama Lengkap</label>
                            <div class="col-sm-4">
                                <input type="text"  required value="<?= $row2['nama']; ?>" class="form-control" name="nama">
                            </div>
                        </div>
                        <div class="form-group ">
                            <label for="email" class="col-sm-offset-1 col-sm-3 control-label">Email</label>
                            <div class="col-sm-4">
                                <input type="email"  required value="<?= $row2['email']; ?>" class="form-control" name="email">
                            </div>
                        </div>
                         <div class="form-group ">
                            <label for="manajer" class="col-sm-offset-1 col-sm-3 control-label">Manajer</label>
                            <div class="col-sm-4">
                                <input type="text" value="<?= $row2['manajer'];  ?>" required  class="form-control" name="manajer">
                            </div>
                        </div>
                        <div class="form-group ">
                            <label for="asmen" class="col-sm-offset-1 col-sm-3 control-label">Supervisor</label>
                            <div class="col-sm-4">
                                <input type="text" value="<?= $row2['asmen'];  ?>"  class="form-control" name="asmen">
                            </div>
                        </div>                       
                         <div class="form-group">
                            <label for="jenis_brg" class="col-sm-offset-1 col-sm-3 control-label">Level</label>
                            <div class="col-sm-4">
                                <select id="jenis_brg" required class="form-control" name="level">
                                <option value="">--Pilih Level--</option>
                                    
                                    <option  <?php if($row2['level'] == "unit_pelayanan") echo "selected"; ?>  value="unit_pelayanan">Checker</option>
                                    <option  <?php if($row2['level'] == "admin_gudang") echo "selected"; ?> value="admin_gudang">Admin Operational</option>
                                    <option  <?php if($row2['level'] == "asisten_manajer") echo "selected"; ?> value="asisten_manajer">Supervisor Operational</option>
                                    
                                </select>
                            </div>
                        </div>                       
                        <div class="form-group">
                            <label for="area" class="col-sm-offset-1 col-sm-3 control-label">Area</label>
                            <div class="col-sm-4">
                                <select id="area" required class="form-control" name="area">
                                <option value="">--Pilih Area--</option>
                                    
                                    <option  <?php if($row2['area'] == "kj1") echo "selected"; ?>  value="kj1">Kalijapat 1</option>
                                    <option  <?php if($row2['area'] == "kj4") echo "selected"; ?>  value="kj4">kalijapat 4</option>
                                    
                                </select>
                            </div>
                        </div> 
                        <div class="form-group">
                            <input type="submit" name="update" class="btn btn-primary col-sm-offset-4 " value="Simpan" > 
                            &nbsp;
                            <input type="reset" class="btn btn-danger" value="Batal">                                                                              
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>

<?php endwhile; } }  ?>