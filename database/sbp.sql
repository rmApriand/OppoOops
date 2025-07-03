-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Jul 2025 pada 17.59
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sbp`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `iduser` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `nama` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`iduser`, `username`, `password`, `nama`) VALUES
('U001', 'admin', 'admin', 'admin'),
('12', 'edojahat123', 'edojahat123', 'edo');

-- --------------------------------------------------------

--
-- Struktur dari tabel `basispengetahuan`
--

CREATE TABLE `basispengetahuan` (
  `namakerusakan` varchar(100) NOT NULL,
  `gejala` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `basispengetahuan`
--

INSERT INTO `basispengetahuan` (`namakerusakan`, `gejala`) VALUES
('Kerusakan', 'smarthphone pernah jatuh'),
('kamera tidak berfungsi', 'smarthphone pernah jatuh'),
('kamera tidak berfungsi', 'smarthphone pernah jatuh'),
('Android Lambat', 'Hp sakit'),
('kamera tertawa', 'Hp sakit'),
('kamera tertawa', 'Mual'),
('Kamera Rusak', 'Apakah Smartphone Pernah Jatuh ?'),
('Kamera Rusak', 'Apakah Smartphone Pernah Kemasukan Air ?'),
('Kamera Rusak', 'Apakah Handphone terserang virus ?'),
('Boot Restart', 'Apakah Handphone terserang virus ?'),
('Boot Restart', 'Apakah terdapat File Sampah yang menumpuk pada sis'),
('Boot Restart', 'Apakah kinerja CPU, Memori RAM dan GPU Overload  ?'),
('Boot Restart', 'Apakah anda menginstal aplikasi yang masih beta di'),
('Boot Restart', 'Apakah Smartphone Anda mengalami panas berlebih ?'),
('Tidak bisa Charger', 'Apakah Kabel usb rusak ?'),
('Tidak bisa Charger', 'Apakah Adapter charger rusak ?'),
('Tidak bisa Charger', 'Apakah port usb rusak ?'),
('Hardbrick', 'Apakah Smartphone Pernah Kemasukan Air ?'),
('Hardbrick', 'Apakah Anda memodifikasi Sistem ?'),
('Hardbrick', 'Apakah terjadi Kegagal saat install software ?'),
('Lcd Rusak', 'Apakah layar Android terdapat shadow ?'),
('Lcd Rusak', 'Apakah layar sentuh tidak Sensitif'),
('Battery Rusak', 'Apakah battery cepat habis ?'),
('Lcd Rusak', 'Apakah layar smartphone terdapat goresan ?'),
('Sim Card Rusak', 'Kuningan pada SIM CARD rusak'),
('Sim Card Rusak', 'Slot Card Rusak'),
('Sim Card Rusak', 'Smartphone Pernah Kemasukan Air'),
('Sistem Operasi Rusak ', 'Sinyal Hilang'),
('Sistem Operasi Rusak ', 'Saat melakukan panggilan, suara tidak ada'),
('Bootloop', 'Kinerja CPU, Memori RAM dan GPU Overload'),
('Bootloop', 'Pernah memodifikasi Sistem'),
('Bootloop', 'Melakukan Overlock Android'),
('Kerusakan LCD', 'LCD Blank   '),
('Kerusakan LCD', 'Layar Buram'),
('Kerusakan LCD', 'Layar Tidak Responsif'),
('Kerusakan Processor', 'Mati total'),
('Kerusakan Processor', 'Memori Bermasalah '),
('Simcard Rusak', 'Kuningan pada simcard rusak  '),
('Simcard Rusak', 'Slotcard rusak  '),
('Simcard Rusak', 'Smartphone pernah kemasukan air  '),
('IC charger rusak', 'Tidak bisa Charge  '),
('IC charger rusak', 'Status Charging error'),
('Power Supply Rusak', 'Mati total'),
('Power Supply Rusak', 'Tidak bisa Charge  '),
('Power Supply Rusak', 'Baterai over heat  '),
('Power Supply Rusak', 'Baterai Drop'),
('Pilih', 'Saat Mengaktifkan bluetooth hp menjadi rusak atau '),
('Pilih', 'Bluetooth tidak bisa di aktifkan di hp ter restart'),
('Pilih', 'Bluethooth tidak bisa terhubung ke bluetooth lain'),
('Pilih', 'Bluetooth tidak dapat di hidupkan'),
('Bluetooth', 'Saat Mengaktifkan bluetooth hp menjadi rusak atau '),
('Bluetooth', 'Bluetooth tidak bisa di aktifkan di hp ter restart'),
('Bluetooth', 'Bluethooth tidak bisa terhubung ke bluetooth lain'),
('Bluetooth', 'Bluetooth tidak dapat di hidupkan'),
('Memory', 'Data tiba-tiba hilang'),
('Memory', 'Tidak bisa di akses pada komputer atau laptop'),
('Memory', 'Tidak dapat membuka galery pada hp'),
('Memory', 'Hp bisa mengirim file tertentu saja'),
('Memory', 'HP hanya bisa nerima file tertentu saja'),
('Keypad', 'Penekanan pada huruf menjadi acak'),
('Keypad', 'Tulisan bergaris atau berantakan'),
('Keypad', 'Sebagian tombol tidak berfungsi'),
('Keypad', 'Sebagian tombol sulit di tekan'),
('Keypad', 'Tidak ada reaksi ketika di tekan'),
('Baterai', 'Hp tiba-tiba mati padahal isi baterai masih ada'),
('Baterai', 'HP tidak penuh walaupun sudah diisi berjam jam'),
('Baterai', 'Penggunaan baterai boros'),
('IC Power', 'Tidak bisa dicarger'),
('IC Power', 'Pada saat melakukan panggilan hp langsung mati'),
('IC Power', 'Kinerja HP lambat dan tidak optimal'),
('IC Power', 'HP tidak dapat booting ke menu'),
('IC Power', 'Pemakaian HP sudah terlalu lama'),
('IC Power', 'HP panas'),
('IC Power', 'Mati total'),
('Lcd', 'LCD bergaris'),
('Lcd', 'Bercak hitam pada LCD'),
('Lcd', 'Lampu LCD berkedap kedip'),
('Lcd', 'Layar tidak jelas'),
('Lcd', 'LCD blank/mati');

-- --------------------------------------------------------

--
-- Struktur dari tabel `gejala`
--

CREATE TABLE `gejala` (
  `idgejala` varchar(10) NOT NULL,
  `gejala` varchar(1000) NOT NULL,
  `jenishp` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `gejala`
--

INSERT INTO `gejala` (`idgejala`, `gejala`, `jenishp`) VALUES
('G001', 'Saat Mengaktifkan bluetooth hp menjadi rusak atau macet total', 'Oppo'),
('G002', 'Bluetooth tidak bisa di aktifkan di hp ter restart sendiri', 'Oppo'),
('G003', 'Bluethooth tidak bisa terhubung ke bluetooth lain', 'Oppo'),
('G004', 'Bluetooth tidak dapat di hidupkan', 'Oppo'),
('G005', 'Data tiba-tiba hilang', 'Oppo'),
('G006', 'Tidak bisa di akses pada komputer atau laptop', 'Oppo'),
('G007', 'Tidak dapat membuka galery pada hp', 'Oppo'),
('G008', 'Hp bisa mengirim file tertentu saja', 'Oppo'),
('G009', 'HP hanya bisa nerima file tertentu saja', 'Oppo'),
('G010', 'Penekanan pada huruf menjadi acak', 'Oppo'),
('G011', 'Tulisan bergaris atau berantakan', 'Oppo'),
('G012', 'Sebagian tombol tidak berfungsi', 'Oppo'),
('G013', 'Sebagian tombol sulit di tekan', 'Oppo'),
('G014', 'Tidak ada reaksi ketika di tekan', 'Oppo'),
('G015', 'Hp tiba-tiba mati padahal isi baterai masih ada', 'Oppo'),
('G016', 'HP tidak penuh walaupun sudah diisi berjam jam', 'Oppo'),
('G017', 'Penggunaan baterai boros', 'Oppo'),
('G018', 'Tidak bisa dicarger', 'Oppo'),
('G019', 'Pada saat melakukan panggilan hp langsung mati', 'Oppo'),
('G020', 'Kinerja HP lambat dan tidak optimal', 'Oppo'),
('G021', 'HP tidak dapat booting ke menu', 'Oppo'),
('G022', 'Pemakaian HP sudah terlalu lama', 'Oppo'),
('G023', 'HP panas', 'Oppo'),
('G024', 'Mati total', 'Oppo'),
('G025', 'LCD bergaris', 'Oppo'),
('G026', 'Bercak hitam pada LCD', 'Oppo'),
('G027', 'Lampu LCD berkedap kedip', 'Oppo'),
('G028', 'Layar tidak jelas', 'Oppo'),
('G029', 'LCD blank/mati', 'Oppo');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kerusakan`
--

