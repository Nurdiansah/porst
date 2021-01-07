<?php  

    include_once "../fungsi/koneksi.php";

    if(isset($_POST['simpan'])) {
        $username = $_POST['username'];
        $password = md5($_POST['password']);
        $nama = $_POST['nama'];
        $email = $_POST['email'];
        $level = $_POST['level'];
        $manajer = $_POST['manajer'];
        $asmen = $_POST['asmen'];
        $area = $_POST['area'];

        $query = mysqli_query($koneksi, "INSERT INTO user VALUES ('', '$username', '$password', '$nama','$email',  '$level','$manajer','$asmen' ,'$area') ");        
        if ($query) {
            header("location:index.php?p=user");
        } else {
            echo 'gagal : ' . mysqli_error($koneksi);
        }
    }


?>

<section class="content">
    <div class="row">
        <div class="col-sm-12 col-xs-12">
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="text-center">Tambah Data User</h3>
                </div>
                <form method="post"  action="" class="form-horizontal">
                    <div class="box-body">
                    <div class="row">
                        <div class="col-md-2">
                            <a href="index.php?p=user" class="btn btn-primary"><i class="fa fa-backward"></i> Kembali</a> 
                        </div>
                        <br><br>
                    </div> 
                        <div class="form-group ">
                            <label for="username" class="col-sm-offset-1 col-sm-3 control-label">Username</label>
                            <div class="col-sm-4">
                                <input  required type="text"  class="form-control" name="username">
                            </div>
                        </div>
                        <div class="form-group ">
                            <label for="paswword"class="col-sm-offset-1 col-sm-3 control-label">Password</label>
                            <div class="col-sm-4">
                                <input required type="password" class="form-control" name="password">
                            </div>
                        </div>
                        <div class="form-group ">
                            <label for="nama" class="col-sm-offset-1 col-sm-3 control-label">Nama Lengkap</label>
                            <div class="col-sm-4">
                                <input required type="text"  class="form-control" name="nama">
                            </div>
                        </div>
                        <div class="form-group ">
                            <label for="email" class="col-sm-offset-1 col-sm-3 control-label">Email </label>
                            <div class="col-sm-4">
                                <input required type="email"  class="form-control" name="email">
                            </div>
                        </div>
                        <div class="form-group ">
                            <label for="manajer" class="col-sm-offset-1 col-sm-3 control-label">Manajer</label>
                            <div class="col-sm-4">
                                <input type="text"  class="form-control" name="manajer">
                            </div>
                        </div>
                        <div class="form-group ">
                            <label for="asmen" class="col-sm-offset-1 col-sm-3 control-label">Supervisor</label>
                            <div class="col-sm-4">
                                <input  type="text"  class="form-control" name="asmen">
                            </div>
                        </div>                        
                        <div class="form-group">
                            <label id="tes"for="nama_brg" class="col-sm-offset-1 col-sm-3 control-label">Level</label>
                            <div class="col-sm-4">
                                <select required name="level" class="form-control">
                                    <option >--Pilih Level--</option>
                                    <option value="unit_pelayanan">Checker</option>
                                    <option value="admin_gudang">Admin Operational</option>
                                    <option value="asmen_gudang">Supervisor Operational</option>
                                    <option value="manajer_shorebase">Manager Shorebase</option>
                                    <option value="mekanik">Mekanik</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label id="tes"for="area" class="col-sm-offset-1 col-sm-3 control-label">Area</label>
                            <div class="col-sm-4">
                                <select required name="area" class="form-control">
                                    <option >--Pilih Area--</option>
                                    <option value="KJ1">Kalijapat 1</option>
                                    <option value="KJ2">Kalijapat 4</option>
                                </select>
                            </div>
                        </div>                          
                        <div class="form-group">
                            <input type="submit" name="simpan" class="btn btn-primary col-sm-offset-4 " value="Simpan" > 
                            &nbsp;
                            <input type="reset" class="btn btn-danger" value="Batal">                                                                              
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>


