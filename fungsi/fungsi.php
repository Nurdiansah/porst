<?php

include "koneksi.php";

function host()
{
    $host = 'http://localhost/bmi/';
    // $host = 'http://nurdiansah.codevintek.com/';

    return $host;
}

function tanggal_indo($tanggal)
{
    $bulan = array(
        1 => 'Januari',
        'Februari',
        'Maret',
        'April',
        'Mei',
        'Juni',
        'Juli',
        'Agustus',
        'September',
        'Oktober',
        'November',
        'Desember'
    );

    $split = explode('-', $tanggal);
    $tanggal_indo = $split[2] . ' ' . $bulan[(int)$split[1]] . ' ' . $split[0];

    return $tanggal_indo;
}

function formatTanggal($tanggal)
{
    $formatTanggal = date("d F Y", strtotime($tanggal));

    return $formatTanggal;
}

function getRomawi($bln)
{
    switch ($bln) {
        case 1:
            return "I";
            break;
        case 2:
            return "II";
            break;
        case 3:
            return "III";
            break;
        case 4:
            return "IV";
            break;
        case 5:
            return "V";
            break;
        case 6:
            return "VI";
            break;
        case 7:
            return "VII";
            break;
        case 8:
            return "VIII";
            break;
        case 9:
            return "IX";
            break;
        case 10:
            return "X";
            break;
        case 11:
            return "XI";
            break;
        case 12:
            return "XII";
            break;
    }
}

function hapusJenisBarang($id)
{
    global $koneksi;
    $query = mysqli_query($koneksi, "DELETE FROM jenis_barang where id_jenis=$id");
    if ($query) {
        header("location:index.php?p=jenis_barang");
    } else {
        echo 'gagal';
    }
}

function hapusCargo($id)
{
    global $koneksi;

    $value = 'Data Berhasil Di Hapus';
    setcookie("msg", $value, time() + 5);

    $query2 = mysqli_query($koneksi, "SELECT * FROM detail_joborder WHERE id_cargo='$id' ");
    $row2 = mysqli_fetch_assoc($query2);

    $id_joborder = $row2['id_joborder'];

    $queryHapus = mysqli_query($koneksi, "DELETE FROM detail_joborder where id_cargo='$id'");
    if ($queryHapus) {



        header("location:index.php?p=buat_cargo&id=$id_joborder");
    } else {
        echo 'gagal';
    }
}

// Date And Time
function date_now()
{
    date_default_timezone_set('Asia/Jakarta');
    $tanggal = date("Y-m-d H:i:s");

    return $tanggal;
}

function jamSekarang()
{
    date_default_timezone_set('Asia/Jakarta');
    $tanggal = date("H");

    return $tanggal;
}

function tanggalSekarang()
{
    date_default_timezone_set('Asia/Jakarta');
    $tanggal = date("Y-m-d");

    return $tanggal;
}

function tanggalWaktu($date)
{
    $date  = date("j F Y H:i:s ", strtotime($date));

    return $date;
}

function tanggal($date)
{
    $date  = date("j F Y ", strtotime($date));

    return $date;
}

function getJam($date)
{
    $date  = date("H:i:s ", strtotime($date));

    return $date;
}

function bulanArray($index)
{
    $bulan = array(
        1 => 'Januari',
        'Februari',
        'Maret',
        'April',
        'Mei',
        'Juni',
        'Juli',
        'Agustus',
        'September',
        'Oktober',
        'November',
        'Desember'
    );

    $hasil = $bulan[$index];
    return $hasil;
}

function bulan($tanggal)
{
    $bulan = array(
        1 => 'Januari',
        'Februari',
        'Maret',
        'April',
        'Mei',
        'Juni',
        'Juli',
        'Agustus',
        'September',
        'Oktober',
        'November',
        'Desember'
    );

    $split = explode('-', $tanggal);
    $bulan_indo = $bulan[(int)$split[1]];

    return $bulan_indo;
}

function getBulan($bln)
{
    switch ($bln) {
        case "01":
            return "Januari";
            break;
        case "02":
            return "Februari";
            break;
        case "03":
            return "Maret";
            break;
        case "04":
            return "April";
            break;
        case "05":
            return "Mei";
            break;
        case "06":
            return "Juni";
            break;
        case "07":
            return "Juli";
            break;
        case "08":
            return "Agustus";
            break;
        case "09":
            return "September";
            break;
        case "10":
            return "Oktober";
            break;
        case "11":
            return "November";
            break;
        case "12":
            return "Desember";
            break;
    }
}

// Kode 
function kode_jovessel($area)
{
    global $koneksi;
    $query = mysqli_query($koneksi, "SELECT MAX(kode_jovessel) FROM job_order WHERE area = '$area'");
    $id_joborder = mysqli_fetch_array($query);

    $kodeArea = substr($area, 2);

    if ($id_joborder) {

        $nilaikode = substr($id_joborder[0], 4);

        $kode = (int) $nilaikode;

        //setiap kode ditambah 1
        $kode = $kode + 1;
        $kode_otomatis = "JV" . $kodeArea . "-" .  str_pad($kode, 5, "0", STR_PAD_LEFT);
    } else {
        $kode_otomatis = "JV" . $kodeArea . "-00001";
    }

    return $kode_otomatis;
}