CREATE TABLE `kerusakan` (
  `idkerusakan` varchar(20) NOT NULL,
  `namakerusakan` varchar(1000) NOT NULL,
  `jenishp` varchar(20) NOT NULL,
  `caramengatasi` varchar(1000) NOT NULL,
  `linktutorial` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `kerusakan`
--

INSERT INTO `kerusakan` (`idkerusakan`, `namakerusakan`, `jenishp`, `caramengatasi`, `linktutorial`) VALUES
('K01', 'Bluetooth', 'Oppo', 'periksa pengaturan bluetooth, restart perangkat, lupakan dan pasang ulang', 'https://youtu.be/1D5UNjURN1o?si=MICXrg58yM24OloP'),
('K02', 'Memory', 'Oppo', 'identifikasi  kerusakan RAM, lepas dan pasang kembali ram, periksa kompabilitas', 'https://youtu.be/TfycxEmQf_w?si=_xkslyB9nzGDJ3Aj'),
('K03', 'Keypad', 'Oppo', 'periksa koneksi, restart keybord dan perangkat, perbarui', 'https://youtu.be/wHwqxpNBtxU?si=csSu_XuAPyd3rUHb'),
('K04', 'Baterai', 'Oppo', ' kurangi kecerahan layar, tutup aplikasi berjalan, yang di latar belakang, matikan fitur', 'https://youtu.be/fKazrQXjrCw?si=V1KY73FCjcaNsZ_R'),
('K05', 'IC Power', 'Oppo', 'matikan dan bongkar perangkat, identifikasi letak ic power, periksa kerusakan', 'https://youtu.be/s4Kynm0Ut1M?si=2KeLMEIbcYc5-Cnn'),
('K06', 'Lcd', 'Oppo', 'periksa dan pasang ulang kabel fleksibel,ganti kabel fleksibel jika rusak,jika tidak berhasil, ganti lcd dengan yang baru', 'https://youtu.be/uCEr3SOi1G4?si=u9sqYUYPzv4_wu3S');

-- --------------------------------------------------------

--
-- Struktur dari tabel `repair_history`
--

CREATE TABLE `repair_history` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `brand` varchar(255) NOT NULL,
  `device_type` varchar(255) NOT NULL,
  `symptoms` text NOT NULL,
  `diagnosis` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `smartphones`
--

CREATE TABLE `smartphones` (
  `id` int(11) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `imei` varchar(255) NOT NULL,
  `jenishp` varchar(255) NOT NULL,
  `idkerusakan` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `smartphones`
--

INSERT INTO `smartphones` (`id`, `brand`, `model`, `imei`, `jenishp`, `idkerusakan`) VALUES
(1, 'tata', 'oppo', '28737398373282', 'Oppo', 'K06'),
(2, 'Uus', 'Oppo F2', '17263382927', 'Oppo', 'K02');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`idgejala`);

--
-- Indeks untuk tabel `kerusakan`
--
ALTER TABLE `kerusakan`
  ADD PRIMARY KEY (`idkerusakan`);

--
-- Indeks untuk tabel `repair_history`
--
ALTER TABLE `repair_history`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `smartphones`
--
ALTER TABLE `smartphones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_idkerusakan` (`idkerusakan`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `repair_history`
--
ALTER TABLE `repair_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `smartphones`
--
ALTER TABLE `smartphones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `smartphones`
--
ALTER TABLE `smartphones`
  ADD CONSTRAINT `fk_idkerusakan` FOREIGN KEY (`idkerusakan`) REFERENCES `kerusakan` (`idkerusakan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
