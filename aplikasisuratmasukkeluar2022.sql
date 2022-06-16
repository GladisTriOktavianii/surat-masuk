-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Jun 2022 pada 05.05
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aplikasisuratmasukkeluar2022`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE `pengguna` (
  `id` int(15) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `nama` varchar(35) NOT NULL,
  `email` varchar(500) NOT NULL,
  `photo` varchar(500) NOT NULL,
  `login_session_key` varchar(255) DEFAULT NULL,
  `email_status` varchar(255) DEFAULT NULL,
  `password_expire_date` datetime DEFAULT '2021-08-24 00:00:00',
  `password_reset_key` varchar(255) DEFAULT NULL,
  `user_role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`id`, `username`, `password`, `nama`, `email`, `photo`, `login_session_key`, `email_status`, `password_expire_date`, `password_reset_key`, `user_role_id`) VALUES
(1, 'Gladis', '$2y$10$gjjYF789tmw4OxYxVBTsAuqBJU36AXw6/TOSiqMtSUM80DziI2lFW', 'user', 'gladistrioktaviani3237@gamail.com', 'http://localhost/appsuratmasukkeluar/uploads/files/1655122192.jpg', '9d5288cf0a4d583177569634d36f8bac', NULL, '2021-08-26 11:02:24', NULL, 1),
(2, 'HypermartLippoEkalokasari', '$2y$10$I0Z8N6yUhoVz2OID5OXeO.zI68U4geEP94EGi0IS57negRhXl2aeG', 'Administrator', 'hypermartlippo@gmail.com', 'http://localhost/appsuratmasukkeluar/uploads/files/1653843858.png', NULL, NULL, '2021-08-24 00:00:00', NULL, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`role_id`, `role_name`) VALUES
(1, 'Administrator'),
(2, 'User');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_permissions`
--

CREATE TABLE `role_permissions` (
  `permission_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `page_name` varchar(255) NOT NULL,
  `action_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `role_permissions`
--

INSERT INTO `role_permissions` (`permission_id`, `role_id`, `page_name`, `action_name`) VALUES
(1, 2, 'pengguna', 'list'),
(2, 2, 'pengguna', 'view'),
(3, 2, 'pengguna', 'add'),
(4, 2, 'pengguna', 'edit'),
(5, 2, 'pengguna', 'editfield'),
(6, 2, 'pengguna', 'delete'),
(7, 2, 'pengguna', 'import_data'),
(8, 2, 'surat_keluar', 'list'),
(9, 2, 'surat_keluar', 'view'),
(10, 2, 'surat_keluar', 'add'),
(11, 2, 'surat_keluar', 'edit'),
(12, 2, 'surat_keluar', 'editfield'),
(13, 2, 'surat_keluar', 'delete'),
(14, 2, 'surat_keluar', 'import_data'),
(15, 2, 'surat_masuk', 'list'),
(16, 2, 'surat_masuk', 'view'),
(17, 2, 'surat_masuk', 'add'),
(18, 2, 'surat_masuk', 'edit'),
(19, 2, 'surat_masuk', 'editfield'),
(20, 2, 'surat_masuk', 'delete'),
(21, 2, 'surat_masuk', 'import_data'),
(22, 2, 'pengguna', 'accountedit'),
(23, 2, 'pengguna', 'accountview'),
(24, 2, 'role_permissions', 'list'),
(25, 2, 'role_permissions', 'view'),
(26, 1, 'role_permissions', 'add'),
(27, 1, 'role_permissions', 'edit'),
(28, 1, 'role_permissions', 'editfield'),
(29, 1, 'role_permissions', 'delete'),
(30, 1, 'roles', 'list'),
(31, 1, 'roles', 'view'),
(32, 1, 'roles', 'add'),
(33, 1, 'roles', 'edit'),
(34, 1, 'roles', 'editfield'),
(35, 1, 'roles', 'delete'),
(36, 2, 'surat_keluar', 'list'),
(37, 2, 'surat_keluar', 'view'),
(38, 2, 'surat_keluar', 'add'),
(39, 2, 'surat_keluar', 'edit'),
(40, 2, 'surat_keluar', 'editfield'),
(41, 2, 'surat_masuk', 'list'),
(42, 2, 'surat_masuk', 'view'),
(43, 2, 'surat_masuk', 'add'),
(44, 2, 'surat_masuk', 'edit'),
(45, 2, 'surat_masuk', 'editfield'),
(46, 2, 'pengguna', 'accountedit'),
(47, 2, 'pengguna', 'accountview');

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat_keluar`
--

