<?php
session_start();

    include ('../../config/koneksi.php');

    if (isset($_POST['submit'])){
        $jenis_surat = "Surat Keterangan lahir";
        $nik = $_SESSION['nik'];
        $status_surat = "PENDING";
        $id_profil_desa = "1";
        $nama_bayi = $_POST['fnama_bayi'];
        $tempat = $_POST['ftempat'];
        $jenis_kelamin = $_POST['fjenis_kelamin'];
        $tanggal = $_POST['ftanggal'];
        $kewarganegaraan = $_POST['fkewarganegaraan'];
        $agama = $_POST['fagama'];
        $alamat = $_POST['falamat'];
        $nama_ibu = $_POST['fnama_ibu'];
        $anak_ke = $_POST['fanak_ke'];


        $qTambahSurat = "INSERT INTO surat_keterangan_lahir (jenis_surat, nik, status_surat, id_profil_desa, nama_bayi, tempat, jenis_kelamin, tanggal, kewarganegaraan, agama, alamat, nama_ibu, anak_ke) VALUES('$jenis_surat', '$nik', '$status_surat', '$id_profil_desa', '$nama_bayi', '$tempat', '$jenis_kelamin', '$tanggal', '$kewarganegaraan', '$agama', '$alamat', '$nama_ibu', '$anak_ke')";
        $TambahSurat = mysqli_query($connect, $qTambahSurat);

        if(mysqli_affected_rows($connect) > 0){
            header("location:../index.php?pesan=berhasil");
        }else {
            echo mysqli_error($connect);
        }

    }
?>