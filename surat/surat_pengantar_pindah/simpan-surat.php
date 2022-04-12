<?php
    include ('../../config/koneksi.php');

    if (isset($_POST['submit'])){
        $jenis_surat = "Surat pengantar pindah";
        $nik = $_POST['fnik'];
        $alamat_pindah = addslashes($_POST['falamat_pindah']);
        $keperluan = addslashes($_POST['fkeperluan']);
        $status_surat = "PENDING";
        $id_profil_desa = "1";

        $qTambahSurat = "INSERT INTO surat_pengantar_pindah (jenis_surat, nik, alamat_pindah, keperluan, status_surat, id_profil_desa) VALUES('$jenis_surat', '$nik', '$alamat_pindah', '$keperluan', '$status_surat', '$id_profil_desa')";
        $TambahSurat = mysqli_query($connect, $qTambahSurat);
        header("location:../index.php?pesan=berhasil");
    }
?>