CREATE TABLE `surat_keluar` (
  `No_Agenda` int(15) NOT NULL,
  `tanggal_surat` date NOT NULL,
  `Tujuan_surat` varchar(255) NOT NULL,
  `Nomor_surat` varchar(255) NOT NULL,
  `perihal` varchar(500) NOT NULL,
  `file_surat` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `surat_keluar`
--

INSERT INTO `surat_keluar` (`No_Agenda`, `tanggal_surat`, `Tujuan_surat`, `Nomor_surat`, `perihal`, `file_surat`) VALUES
(1, '2022-05-05', 'Depok', '9710-Depok', 'Terima Kerjasama', 'http://localhost/appsuratmasukkeluar/uploads/files/ivb7pc36wzgqn_f.jpg'),
(2, '2022-05-23', 'Bogor', '2305-HypermartBogor', 'Persetujuan kerjasama', 'http://localhost/appsuratmasukkeluar/uploads/files/4ekix7gm95zw1fa.pdf'),
(3, '2022-10-10', 'Dekeng', '9010-Bgr', 'Persetujuan Kerjasam', 'http://localhost/appsuratmasukkeluar/uploads/files/qwmz0v5obs2gtky.pdf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat_masuk`
--

CREATE TABLE `surat_masuk` (
  `No_Agenda` int(15) NOT NULL,
  `Nomor_Surat` varchar(255) NOT NULL,
  `Tanggal_surat` date NOT NULL,
  `tanggal_terima` date NOT NULL,
  `Asal_surat` varchar(255) NOT NULL,
  `perihal` varchar(500) NOT NULL,
  `file_surat` varchar(500) NOT NULL,
  `penerima` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `surat_masuk`
--

INSERT INTO `surat_masuk` (`No_Agenda`, `Nomor_Surat`, `Tanggal_surat`, `tanggal_terima`, `Asal_surat`, `perihal`, `file_surat`, `penerima`) VALUES
(1, '9710-Depok', '2022-05-10', '2022-06-01', 'Depok-Bogor', 'Perjanjian Kerjasama Antara dua perusahaan', 'http://localhost/appsuratmasukkeluar/uploads/files/h7td8ly3cpavxi1.jpg', 'admin'),
(2, '2305-HypermartBogor', '2022-05-23', '2022-06-10', 'Hypermart', 'Kerjasama', 'http://localhost/appsuratmasukkeluar/uploads/files/n681yqz29f4d53s.pdf', 'admin'),
(3, '1127-Dekeng', '2022-04-30', '2022-05-25', 'Dekeng', 'Kerjasama', 'http://localhost/appsuratmasukkeluar/uploads/files/v7j0bps_3wk65fc.pdf', 'admin'),
(4, '9010-Bgr', '2022-10-10', '2022-05-30', 'Bogor Sukasari', 'Kerjasama', 'http://localhost/appsuratmasukkeluar/uploads/files/jpy5cfwhdlx3bz4.pdf', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`),
  ADD UNIQUE KEY `role_name` (`role_name`);

--
-- Indeks untuk tabel `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD PRIMARY KEY (`permission_id`);

--
-- Indeks untuk tabel `surat_keluar`
--
ALTER TABLE `surat_keluar`
  ADD PRIMARY KEY (`No_Agenda`);

--
-- Indeks untuk tabel `surat_masuk`
--
ALTER TABLE `surat_masuk`
  ADD PRIMARY KEY (`No_Agenda`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `role_permissions`
--
ALTER TABLE `role_permissions`
  MODIFY `permission_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT untuk tabel `surat_keluar`
--
ALTER TABLE `surat_keluar`
  MODIFY `No_Agenda` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `surat_masuk`
--
ALTER TABLE `surat_masuk`
  MODIFY `No_Agenda` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
