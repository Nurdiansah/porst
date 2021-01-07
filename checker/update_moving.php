<?php  

    include "../fungsi/koneksi.php";
    include '../fungsi/fungsi.php';

	if(isset($_POST['update'])) {        

        // ambil inputan        
        $id_moving = $_POST['id_moving'];        
        $id_cargo = $_POST['id_cargo_update'];	        
        $qty_as = $_POST['qty_cargo_update'];  
        $lokasi_awal = $_POST['lokasi_awal'];  
        $lokasi_akhir = $_POST['lokasi_akhir'];  
        
        
        $queryDJ =  mysqli_query($koneksi, "SELECT * from detail_moving WHERE id_cargo  = '$id_cargo'");
        $rowDJ=mysqli_fetch_assoc($queryDJ);

        // ambil data dari detail joborder                            
            $qty_cargo = $rowDJ['qty_cargo'];        
            $m3_cargo = $rowDJ['volume_cargo'];
            $ton_cargo = $rowDJ['ton_cargo'];
            $revton_cargo = $rowDJ['revton_cargo'];
            $id_cargo = $rowDJ['id_cargo'];
            $nm_company = $rowDJ['nm_company'];
            $nm_barang = $rowDJ['nm_barang'];
            $production = $rowDJ['production'];        
            $no_po = $rowDJ['no_po'];
            $p_cargo = $rowDJ['p_cargo'];
            $l_cargo = $rowDJ['l_cargo'];
            $t_cargo = $rowDJ['t_cargo'];
            $no_po = $rowDJ['no_po'];
            $satuan_cargo = $rowDJ['satuan_cargo'];
            $deskripsi_cargo = $rowDJ['deskripsi_cargo'];

        // tonase actual
            $p_as = ($qty_as /$qty_cargo) * $p_cargo ; 
            $l_as = ($qty_as /$qty_cargo) * $l_cargo ; 
            $t_as = ($qty_as /$qty_cargo) * $t_cargo ; 
            $m3_as = ($qty_as /$qty_cargo) * $m3_cargo ; 
            $ton_as = ($qty_as /$qty_cargo) * $ton_cargo ;
            $revton_as = ($qty_as /$qty_cargo) * $revton_cargo ;

        // sisa stok tonase di detail job order
            $qty_stok = $qty_cargo - $qty_as ;
            $p_stok = $p_cargo - $p_as;
            $l_stok = $l_cargo - $l_as;
            $t_stok = $t_cargo - $t_as;
            $m3_stok = $m3_cargo - $m3_as;
            $ton_stok = $ton_cargo - $ton_as;
            $revton_stok = $revton_cargo - $revton_as;

        // echo "$qty_as.'<br>'.$qty_cargo.'<br>'.$qty_stok";       

		$tanggal= date_now();
		
        $query = "INSERT INTO actual_moving ( id_cargo,  time_as, id_moving, nm_company_as, nm_barang_as, production_as, no_po_as, p_cargo_as, l_cargo_as, t_cargo_as, volume_cargo_as, ton_cargo_as, revton_cargo_as, qty_cargo_as, satuan_cargo_as, deskripsi_cargo_as, lokasi_awal , lokasi_akhir) VALUES 
										        ( '$id_cargo', '$tanggal', '$id_moving','$nm_company', '$nm_barang', '$production', '$no_po','$p_cargo', '$l_cargo', '$t_cargo', '$m3_as', '$ton_as', '$revton_as', '$qty_as', '$satuan_cargo', '$deskripsi_cargo', '$lokasi_awal', '$lokasi_akhir');
            ";
            
        $query1 = mysqli_query($koneksi, "UPDATE detail_moving
                                        SET qty_cargo = '$qty_stok', volume_cargo = '$m3_stok' ,
                                        ton_cargo = '$ton_stok', revton_cargo = '$revton_stok' , 
                                        p_cargo = '$p_cargo', l_cargo = '$l_cargo',t_cargo = '$t_cargo'
                                        WHERE id_cargo='$id_cargo' ");		
            
        $hasil = mysqli_query($koneksi, $query);

        $id_moving = base64_encode($id_moving);
        
		if($query1&&$hasil) {
			header("location:index.php?p=detail_prosesmoving&id=$id_moving");
		} else {
			echo "ada yang salah" . mysqli_error($koneksi);
		}
	}


?>