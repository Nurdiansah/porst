<?php
include "../fungsi/koneksi.php";
    $id = $_POST['id'];

    $query2 = mysqli_query($koneksi, "SELECT d.id_cargo, d.id_joborder,d.doc_no, d.qty_cargo, j.satuan_jenis, j.nm_jenis, d.rincian_cargo, 
                                        d.m3_cargo, d.ton_cargo, d.revton_cargo, d.remarks_cargo, d.cargo_final, d.id_joborder ,d.row_version
                                        FROM detail_joborder d
                                        JOIN jenis_barang j
                                        ON j.id_jenis = d.id_jenis WHERE id_cargo = '$id'");
    echo json_encode( $row2=mysqli_fetch_assoc($query2));
        	