function id_jotruck()
{
    global $koneksi;

    $query = mysqli_query($koneksi, "SELECT MAX(id_jobordertruck) from job_ordertruck");

    $id_joborder = mysqli_fetch_array($query);
    if ($id_joborder) {

        $nilaikode = substr($id_joborder[0], 2);

        $kode = (int) $nilaikode;

        //setiap kode ditambah 1
        $kode = $kode + 1;
        $kode_otomatis = "JT" . str_pad($kode, 5, "0", STR_PAD_LEFT);
    } else {
        $kode_otomatis = "JT00001";
    }

    return $kode_otomatis;
}

function kode_jotruck($area)
{
    global $koneksi;

    $query = mysqli_query($koneksi, "SELECT MAX(kode_lotruck) from job_ordertruck WHERE area = '$area'");

    $kodeArea = substr($area, 2);

    $id_joborder = mysqli_fetch_array($query);
    if ($id_joborder) {

        $nilaikode = substr($id_joborder[0], 4);

        $kode = (int) $nilaikode;

        //setiap kode ditambah 1
        $kode = $kode + 1;
        $kode_otomatis = "JT" . $kodeArea . "-" . str_pad($kode, 5, "0", STR_PAD_LEFT);
    } else {
        $kode_otomatis = "JT" . $kodeArea . "-00001";
    }

    return $kode_otomatis;
}

function id_stacking()
{
    global $koneksi;

    $query = mysqli_query($koneksi, "SELECT MAX(id_stacking) from stacking");

    $id_joborder = mysqli_fetch_array($query);
    if ($id_joborder) {

        $nilaikode = substr($id_joborder[0], 2);

        $kode = (int) $nilaikode;

        //setiap kode ditambah 1
        $kode = $kode + 1;
        $kode_otomatis = "ST" . str_pad($kode, 5, "0", STR_PAD_LEFT);
    } else {
        $kode_otomatis = "ST00001";
    }

    return $kode_otomatis;
}

function kode_stacking($area)
{
    global $koneksi;

    $query = mysqli_query($koneksi, "SELECT MAX(kode_stacking) from stacking WHERE area = '$area'");

    $kodeArea = substr($area, 2);

    $id_joborder = mysqli_fetch_array($query);
    if ($id_joborder) {

        $nilaikode = substr($id_joborder[0], 4);

        $kode = (int) $nilaikode;

        //setiap kode ditambah 1
        $kode = $kode + 1;
        $kode_otomatis = "ST" . $kodeArea . "-" . str_pad($kode, 5, "0", STR_PAD_LEFT);
    } else {
        $kode_otomatis = "ST" . $kodeArea . "-00001";
    }

    return $kode_otomatis;
}
function id_moving()
{
    global $koneksi;

    $query = mysqli_query($koneksi, "SELECT MAX(id_moving) from moving");

    $id_joborder = mysqli_fetch_array($query);
    if ($id_joborder) {

        $nilaikode = substr($id_joborder[0], 2);

        $kode = (int) $nilaikode;

        //setiap kode ditambah 1
        $kode = $kode + 1;
        $kode_otomatis = "TR" . str_pad($kode, 5, "0", STR_PAD_LEFT);
    } else {
        $kode_otomatis = "TR00001";
    }

    return $kode_otomatis;
}

function limitKata($text)
{
    $kata =  substr($text, 0, 20) . ' ...';

    return $kata;
}

// 
//      Waktu Ke String Indonesia
// 

function waktuToString($diff)
{

    if ($diff->d == 0) {
        if ($diff->h >= 1) {
            $selisih = $diff->h . ' jam ' . $diff->i . ' menit ';
        } else {
            $selisih = $diff->i . ' menit ';
        }
    } else if ($diff->h == 0) {
        $selisih = $diff->d . ' hari ' . $diff->i . ' menit ';
    } else {
        $selisih = $diff->d . 'hari' . $diff->h . 'jam' . $diff->i . 'menit';
    }

    return $selisih;
}

function detikToString($detik)
{

    $jam = floor($detik / 3600);
    $mod = $detik % 3600;
    $menit = floor($mod / 60);

    if ($jam > 0) {
        # Jika lebih dari 1 jam
        $hasil = $jam . ' jam ' . $menit . ' menit';
    } else {
        # Jika kurang dari 1 jam
        $hasil = $menit . ' menit';
    }

    return $hasil;
}

function detikToString2($detik)
{
    $hari = floor($detik / 86400);
    $modHari = $detik % 86400;
    $jam = floor($modHari / 3600);
    $mod = $detik % 3600;
    $menit = floor($mod / 60);
    if ($hari > 0) {
        #jika lebih dari 1 hari
        $hasil = $hari . ' hari ' . $jam . ' jam ' . $menit . ' menit';
    } else if ($jam > 0) {
        # Jika lebih dari 1 jam
        $hasil = $jam . ' jam ' . $menit . ' menit';
    } else {
        # Jika kurang dari 1 jam
        $hasil = $menit . ' menit';
    }

    return $hasil;
}
