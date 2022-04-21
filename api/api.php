<?php
require_once "koneksi.php";

if (function_exists($_GET['function'])) {
    $_GET['function']();
}

function get_data()
{
    global $connect;
    $query = $connect->query("SELECT * FROM kegiatan");
    while ($row = mysqli_fetch_object($query)) {
        $data[] = $row;
    }
    $response = array(
        'status' => 1,
        'message' => 'Success',
        'data' => $data
    );
    echo json_encode($response);
}

function insert_kegiatan(){
    global $connect;
    $kegiatan = $_POST['kegiatan'];
    $tanggal = $_POST['tanggal'];

    $data = mysqli_num_rows(mysqli_query($connect, "SELECT * FROM kegiatan WHERE nama_kegiatan = '$kegiatan' AND tanggal_kegiatan = '$tanggal'"));

    if($data > 0){
        $query = mysqli_query($connect, "UPDATE `kegiatan` SET `nama_kegiatan`='$kegiatan', `tanggal_kegiatan`='$tanggal' WHERE nama_kegiatan = '$kegiatan' AND tanggal_kegiatan = '$tanggal'");
        $response["error"] = FALSE;
        $response["message"] = "Data berhasil diupdate";
        echo json_encode($response);
    } else{
        $query = mysqli_query($connect, "INSERT INTO `kegiatan`(`nama_kegiatan`, `tanggal_kegiatan`) VALUES ('$kegiatan','$tanggal')");
        $response["error"] = FALSE;
        $response["message"] = "Berhasil melakukan registrasi";
        echo json_encode($response);
    }
}

function insert_absen(){
    global $connect;
    $nama = $_POST['nama'];
    $kelas = $_POST['kelas'];
    $wa = $_POST['wa'];
    $kegiatan = $_POST['kegiatan'];
    $tanggal = $_POST['tanggal'];

    $query = mysqli_query($connect, "INSERT INTO `absen`(`nama_absen`, `kelas_absen`, `wa_absen`, `kegiatan`, `tanggal_absen`) VALUES ('$nama','$kelas','$wa','$kegiatan','$tanggal')");
    $response["error"] = FALSE;
    $response["message"] = "Berhasil melakukan absensi :)";
    echo json_encode($response);
}

function get_data_kegiatan()
{
    global $connect;
    $kegiatan = mysqli_query($connect, "SELECT * FROM kegiatan");
    $cek =  mysqli_num_rows($kegiatan);
    if ($cek > 0) {
        $query = $connect->query("SELECT * FROM kegiatan ORDER BY tanggal_kegiatan DESC");
        while ($row = mysqli_fetch_object($query)) {
            $data[] = $row;
        }
        $response["error"] = FALSE;
        $response["data"] = $data;
        echo json_encode($response);
    } else {
        $response["error"] = TRUE;
        $response["error_msg"] = "belum ada absen kegiatan";
        echo json_encode($response);
    }
}

function get_data_absen()
{
    global $connect;
    $kegiatan = $_POST['kegiatan'];
    $tanggal = $_POST['tanggal'];
    $absen = mysqli_query($connect, "SELECT * FROM absen");
    $cek =  mysqli_num_rows($absen);
    if ($cek > 0) {
        $query = $connect->query("SELECT * FROM absen WHERE kegiatan='$kegiatan' AND tanggal_absen='$tanggal'");
        $cek1 =  mysqli_num_rows($query);
        while ($row = mysqli_fetch_object($query)) {
            $data[] = $row;
        }
        if($cek1 > 0){
            $response["error"] = FALSE;
            $response["data"] = $data;
            echo json_encode($response);
        } else {
            $response["error"] = TRUE;
            $response["error_msg"] = "belum ada data absen";
            echo json_encode($response);
        }
    } else {
        $response["error"] = TRUE;
        $response["error_msg"] = "belum ada data absen";
        echo json_encode($response);
    }
}

function hapus_data(){
    global $connect;
    $kegiatan = $_POST['kegiatan'];
    $tanggal = $_POST['tanggal'];
    $query = $connect->query("DELETE FROM `absen` WHERE kegiatan='$kegiatan' AND tanggal_absen='$tanggal'");
    $query1 = $connect->query("DELETE FROM `kegiatan` WHERE nama_kegiatan='$kegiatan' AND tanggal_kegiatan='$tanggal'");
    if($query && $query1){
        $response["error"] = FALSE;
        $response["message"] = "data berhasil dihapus";
        echo json_encode($response);
    } else{
        $response["error"] = TRUE;
        $response["error_msg"] = "data tidak berhasil dihapus";
        echo json_encode($response);
    }
}