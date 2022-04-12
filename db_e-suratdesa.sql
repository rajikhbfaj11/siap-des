-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 25 Jan 2022 pada 10.14
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_e-suratdesa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `dusun`
--

CREATE TABLE `dusun` (
  `id_dusun` int(11) NOT NULL,
  `nama_dusun` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `dusun`
--

INSERT INTO `dusun` (`id_dusun`, `nama_dusun`) VALUES
(1, 'Menturus'),
(2, 'Menturus 2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `username` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(32) NOT NULL,
  `level` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`id`, `nama`, `username`, `email`, `password`, `level`) VALUES
(1, 'Administrator', 'admin', 'admin@e-suratdesa.com', '21232f297a57a5a743894a0e4a801fc3', 'admin'),
(2, 'Kepala Desa', 'kades', 'kepaladesa@desa.id', '0cfa66469d25bd0d9e55d7ba583f9f2f', 'kades');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pejabat_desa`
--

CREATE TABLE `pejabat_desa` (
  `id_pejabat_desa` int(11) NOT NULL,
  `nama_pejabat_desa` varchar(50) NOT NULL,
  `jabatan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pejabat_desa`
--

INSERT INTO `pejabat_desa` (`id_pejabat_desa`, `nama_pejabat_desa`, `jabatan`) VALUES
(1, 'Muhamad Sopa', 'KEPALA DESA'),
(2, 'Muhamad Husni Thamrin', 'SEKDES');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penduduk`
--

CREATE TABLE `penduduk` (
  `id_penduduk` int(11) NOT NULL,
  `nik` varchar(20) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `agama` varchar(15) NOT NULL,
  `jalan` varchar(100) NOT NULL,
  `rt` varchar(5) NOT NULL,
  `rw` varchar(5) NOT NULL,
  `desa` varchar(50) NOT NULL,
  `kecamatan` varchar(50) NOT NULL,
  `kabupaten` varchar(50) NOT NULL,
  `no_kk` varchar(20) NOT NULL,
  `pend_kk` varchar(20) NOT NULL,
  `pend_terakhir` varchar(20) NOT NULL,
  `pekerjaan` varchar(50) NOT NULL,
  `status_perkawinan` varchar(20) NOT NULL,
  `status_dlm_keluarga` varchar(20) NOT NULL,
  `kewarganegaraan` varchar(5) NOT NULL,
  `nama_ayah` varchar(50) NOT NULL,
  `nama_ibu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penduduk`
--

INSERT INTO `penduduk` (`id_penduduk`, `nik`, `nama`, `tempat_lahir`, `tgl_lahir`, `jenis_kelamin`, `agama`, `jalan`, `rt`, `rw`, `desa`, `kecamatan`, `kabupaten`, `no_kk`, `pend_kk`, `pend_terakhir`, `pekerjaan`, `status_perkawinan`, `status_dlm_keluarga`, `kewarganegaraan`, `nama_ayah`, `nama_ibu`) VALUES
(92, '3517112233440001', 'Adi Fahrian Hidayat', 'jombang', '1997-12-14', 'Laki-laki', 'Islam', 'jl. KH. hasyim asy\'ari no. 15', '001', '002', 'menturus', 'kudu', 'jombang', '3517000000000002', 'SLTA/SEDERAJAT', 'SLTA/SEDERAJAT', 'PELAJAR/MAHASISWA', 'Belum Menikah', 'Anak', 'WNI', 'Imam Haryono', 'Nasihah'),
(94, '360316110800001', 'Rajikh Burhanuddin Fath Abdul Jalil', 'tangerang', '2000-08-11', 'Laki-laki', 'Islam', 'Telaga Bumi Asri Blok B Nomer 5', '001', '003', 'Mekar Kondang', 'Sukadiri', 'Kabupaten ', '232353235342', 'SLTA/SEDERAJAT', 'S1/SEDERAJAT', 'Pegawai Negeri Sipil', 'Belum Menikah', 'Anak', 'WNI', 'Sandi', 'Fajar'),
(93, '3671042511970001', 'sandi riady', 'tangerang', '1998-11-25', 'Laki-laki', 'islam', 'Telaga Bumi Asri Blok B Nomer 5', '002', '002', 'Mekar Kondang', 'Sepatan', 'Kabupaten tangerang', '2454132415', 'S3/SEDERAJAT', 'S3/SEDERAJAT', 'pengangguran', 'Cerai Mati', 'Ayah', 'WNI', 'raffi ahmad', 'nagita slavina');

-- --------------------------------------------------------

--
-- Struktur dari tabel `profil_desa`
--

CREATE TABLE `profil_desa` (
  `id_profil_desa` int(11) NOT NULL,
  `nama_desa` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `no_telpon` varchar(20) NOT NULL,
  `kecamatan` varchar(50) NOT NULL,
  `kota` varchar(50) NOT NULL,
  `provinsi` varchar(20) NOT NULL,
  `kode_pos` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `profil_desa`
--

INSERT INTO `profil_desa` (`id_profil_desa`, `nama_desa`, `alamat`, `no_telpon`, `kecamatan`, `kota`, `provinsi`, `kode_pos`) VALUES
(1, 'MEKAR KONDANG', 'Jl. Lkr. SDN Tuis, Mekar Kondang, Kec. Sukadiri, Kabupaten Tangerang, Banten 15330', '082330827777', 'Sukadiri', 'Kabupaten Tangerang', 'Banten', '15330');

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat_keterangan`
--

CREATE TABLE `surat_keterangan` (
  `id_sk` int(11) NOT NULL,
  `jenis_surat` varchar(50) NOT NULL,
  `no_surat` varchar(20) DEFAULT NULL,
  `nik` varchar(20) NOT NULL,
  `keperluan` varchar(50) NOT NULL,
  `tanggal_surat` datetime NOT NULL DEFAULT current_timestamp(),
  `id_pejabat_desa` int(11) DEFAULT NULL,
  `status_surat` varchar(15) NOT NULL,
  `id_profil_desa` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `surat_keterangan`
--

INSERT INTO `surat_keterangan` (`id_sk`, `jenis_surat`, `no_surat`, `nik`, `keperluan`, `tanggal_surat`, `id_pejabat_desa`, `status_surat`, `id_profil_desa`) VALUES
(137, 'Surat Keterangan', '11', '3517112233440001', 'Persyaratan Melamar Pekerjaan', '2019-12-14 04:00:59', 1, 'SELESAI', 1),
(138, 'Surat Keterangan', '12', '3517112233440001', 'Persyaratan Melamar Pekerjaan', '2019-12-14 04:01:06', 1, 'SELESAI', 1),
(139, 'Surat Keterangan', '01', '3517112233440001', 'KELUAR KOTA', '2021-12-13 03:09:47', 1, 'SELESAI', 1),
(140, 'Surat Keterangan', NULL, '3517112233440001', 'qqw', '2021-12-16 03:01:58', NULL, 'PENDING', 1),
(141, 'Surat Keterangan', '444', '3517112233440001', 'ryeyry', '2021-12-19 23:23:58', 2, 'SELESAI', 1),
(142, 'Surat Keterangan', '3322', '3517112233440001', 'melamar pekerjaan', '2021-12-21 13:58:18', 2, 'SELESAI', 1),
(143, 'Surat Keterangan', NULL, '3517112233440001', 'pindah', '2022-01-25 15:45:42', NULL, 'PENDING', 1),
(144, 'Surat Keterangan', '4444', '3671042511970001', 'pindah', '2022-01-25 15:46:54', 1, 'SELESAI', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat_keterangan_berkelakuan_baik`
--

CREATE TABLE `surat_keterangan_berkelakuan_baik` (
  `id_skbb` int(11) NOT NULL,
  `jenis_surat` varchar(50) NOT NULL,
  `no_surat` varchar(20) DEFAULT NULL,
  `nik` varchar(20) NOT NULL,
  `keperluan` varchar(50) NOT NULL,
  `tanggal_surat` datetime NOT NULL DEFAULT current_timestamp(),
  `id_pejabat_desa` int(11) DEFAULT NULL,
  `status_surat` varchar(15) NOT NULL,
  `id_profil_desa` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `surat_keterangan_berkelakuan_baik`
--

INSERT INTO `surat_keterangan_berkelakuan_baik` (`id_skbb`, `jenis_surat`, `no_surat`, `nik`, `keperluan`, `tanggal_surat`, `id_pejabat_desa`, `status_surat`, `id_profil_desa`) VALUES
(6, 'Surat Keterangan Berkelakuan Baik', '22', '3517112233440001', 'Persyaratan Melamar Pekerjaan', '2019-12-14 04:01:17', 2, 'SELESAI', 1),
(7, 'Surat Keterangan Berkelakuan Baik', '122334', '3517112233440001', 'Persyaratan Melamar Pekerjaan', '2019-12-14 04:01:22', 1, 'SELESAI', 1),
(8, 'Surat Keterangan Berkelakuan Baik', NULL, '3517112233440001', 'vv', '2021-12-16 03:03:17', NULL, 'PENDING', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat_keterangan_domisili`
--

CREATE TABLE `surat_keterangan_domisili` (
  `id_skd` int(11) NOT NULL,
  `jenis_surat` varchar(50) NOT NULL,
  `no_surat` varchar(20) DEFAULT NULL,
  `nik` varchar(20) NOT NULL,
  `tanggal_surat` datetime NOT NULL DEFAULT current_timestamp(),
  `id_pejabat_desa` int(11) DEFAULT NULL,
  `status_surat` varchar(15) NOT NULL,
  `id_profil_desa` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `surat_keterangan_domisili`
--

INSERT INTO `surat_keterangan_domisili` (`id_skd`, `jenis_surat`, `no_surat`, `nik`, `tanggal_surat`, `id_pejabat_desa`, `status_surat`, `id_profil_desa`) VALUES
(7, 'Surat Keterangan Domisili', '31', '3517112233440001', '2019-12-14 04:01:28', 1, 'SELESAI', 1),
(8, 'Surat Keterangan Domisili', '009', '3517112233440001', '2019-12-14 04:01:32', 1, 'SELESAI', 1),
(9, 'Surat Keterangan Domisili', '1112/g/w', '3517112233440001', '2021-12-21 14:06:38', 1, 'SELESAI', 1),
(10, 'Surat Keterangan Domisili', NULL, '3517112233440001', '2021-12-28 13:50:06', NULL, 'PENDING', 1),
(11, 'Surat Keterangan Domisili', '9999999', '3671042511970001', '2022-01-25 16:04:35', 1, 'SELESAI', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat_keterangan_kehilangan`
--

CREATE TABLE `surat_keterangan_kehilangan` (
  `id_skh` int(11) NOT NULL,
  `jenis_surat` varchar(50) NOT NULL,
  `no_surat` varchar(20) DEFAULT NULL,
  `nik` varchar(20) NOT NULL,
  `keperluan` varchar(50) NOT NULL,
  `tanggal_surat` datetime NOT NULL DEFAULT current_timestamp(),
  `id_pejabat_desa` int(11) DEFAULT NULL,
  `status_surat` varchar(15) NOT NULL,
  `id_profil_desa` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `surat_keterangan_kehilangan`
--

INSERT INTO `surat_keterangan_kehilangan` (`id_skh`, `jenis_surat`, `no_surat`, `nik`, `keperluan`, `tanggal_surat`, `id_pejabat_desa`, `status_surat`, `id_profil_desa`) VALUES
(7, 'Surat Keterangan kehilangan', '666', '3671042511970001', 'kehilangan KTP', '2022-01-24 01:52:40', 1, 'SELESAI', 1),
(8, 'Surat Keterangan kehilangan', NULL, '3517112233440001', '.ancs.ac', '2022-01-25 14:54:56', NULL, 'PENDING', 1),
(9, 'Surat Keterangan kehilangan', '11145', '3517112233440001', 'KEHILANGAN PACAR', '2022-01-25 14:58:56', 2, 'SELESAI', 1),
(10, 'Surat Keterangan kehilangan', NULL, '3517112233440001', 'PACAR', '2022-01-25 15:01:56', NULL, 'PENDING', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat_keterangan_kepemilikan_kendaraan_bermotor`
--

CREATE TABLE `surat_keterangan_kepemilikan_kendaraan_bermotor` (
  `id_skkkb` int(11) NOT NULL,
  `jenis_surat` varchar(50) NOT NULL,
  `no_surat` varchar(20) DEFAULT NULL,
  `nik` varchar(20) NOT NULL,
  `roda` varchar(20) NOT NULL,
  `merk_type` varchar(30) DEFAULT NULL,
  `jenis_model` varchar(30) DEFAULT NULL,
  `tahun_pembuatan` varchar(30) DEFAULT NULL,
  `cc` varchar(30) DEFAULT NULL,
  `warna_cat` varchar(30) NOT NULL,
  `no_rangka` varchar(30) NOT NULL,
  `no_mesin` varchar(30) NOT NULL,
  `no_polisi` varchar(30) NOT NULL,
  `no_bpkb` varchar(30) NOT NULL,
  `atas_nama_pemilik` varchar(30) NOT NULL,
  `alamat_pemilik` varchar(200) NOT NULL,
  `keperluan` varchar(50) NOT NULL,
  `tanggal_surat` datetime NOT NULL DEFAULT current_timestamp(),
  `id_pejabat_desa` int(11) DEFAULT NULL,
  `status_surat` varchar(15) NOT NULL,
  `id_profil_desa` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `surat_keterangan_kepemilikan_kendaraan_bermotor`
--

INSERT INTO `surat_keterangan_kepemilikan_kendaraan_bermotor` (`id_skkkb`, `jenis_surat`, `no_surat`, `nik`, `roda`, `merk_type`, `jenis_model`, `tahun_pembuatan`, `cc`, `warna_cat`, `no_rangka`, `no_mesin`, `no_polisi`, `no_bpkb`, `atas_nama_pemilik`, `alamat_pemilik`, `keperluan`, `tanggal_surat`, `id_pejabat_desa`, `status_surat`, `id_profil_desa`) VALUES
(4, 'Surat Keterangan Kepemilikan Kendaraan Bermotor', '42', '3517112233440001', '', 'honda', 'sepeda motor', '2015', '125', 'merah-putih', 'MH1JFP113FK367341', 'JFP1E1375858', 'S 5503ZW', 'L-12009674', 'adi fahrian hidayat', 'Jl. KH. Hasyim Asy\'ari No. 15, RT001/RW002, Dusun Menturus,\r\nDesa Menturus, Kecamatan Kudu, Jombang', 'Kelengkapan Persyaratan Pengajuan Modal Usaha', '2019-12-14 04:04:27', 2, 'SELESAI', 1),
(5, 'Surat Keterangan Kepemilikan Kendaraan Bermotor', '1', '3517112233440001', '', 'honda', 'sepeda motor', '2015', '125', 'merah-putih', 'MH1JFP113FK367341', 'JFP1E1375858', 'S 5503ZW', 'L-12009674', 'adi fahrian hidayat', 'Jl. KH. Hasyim Asy\'ari No. 15, RT001/RW002, Dusun Menturus,\r\nDesa Menturus, Kecamatan Kudu, Jombang', 'Kelengkapan Persyaratan Pengajuan Modal Usaha', '2019-12-14 04:04:51', 1, 'SELESAI', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat_keterangan_lahir`
--

CREATE TABLE `surat_keterangan_lahir` (
  `id_skl` int(11) NOT NULL,
  `jenis_surat` varchar(50) NOT NULL,
  `no_surat` varchar(20) DEFAULT NULL,
  `nama_bayi` varchar(20) NOT NULL,
  `tempat` varchar(20) NOT NULL,
  `tanggal` datetime NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `kewarganegaraan` varchar(20) NOT NULL,
  `agama` varchar(20) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `nik` varchar(20) NOT NULL,
  `nama_ibu` varchar(50) NOT NULL,
  `anak_ke` int(10) NOT NULL,
  `tanggal_surat` datetime NOT NULL DEFAULT current_timestamp(),
  `id_pejabat_desa` int(11) DEFAULT NULL,
  `status_surat` varchar(15) NOT NULL,
  `id_profil_desa` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `surat_keterangan_lahir`
--

INSERT INTO `surat_keterangan_lahir` (`id_skl`, `jenis_surat`, `no_surat`, `nama_bayi`, `tempat`, `tanggal`, `jenis_kelamin`, `kewarganegaraan`, `agama`, `alamat`, `nik`, `nama_ibu`, `anak_ke`, `tanggal_surat`, `id_pejabat_desa`, `status_surat`, `id_profil_desa`) VALUES
(1, 'surat keterangan lahir', NULL, 'asas', 'asd', '2021-12-27 20:00:01', 'ad;lk;', 'jdhqid', 'qdhkbhgqi', 'qjdb', '3517112233440001', 'saas', 1, '2021-12-21 02:00:02', NULL, 'PENDING', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat_keterangan_tidak_mampu`
--

CREATE TABLE `surat_keterangan_tidak_mampu` (
  `id_sktm` int(11) NOT NULL,
  `jenis_surat` varchar(50) CHARACTER SET latin1 NOT NULL,
  `no_surat` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `nik` varchar(20) CHARACTER SET latin1 NOT NULL,
  `keperluan` varchar(50) CHARACTER SET latin1 NOT NULL,
  `tanggal_surat` datetime NOT NULL DEFAULT current_timestamp(),
  `id_pejabat_desa` int(11) DEFAULT NULL,
  `status_surat` varchar(15) CHARACTER SET latin1 NOT NULL,
  `id_profil_desa` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `surat_keterangan_tidak_mampu`
--

INSERT INTO `surat_keterangan_tidak_mampu` (`id_sktm`, `jenis_surat`, `no_surat`, `nik`, `keperluan`, `tanggal_surat`, `id_pejabat_desa`, `status_surat`, `id_profil_desa`) VALUES
(1, 'Surat Keterangan tidak mampu', '1313', '3517112233440001', 'Untuk', '2021-12-21 14:43:53', 2, 'SELESAI', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat_keterangan_usaha`
--

CREATE TABLE `surat_keterangan_usaha` (
  `id_sku` int(11) NOT NULL,
  `jenis_surat` varchar(50) NOT NULL,
  `no_surat` varchar(20) DEFAULT NULL,
  `nik` varchar(20) NOT NULL,
  `usaha` varchar(30) DEFAULT NULL,
  `alamat_usaha` varchar(200) NOT NULL,
  `keperluan` varchar(50) NOT NULL,
  `tanggal_surat` datetime NOT NULL DEFAULT current_timestamp(),
  `id_pejabat_desa` int(11) DEFAULT NULL,
  `status_surat` varchar(15) NOT NULL,
  `id_profil_desa` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `surat_keterangan_usaha`
--

INSERT INTO `surat_keterangan_usaha` (`id_sku`, `jenis_surat`, `no_surat`, `nik`, `usaha`, `alamat_usaha`, `keperluan`, `tanggal_surat`, `id_pejabat_desa`, `status_surat`, `id_profil_desa`) VALUES
(6, 'Surat Keterangan Usaha', '62', '3517112233440001', 'Toko Bangunan', 'Jl. KH. Hasyim Asy\'ari No. 15, RT001/RW002, Dusun Menturus, Desa Menturus, Kecamatan Kudu, Jombang', 'Kelengkapan Persyaratan Pengajuan Modal Usaha', '2019-12-14 04:06:00', 2, 'SELESAI', 1),
(7, 'Surat Keterangan Usaha', '14/12/isg/2021', '3517112233440001', 'Toko Bangunan', 'Jl. KH. Hasyim Asy\'ari No. 15, RT001/RW002, Dusun Menturus, Desa Menturus, Kecamatan Kudu, Jombang', 'Kelengkapan Persyaratan Pengajuan Modal Usaha', '2019-12-14 04:06:09', 1, 'SELESAI', 1),
(8, 'Surat Keterangan Usaha', '11', '3517112233440001', 'Taichan Mas Jon', 'Suakdiri Kabupaten Tangerang', 'untuk mendapatkan ijin', '2021-12-21 14:02:53', 2, 'SELESAI', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat_ktp_sementara`
--

CREATE TABLE `surat_ktp_sementara` (
  `id_ks` int(11) NOT NULL,
  `jenis_surat` varchar(50) CHARACTER SET latin1 NOT NULL,
  `no_surat` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `nik` varchar(20) CHARACTER SET latin1 NOT NULL,
  `keperluan` varchar(50) CHARACTER SET latin1 NOT NULL,
  `tanggal_surat` datetime NOT NULL DEFAULT current_timestamp(),
  `id_pejabat_desa` int(11) DEFAULT NULL,
  `status_surat` varchar(15) CHARACTER SET latin1 NOT NULL,
  `id_profil_desa` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `surat_ktp_sementara`
--

INSERT INTO `surat_ktp_sementara` (`id_ks`, `jenis_surat`, `no_surat`, `nik`, `keperluan`, `tanggal_surat`, `id_pejabat_desa`, `status_surat`, `id_profil_desa`) VALUES
(6, 'Surat ktp sementara', '3344', '3517112233440001', 'melamar kerja', '2021-12-20 00:18:36', 1, 'SELESAI', 1),
(7, 'Surat ktp sementara', '2511', '3517112233440001', 'RAJIKHG', '2021-12-21 13:54:39', 2, 'SELESAI', 1),
(8, 'Surat ktp sementara', NULL, '360316110800001', 'Pembuatan SIM', '2022-01-25 15:26:49', NULL, 'PENDING', 1),
(9, 'Surat ktp sementara', '611', '3671042511970001', 'aedf', '2022-01-25 15:37:46', 1, 'SELESAI', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat_lapor_hajatan`
--

CREATE TABLE `surat_lapor_hajatan` (
  `id_slh` int(11) NOT NULL,
  `jenis_surat` varchar(50) NOT NULL,
  `no_surat` varchar(20) DEFAULT NULL,
  `nik` varchar(20) NOT NULL,
  `bukti_ktp` varchar(30) DEFAULT NULL,
  `bukti_kk` varchar(30) DEFAULT NULL,
  `jenis_hajat` varchar(30) NOT NULL,
  `hari` varchar(20) NOT NULL,
  `tanggal` datetime NOT NULL,
  `jenis_hiburan` varchar(50) NOT NULL,
  `pemilik` varchar(30) NOT NULL,
  `alamat_pemilik` varchar(200) NOT NULL,
  `tanggal_surat` datetime NOT NULL DEFAULT current_timestamp(),
  `id_pejabat_desa` int(11) DEFAULT NULL,
  `status_surat` varchar(15) NOT NULL,
  `id_profil_desa` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `surat_lapor_hajatan`
--

INSERT INTO `surat_lapor_hajatan` (`id_slh`, `jenis_surat`, `no_surat`, `nik`, `bukti_ktp`, `bukti_kk`, `jenis_hajat`, `hari`, `tanggal`, `jenis_hiburan`, `pemilik`, `alamat_pemilik`, `tanggal_surat`, `id_pejabat_desa`, `status_surat`, `id_profil_desa`) VALUES
(4, 'Surat Lapor Hajatan', '71', '3517112233440001', '3517000000000001', '', 'Pernikahan', 'Minggu', '2019-12-15 00:00:00', 'Dangdutan', 'Suwono', 'jl. soto no. 13, rt002/rw003, dusun menturus, desa menturus, kecamatan kudu, kabupaten jombang', '2019-12-14 04:06:40', 1, 'SELESAI', 1),
(5, 'Surat Lapor Hajatan', '111', '3517112233440001', '3517000000000001', '', 'Pernikahan', 'Minggu', '2019-12-15 00:00:00', 'Dangdutan', 'Suwono', 'jl. soto no. 13, rt002/rw003, dusun menturus, desa menturus, kecamatan kudu, kabupaten jombang', '2019-12-14 04:06:57', 1, 'SELESAI', 1),
(6, 'Surat Lapor Hajatan', '112', '3517112233440001', '3517112233440001', '333', 'Pernikahan', 'Senin', '2021-12-15 00:00:00', 'dangdut', 'rajikh', 'gatau', '2021-12-21 15:21:53', 2, 'SELESAI', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat_pengantar_pindah`
--

CREATE TABLE `surat_pengantar_pindah` (
  `id_pp` int(11) NOT NULL,
  `jenis_surat` varchar(50) NOT NULL,
  `no_surat` varchar(20) DEFAULT NULL,
  `nik` varchar(20) NOT NULL,
  `alamat_pindah` varchar(50) NOT NULL,
  `keperluan` varchar(50) NOT NULL,
  `tanggal_surat` datetime NOT NULL DEFAULT current_timestamp(),
  `id_pejabat_desa` int(11) DEFAULT NULL,
  `status_surat` varchar(15) NOT NULL,
  `id_profil_desa` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `surat_pengantar_pindah`
--

INSERT INTO `surat_pengantar_pindah` (`id_pp`, `jenis_surat`, `no_surat`, `nik`, `alamat_pindah`, `keperluan`, `tanggal_surat`, `id_pejabat_desa`, `status_surat`, `id_profil_desa`) VALUES
(145, 'Surat pengantar pindah', '777', '3671042511970001', 'bogor', '1', '2022-01-24 03:31:34', 1, 'SELESAI', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat_pengantar_skck`
--

CREATE TABLE `surat_pengantar_skck` (
  `id_sps` int(11) NOT NULL,
  `jenis_surat` varchar(50) NOT NULL,
  `no_surat` varchar(20) DEFAULT NULL,
  `nik` varchar(20) NOT NULL,
  `bukti_ktp` varchar(30) DEFAULT NULL,
  `bukti_kk` varchar(30) DEFAULT NULL,
  `keperluan` varchar(50) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `masa_berlaku` varchar(20) DEFAULT NULL,
  `tanggal_surat` datetime DEFAULT current_timestamp(),
  `id_pejabat_desa` int(11) DEFAULT NULL,
  `status_surat` varchar(15) NOT NULL,
  `id_profil_desa` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `surat_pengantar_skck`
--

INSERT INTO `surat_pengantar_skck` (`id_sps`, `jenis_surat`, `no_surat`, `nik`, `bukti_ktp`, `bukti_kk`, `keperluan`, `keterangan`, `masa_berlaku`, `tanggal_surat`, `id_pejabat_desa`, `status_surat`, `id_profil_desa`) VALUES
(4, 'Surat Pengantar SKCK', '82', '3517112233440001', '3517000000000001', '', 'Permohonan SKCK', 'Persyaratan Melamar Pekerjaan', NULL, '2019-12-14 04:07:20', 2, 'SELESAI', 1),
(5, 'Surat Pengantar SKCK', NULL, '3517112233440001', '3517000000000001', '', 'Permohonan SKCK', 'Persyaratan Melamar Pekerjaan', NULL, '2019-12-14 04:07:28', NULL, 'PENDING', 1),
(6, 'Surat Pengantar SKCK', '12/12/gfe/2021', '3517112233440001', '3517112233440001', '', 'Permohonan SKCK', 'untuk membuat skck', '7 Hari', '2021-12-21 14:13:37', 1, 'SELESAI', 1),
(7, 'Surat Pengantar SKCK', '24242415', '3517112233440001', '3517112233440001', '31131', 'Permohonan SKCK', 'untuk membuat skck', '30 Hari', '2021-12-21 14:16:51', 1, 'SELESAI', 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `dusun`
--
ALTER TABLE `dusun`
  ADD PRIMARY KEY (`id_dusun`);

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pejabat_desa`
--
ALTER TABLE `pejabat_desa`
  ADD PRIMARY KEY (`id_pejabat_desa`);

--
-- Indeks untuk tabel `penduduk`
--
ALTER TABLE `penduduk`
  ADD PRIMARY KEY (`nik`),
  ADD KEY `idx_id_penduduk` (`id_penduduk`);

--
-- Indeks untuk tabel `profil_desa`
--
ALTER TABLE `profil_desa`
  ADD PRIMARY KEY (`id_profil_desa`);

--
-- Indeks untuk tabel `surat_keterangan`
--
ALTER TABLE `surat_keterangan`
  ADD PRIMARY KEY (`id_sk`),
  ADD KEY `idx_nik` (`nik`),
  ADD KEY `idx_id_pejabat_desa` (`id_pejabat_desa`),
  ADD KEY `idx_id_profil_desa` (`id_profil_desa`);

--
-- Indeks untuk tabel `surat_keterangan_berkelakuan_baik`
--
ALTER TABLE `surat_keterangan_berkelakuan_baik`
  ADD PRIMARY KEY (`id_skbb`),
  ADD KEY `idx_id_pejabat_desa` (`id_pejabat_desa`),
  ADD KEY `idx_nik` (`nik`),
  ADD KEY `idx_id_profil_desa` (`id_profil_desa`);

--
-- Indeks untuk tabel `surat_keterangan_domisili`
--
ALTER TABLE `surat_keterangan_domisili`
  ADD PRIMARY KEY (`id_skd`),
  ADD KEY `idx_nik` (`nik`),
  ADD KEY `idx_id_pejabat_desa` (`id_pejabat_desa`),
  ADD KEY `idx_id_profil_desa` (`id_profil_desa`);

--
-- Indeks untuk tabel `surat_keterangan_kehilangan`
--
ALTER TABLE `surat_keterangan_kehilangan`
  ADD PRIMARY KEY (`id_skh`),
  ADD KEY `idx_nik` (`nik`),
  ADD KEY `idx_id_pejabat_desa` (`id_pejabat_desa`),
  ADD KEY `idx_id_profil_desa` (`id_profil_desa`);

--
-- Indeks untuk tabel `surat_keterangan_kepemilikan_kendaraan_bermotor`
--
ALTER TABLE `surat_keterangan_kepemilikan_kendaraan_bermotor`
  ADD PRIMARY KEY (`id_skkkb`),
  ADD KEY `idx_nik` (`nik`),
  ADD KEY `idx_id_pejabat_desa` (`id_pejabat_desa`),
  ADD KEY `idx_id_profil_desa` (`id_profil_desa`);

--
-- Indeks untuk tabel `surat_keterangan_lahir`
--
ALTER TABLE `surat_keterangan_lahir`
  ADD PRIMARY KEY (`id_skl`),
  ADD KEY `idx_nik` (`nik`),
  ADD KEY `idx_id_pejabat_desa` (`id_pejabat_desa`),
  ADD KEY `idx_id_profil_desa` (`id_profil_desa`);

--
-- Indeks untuk tabel `surat_keterangan_tidak_mampu`
--
ALTER TABLE `surat_keterangan_tidak_mampu`
  ADD PRIMARY KEY (`id_sktm`),
  ADD KEY `fk_id_pejabat_desa_sktm` (`id_pejabat_desa`),
  ADD KEY `fk_id_profil_desa_sktm` (`id_profil_desa`),
  ADD KEY `fk_nik_sktm` (`nik`);

--
-- Indeks untuk tabel `surat_keterangan_usaha`
--
ALTER TABLE `surat_keterangan_usaha`
  ADD PRIMARY KEY (`id_sku`),
  ADD KEY `idx_nik` (`nik`),
  ADD KEY `idx_id_pejabat_desa` (`id_pejabat_desa`),
  ADD KEY `idx_id_profil_desa` (`id_profil_desa`);

--
-- Indeks untuk tabel `surat_ktp_sementara`
--
ALTER TABLE `surat_ktp_sementara`
  ADD PRIMARY KEY (`id_ks`),
  ADD KEY `fk_id_pejabat_desa_ks` (`id_pejabat_desa`),
  ADD KEY `fk_id_profil_desa_ks` (`id_profil_desa`),
  ADD KEY `fk_nik_ks` (`nik`);

--
-- Indeks untuk tabel `surat_lapor_hajatan`
--
ALTER TABLE `surat_lapor_hajatan`
  ADD PRIMARY KEY (`id_slh`),
  ADD KEY `idx_id_profil_desa` (`id_profil_desa`),
  ADD KEY `idx_id_pejabat_desa` (`id_pejabat_desa`),
  ADD KEY `idx_nik` (`nik`);

--
-- Indeks untuk tabel `surat_pengantar_pindah`
--
ALTER TABLE `surat_pengantar_pindah`
  ADD PRIMARY KEY (`id_pp`),
  ADD KEY `idx_nik` (`nik`),
  ADD KEY `idx_id_pejabat_desa` (`id_pejabat_desa`),
  ADD KEY `idx_id_profil_desa` (`id_profil_desa`);

--
-- Indeks untuk tabel `surat_pengantar_skck`
--
ALTER TABLE `surat_pengantar_skck`
  ADD PRIMARY KEY (`id_sps`),
  ADD KEY `idx_nik` (`nik`),
  ADD KEY `idx_id_pejabat_desa` (`id_pejabat_desa`),
  ADD KEY `idx_id_profil_desa` (`id_profil_desa`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `dusun`
--
ALTER TABLE `dusun`
  MODIFY `id_dusun` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `pejabat_desa`
--
ALTER TABLE `pejabat_desa`
  MODIFY `id_pejabat_desa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `penduduk`
--
ALTER TABLE `penduduk`
  MODIFY `id_penduduk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT untuk tabel `profil_desa`
--
ALTER TABLE `profil_desa`
  MODIFY `id_profil_desa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `surat_keterangan`
--
ALTER TABLE `surat_keterangan`
  MODIFY `id_sk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT untuk tabel `surat_keterangan_berkelakuan_baik`
--
ALTER TABLE `surat_keterangan_berkelakuan_baik`
  MODIFY `id_skbb` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `surat_keterangan_domisili`
--
ALTER TABLE `surat_keterangan_domisili`
  MODIFY `id_skd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `surat_keterangan_kehilangan`
--
ALTER TABLE `surat_keterangan_kehilangan`
  MODIFY `id_skh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `surat_keterangan_kepemilikan_kendaraan_bermotor`
--
ALTER TABLE `surat_keterangan_kepemilikan_kendaraan_bermotor`
  MODIFY `id_skkkb` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `surat_keterangan_lahir`
--
ALTER TABLE `surat_keterangan_lahir`
  MODIFY `id_skl` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT untuk tabel `surat_keterangan_tidak_mampu`
--
ALTER TABLE `surat_keterangan_tidak_mampu`
  MODIFY `id_sktm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `surat_keterangan_usaha`
--
ALTER TABLE `surat_keterangan_usaha`
  MODIFY `id_sku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `surat_ktp_sementara`
--
ALTER TABLE `surat_ktp_sementara`
  MODIFY `id_ks` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `surat_lapor_hajatan`
--
ALTER TABLE `surat_lapor_hajatan`
  MODIFY `id_slh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `surat_pengantar_pindah`
--
ALTER TABLE `surat_pengantar_pindah`
  MODIFY `id_pp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT untuk tabel `surat_pengantar_skck`
--
ALTER TABLE `surat_pengantar_skck`
  MODIFY `id_sps` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `surat_keterangan`
--
ALTER TABLE `surat_keterangan`
  ADD CONSTRAINT `fk_id_pejabat_desa_sk` FOREIGN KEY (`id_pejabat_desa`) REFERENCES `pejabat_desa` (`id_pejabat_desa`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_profil_desa_sk` FOREIGN KEY (`id_profil_desa`) REFERENCES `profil_desa` (`id_profil_desa`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_nik_sk` FOREIGN KEY (`nik`) REFERENCES `penduduk` (`nik`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `surat_keterangan_berkelakuan_baik`
--
ALTER TABLE `surat_keterangan_berkelakuan_baik`
  ADD CONSTRAINT `fi_id_profil_desa_skbb` FOREIGN KEY (`id_profil_desa`) REFERENCES `profil_desa` (`id_profil_desa`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_pejabat_desa_skbb` FOREIGN KEY (`id_pejabat_desa`) REFERENCES `pejabat_desa` (`id_pejabat_desa`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_nik_skbb` FOREIGN KEY (`nik`) REFERENCES `penduduk` (`nik`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `surat_keterangan_domisili`
--
ALTER TABLE `surat_keterangan_domisili`
  ADD CONSTRAINT `fi_id_profil_desa_skd` FOREIGN KEY (`id_profil_desa`) REFERENCES `profil_desa` (`id_profil_desa`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_pejabat_desa_skd` FOREIGN KEY (`id_pejabat_desa`) REFERENCES `pejabat_desa` (`id_pejabat_desa`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_nik_skd` FOREIGN KEY (`nik`) REFERENCES `penduduk` (`nik`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `surat_keterangan_kehilangan`
--
ALTER TABLE `surat_keterangan_kehilangan`
  ADD CONSTRAINT `fk_id_pejabat_desa_skp` FOREIGN KEY (`id_pejabat_desa`) REFERENCES `pejabat_desa` (`id_pejabat_desa`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_profil_desa_skp` FOREIGN KEY (`id_profil_desa`) REFERENCES `profil_desa` (`id_profil_desa`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_nik_skp` FOREIGN KEY (`nik`) REFERENCES `penduduk` (`nik`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `surat_keterangan_kepemilikan_kendaraan_bermotor`
--
ALTER TABLE `surat_keterangan_kepemilikan_kendaraan_bermotor`
  ADD CONSTRAINT `fk_id_pejabat_desa_skkkb` FOREIGN KEY (`id_pejabat_desa`) REFERENCES `pejabat_desa` (`id_pejabat_desa`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_profil_desa_skkkb` FOREIGN KEY (`id_profil_desa`) REFERENCES `profil_desa` (`id_profil_desa`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_nik_skkkb` FOREIGN KEY (`nik`) REFERENCES `penduduk` (`nik`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `surat_keterangan_lahir`
--
ALTER TABLE `surat_keterangan_lahir`
  ADD CONSTRAINT `fk_id_pejabat_desa_skl` FOREIGN KEY (`id_pejabat_desa`) REFERENCES `pejabat_desa` (`id_pejabat_desa`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_profil_desa_skl` FOREIGN KEY (`id_profil_desa`) REFERENCES `profil_desa` (`id_profil_desa`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_nik_skl` FOREIGN KEY (`nik`) REFERENCES `penduduk` (`nik`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `surat_keterangan_tidak_mampu`
--
ALTER TABLE `surat_keterangan_tidak_mampu`
  ADD CONSTRAINT `fk_id_pejabat_desa_sktm` FOREIGN KEY (`id_pejabat_desa`) REFERENCES `pejabat_desa` (`id_pejabat_desa`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_profil_desa_sktm` FOREIGN KEY (`id_profil_desa`) REFERENCES `profil_desa` (`id_profil_desa`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_nik_sktm` FOREIGN KEY (`nik`) REFERENCES `penduduk` (`nik`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `surat_keterangan_usaha`
--
ALTER TABLE `surat_keterangan_usaha`
  ADD CONSTRAINT `fi_id_profil_desa_sku` FOREIGN KEY (`id_profil_desa`) REFERENCES `profil_desa` (`id_profil_desa`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_pejabat_desa_sku` FOREIGN KEY (`id_pejabat_desa`) REFERENCES `pejabat_desa` (`id_pejabat_desa`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_nik_sku` FOREIGN KEY (`nik`) REFERENCES `penduduk` (`nik`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `surat_ktp_sementara`
--
ALTER TABLE `surat_ktp_sementara`
  ADD CONSTRAINT `fk_id_pejabat_desa_ks` FOREIGN KEY (`id_pejabat_desa`) REFERENCES `pejabat_desa` (`id_pejabat_desa`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_profil_desa_ks` FOREIGN KEY (`id_profil_desa`) REFERENCES `profil_desa` (`id_profil_desa`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_nik_ks` FOREIGN KEY (`nik`) REFERENCES `penduduk` (`nik`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `surat_lapor_hajatan`
--
ALTER TABLE `surat_lapor_hajatan`
  ADD CONSTRAINT `fk_id_pejabat_desa_slh` FOREIGN KEY (`id_pejabat_desa`) REFERENCES `pejabat_desa` (`id_pejabat_desa`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_profil_desa_slh` FOREIGN KEY (`id_profil_desa`) REFERENCES `profil_desa` (`id_profil_desa`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_nik_slh` FOREIGN KEY (`nik`) REFERENCES `penduduk` (`nik`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `surat_pengantar_pindah`
--
ALTER TABLE `surat_pengantar_pindah`
  ADD CONSTRAINT `fk_id_pejabat_desa_pp` FOREIGN KEY (`id_pejabat_desa`) REFERENCES `pejabat_desa` (`id_pejabat_desa`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_profil_desa_pp` FOREIGN KEY (`id_profil_desa`) REFERENCES `profil_desa` (`id_profil_desa`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_nik_pp` FOREIGN KEY (`nik`) REFERENCES `penduduk` (`nik`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `surat_pengantar_skck`
--
ALTER TABLE `surat_pengantar_skck`
  ADD CONSTRAINT `fk_id_pejabat_desa_sps` FOREIGN KEY (`id_pejabat_desa`) REFERENCES `pejabat_desa` (`id_pejabat_desa`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_profil_desa_sps` FOREIGN KEY (`id_profil_desa`) REFERENCES `profil_desa` (`id_profil_desa`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_nik_sps` FOREIGN KEY (`nik`) REFERENCES `penduduk` (`nik`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
