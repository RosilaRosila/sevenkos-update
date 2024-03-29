-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 17, 2023 at 02:55 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `seven_kos`
--

-- --------------------------------------------------------

--
-- Table structure for table `kota`
--

CREATE TABLE `kota` (
  `id_kota` int(3) NOT NULL,
  `kota` text NOT NULL,
  `background` text NOT NULL,
  `status` int(1) DEFAULT 0,
  `filter_status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kota`
--

INSERT INTO `kota` (`id_kota`, `kota`, `background`, `status`, `filter_status`) VALUES
(1, 'Bandung', '	\r\nhttps://i.postimg.cc/4ywb5qjC/frontage.jpg', 1, 1),
(2, 'Jakarta', 'https://i.postimg.cc/zGy3t64C/jakarta.jpg', 0, 1),
(3, 'Surabaya', 'https://i.postimg.cc/mkWQBBWW/surabaya.jpg', 1, 1),
(4, 'Yogyakarta', 'https://i.postimg.cc/X7kNJQ3M/yogyakarta.jpg', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_iklan`
--

CREATE TABLE `tbl_iklan` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `file` varchar(100) NOT NULL,
  `link` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kos`
--

CREATE TABLE `tbl_kos` (
  `id_kos` int(10) NOT NULL,
  `id_user` int(11) NOT NULL,
  `alamat` text NOT NULL,
  `slug` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `status` int(11) NOT NULL,
  `kota` varchar(20) NOT NULL,
  `harga` int(11) NOT NULL,
  `diskon` int(3) DEFAULT NULL,
  `kategori` varchar(100) NOT NULL,
  `nama` varchar(60) NOT NULL,
  `tipe` enum('Putri','Putra','Campur') NOT NULL,
  `fasilitas` varchar(200) NOT NULL,
  `fasilitas_umum` longtext NOT NULL,
  `fasilitas_kamar_mandi` longtext NOT NULL,
  `fasilitas_parkir` longtext NOT NULL,
  `image_header` varchar(200) NOT NULL,
  `sisa_kamar` int(11) NOT NULL,
  `peraturan_kamar` longtext NOT NULL,
  `spesifikasi_kamar` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kos`
--

INSERT INTO `tbl_kos` (`id_kos`, `id_user`, `alamat`, `slug`, `date`, `time`, `status`, `kota`, `harga`, `diskon`, `kategori`, `nama`, `tipe`, `fasilitas`, `fasilitas_umum`, `fasilitas_kamar_mandi`, `fasilitas_parkir`, `image_header`, `sisa_kamar`, `peraturan_kamar`, `spesifikasi_kamar`) VALUES
(1, 3, 'Jl.Raya Paledang Bandung No.33', 'Kost-BR-46-Pasteur-Bandung', '2022-11-16', '07:57:55', 1, 'Yogyakarta', 500000, 50, '[\"1\",\"3\",\"6\"]', 'Kost BR 46 Pasteur Jawa Barat', 'Campur', '[\"Kursi\",\"Bantal\",\"Jendela\",\"Meja\",\"Ventilasi\",\"Kipas Angin\",\"Guling\",\"Cermin\",\"Kamar Mandi\"]', '[\"Dapur\",\"CCTV\",\"Pengurus Kos\",\"Kulkas\",\"Penjaga Kos\",\"Dispenser\",\"Gazebo\"]', '[\"K. Mandi Dalam\",\"K. Mandi Luar\",\"Kloset Duduk\",\"Kloset Jongkok\",\"Shower\",\"Air Panas\",\"Cermin\"]', '[\"Parkir Motor\",\"Parkir Mobil\"]', 'https://i.postimg.cc/yYqnq9B0/a2.jpg', 2, '[\"Kamar maksimal dihuni oleh 1 orang\",\"Boleh pasutri\",\"Boleh bawa anak\",\"Tamu menginap dikenakan biaya\"]', '5x3 Meter;Termasuk Listrik'),
(2, 3, 'Jl. Permai No.17 Cigadung Cibeunying', 'Kost-Cibeunying-Permai', '2022-11-15', '09:21:29', 1, 'Bandung', 700000, 15, '[\"1\",\"3\",\"6\",\"12\"]', 'Kost Cibeunying Permai', 'Putri', '[\"Kasur\",\"Lemari Baju\",\"Kursi\",\"Bantal\",\"Jendela\",\"Meja\",\"Kamar Mandi\"]', '[\"Wifi\",\"Laundry\",\"Dapur\",\"CCTV\",\"Pengurus Kos\",\"Kulkas\",\"Penjaga Kos\",\"Dispenser\",\"Gazebo\",\"Rice Cooker\"]', '[\"K. Mandi Dalam\",\"Kloset Duduk\",\"Shower\",\"Air Panas\"]', '[\"Parkir Motor\",\"Parkir Mobil\",\"Parkir Sepeda\"]', 'https://i.postimg.cc/x8v7zPnV/12.jpg', 8, '[\"Kamar maksimal dihuni oleh 1 orang\",\"Boleh pasutri\",\"Boleh bawa anak\",\"Tamu menginap dikenakan biaya\"]', '3x3 Meter;Tidak Termasuk Listrik'),
(3, 3, 'Jl.Anjani Sukasari Bandung No.90', 'guest-house-anjani-sukasari-bandung', '2023-06-10', '16:26:09', 1, 'Bandung', 600000, 30, '[\"1\",\"12\"]', 'Guest House Anjani Sukasari', 'Putra', '[\"Kasur\",\"Kursi\",\"Jendela\",\"Kipas Angin\",\"Kosongan\"]', '[\"Wifi\",\"Laundry\",\"Dapur\",\"CCTV\",\"Pengurus Kos\",\"Kulkas\",\"Penjaga Kos\",\"Dispenser\",\"Gazebo\",\"Rice Cooker\"]', '[\"K. Mandi Dalam\",\"Kloset Duduk\",\"Shower\",\"Air Panas\"]', '[\"Parkir Motor\",\"Parkir Mobil\",\"Parkir Sepeda\"]', 'https://i.postimg.cc/PJMHjHLD/kost-temon-kulon-progo.jpg', 98, '[\"Kamar maksimal dihuni oleh 1 orang\",\"Boleh pasutri\",\"Boleh bawa anak\",\"Tamu menginap dikenakan biaya\"]', '3x3 Meter;Tidak Termasuk Listrik'),
(4, 6, 'Jl.Cidadap No.1', 'kost-platinum-cidadap-bandung', '2022-09-05', '13:39:59', 1, 'Bandung', 900000, 39, '[\"1\",\"3\",\"6\",\"12\"]', 'Kost Platinum Cidadap', 'Putra', '[\"Kasur\",\"Lemari Baju\",\"Kursi\"]', '[\"Wifi\",\"Laundry\",\"Dapur\",\"CCTV\",\"Pengurus Kos\",\"Kulkas\",\"Penjaga Kos\",\"Dispenser\",\"Gazebo\",\"Rice Cooker\"]', '[\"K. Mandi Dalam\",\"Kloset Duduk\",\"Shower\",\"Air Panas\"]', '[\"Parkir Motor\",\"Parkir Mobil\",\"Parkir Sepeda\"]', 'https://i.postimg.cc/xCRT3L0M/kos14.jpg', 2, '[\"Kamar maksimal dihuni oleh 1 orang\",\"Boleh pasutri\",\"Boleh bawa anak\",\"Tamu menginap di kenakan biaya\"]', '3x3 Meter;Tidak Termasuk Listrik'),
(5, 7, 'Jl. Cibiru No.900', 'kost-bowie-cibiru-bandung', '2022-10-10', '13:05:54', 1, 'Surabaya', 1000000, 40, '[\"1\",\"3\",\"6\",\"12\"]', 'Kost Bowie Cibiru', 'Putra', '[\"Bantal\",\"Jendela\",\"Meja\"]', '[\"Wifi\",\"Laundry\",\"Dapur\",\"CCTV\",\"Pengurus Kos\",\"Kulkas\",\"Penjaga Kos\",\"Dispenser\",\"Gazebo\",\"Rice Cooker\"]', '[\"K. Mandi Dalam\",\"Kloset Duduk\",\"Shower\",\"Air Panas\"]', '[\"Parkir Motor\",\"Parkir Mobil\",\"Parkir Sepeda\"]', 'https://i.postimg.cc/sD0xLP5J/kos2.jpg', 5, '[\"Kamar maksimal dihuni oleh 1 orang\",\"Boleh pasutri\",\"Boleh bawa anak\",\"Tamu menginap di kenakan biaya\"]', '3x3 Meter;Tidak Termasuk Listrik'),
(6, 8, 'Jl. Sukaluyu No.222', 'kost-sapujagad-2-sukaluyu-bandung', '2022-09-05', '13:34:19', 1, 'Surabaya', 850000, 58, '[\"1\",\"3\",\"6\",\"12\"]', 'Kost Sapujagad 2 Sukaluyu', 'Putra', '[\"Kasur\",\"Lemari Baju\",\"Kursi\",\"Meja\",\"Jendela\",\"Kamar Mandi\"]', '[\"Wifi\",\"Laundry\",\"Dapur\",\"CCTV\",\"Pengurus Kos\",\"Kulkas\",\"Penjaga Kos\",\"Dispenser\",\"Gazebo\",\"Rice Cooker\"]', '[\"K. Mandi Dalam\",\"Kloset Duduk\",\"Shower\",\"Air Panas\"]', '[\"Parkir Motor\",\"Parkir Mobil\",\"Parkir Sepeda\"]', 'https://i.postimg.cc/SxBsSyT2/kos3.jpg\n', 1, '[\"Kamar maksimal dihuni oleh 1 orang\",\"Boleh pasutri\",\"Boleh bawa anak\",\"Tamu menginap di kenakan biaya\"]', '3x3 Meter;Tidak Termasuk Listrik'),
(7, 9, 'Jl. Wisma No.88', 'kost-wisma-lentera-bandung', '2022-09-05', '13:34:29', 1, 'Bandung', 1100000, 45, '[\"1\",\"3\",\"6\",\"12\"]', 'Kost Wisma Lentera', 'Putra', '[\"Lemari Baju\",\"Kursi\",\"Meja\"]', '[\"Wifi\",\"Laundry\",\"Dapur\",\"CCTV\",\"Pengurus Kos\",\"Kulkas\",\"Penjaga Kos\",\"Dispenser\",\"Gazebo\",\"Rice Cooker\"]', '[\"K. Mandi Dalam\",\"Kloset Duduk\",\"Shower\",\"Air Panas\"]', '[\"Parkir Motor\",\"Parkir Mobil\",\"Parkir Sepeda\"]', 'https://i.postimg.cc/Z5bk6XW7/4.jpg', 2, '[\"Kamar maksimal dihuni oleh 1 orang\",\"Boleh pasutri\",\"Boleh bawa anak\",\"Tamu menginap di kenakan biaya\"]', '3x3 Meter;Tidak Termasuk Listrik'),
(8, 10, 'Jl. Rancasari No.88', 'kost-pondok-mars-barat-iii-no-8-tipe-b-rancasari-bandung', '2022-09-05', '13:34:37', 1, 'Yogyakarta', 1500000, 25, '[\"1\",\"3\",\"6\",\"12\"]', 'Kost Pondok Mars Barat III No. 8 Tipe B Rancasari', 'Putra', '[\"Kipas Angin\",\"Guling\",\"Cermin\"]', '[\"Wifi\",\"Laundry\",\"Dapur\",\"CCTV\",\"Pengurus Kos\",\"Kulkas\",\"Penjaga Kos\",\"Dispenser\",\"Gazebo\",\"Rice Cooker\"]', '[\"K. Mandi Dalam\",\"Kloset Duduk\",\"Shower\",\"Air Panas\"]', '[\"Parkir Motor\",\"Parkir Mobil\",\"Parkir Sepeda\"]', 'https://i.postimg.cc/fbP6nLBp/6.jpg', 2, '[\"Kamar maksimal dihuni oleh 1 orang\",\"Boleh pasutri\",\"Boleh bawa anak\",\"Tamu menginap di kenakan biaya\"]', '3x3 Meter;Tidak Termasuk Listrik'),
(9, 11, 'Jl. Subur Coblong No.21', 'kost-sadang-subur-i-coblong-bandung', '2022-09-05', '13:34:45', 1, 'Yogyakarta', 550000, NULL, '[\"1\",\"3\",\"6\",\"12\"]', 'Kost Sadang Subur I Coblong', 'Putra', '[\"Jendela\",\"Kipas Angin\",\"Bantal\",\"Cermin\"]', '[\"Wifi\",\"Laundry\",\"Dapur\",\"CCTV\",\"Pengurus Kos\",\"Kulkas\",\"Penjaga Kos\",\"Dispenser\",\"Gazebo\",\"Rice Cooker\"]', '[\"K. Mandi Dalam\",\"Kloset Duduk\",\"Shower\",\"Air Panas\"]', '[\"Parkir Motor\",\"Parkir Mobil\",\"Parkir Sepeda\"]', 'https://i.postimg.cc/kgf0sw8n/7.jpg', 4, '[\"Kamar maksimal dihuni oleh 1 orang\",\"Boleh pasutri\",\"Boleh bawa anak\",\"Tamu menginap di kenakan biaya\"]', '3x3 Meter;Tidak Termasuk Listrik'),
(10, 12, 'Jl. Cibiru No.21', 'kost-pondok-jati-cibiru-bandung', '2022-11-07', '17:07:34', 1, 'Surabaya', 750000, NULL, 'null', 'Kost Pondok Jati Cibiru ', 'Putra', 'null', 'null', 'null', 'null', 'https://i.postimg.cc/XvqTzFc9/8.jpg', 4, 'null', '3x3 Meter;'),
(11, 13, 'Jl. Sukasari No.121', 'kost-niji-house-sukasari-bandung', '2022-09-05', '13:35:03', 1, 'Jakarta', 500000, NULL, '[\"1\",\"3\",\"6\",\"12\"]', 'Kost Niji House Sukasari', 'Putra', '[\"Lemari Baju\",\"Kursi\",\"Bantal\"]', '[\"Wifi\",\"Laundry\",\"Dapur\",\"CCTV\",\"Pengurus Kos\",\"Kulkas\",\"Penjaga Kos\",\"Dispenser\",\"Gazebo\",\"Rice Cooker\"]', '[\"K. Mandi Dalam\",\"Kloset Duduk\",\"Shower\",\"Air Panas\"]', '[\"Parkir Motor\",\"Parkir Mobil\",\"Parkir Sepeda\"]', 'https://i.postimg.cc/xCbB02ZC/9.jpg', 3, '[\"Kamar maksimal dihuni oleh 1 orang\",\"Boleh pasutri\",\"Boleh bawa anak\",\"Tamu menginap di kenakan biaya\"]', '3x3 Meter;Tidak Termasuk Listrik'),
(12, 14, 'Jl. Cibeurem No.812', 'kost-nyaman-cibeurem-bandung', '2022-09-05', '13:36:14', 1, 'Jakarta', 650000, NULL, '[\"1\",\"3\",\"6\",\"12\"]', 'Kost Nyaman Cibeurem', 'Putra', '[\"Cermin\",\"Kamar Mandi\"]', '[\"Wifi\",\"Laundry\",\"Dapur\",\"CCTV\",\"Pengurus Kos\",\"Kulkas\",\"Penjaga Kos\",\"Dispenser\",\"Gazebo\",\"Rice Cooker\"]', '[\"K. Mandi Dalam\",\"Kloset Duduk\",\"Shower\",\"Air Panas\"]', '[\"Parkir Motor\",\"Parkir Mobil\",\"Parkir Sepeda\"]', 'https://i.postimg.cc/ncxNtNGF/10.jpg', 1, '[\"Kamar maksimal dihuni oleh 1 orang\",\"Boleh pasutri\",\"Boleh bawa anak\",\"Tamu menginap di kenakan biaya\"]', '3x3 Meter;Tidak Termasuk Listrik'),
(13, 15, 'Jl. Peta 90', 'kost-amara-residence-bandung', '2022-09-05', '13:36:26', 1, 'Jakarta', 450000, NULL, '[\"1\",\"3\",\"6\",\"12\"]', 'Kost Amara Residence', 'Putra', '[\"Ventilasi\",\"Kipas Angin\",\"Kasur\",\"Meja\",\"Kursi\",\"Kamar Mandi\"]', '[\"Wifi\",\"Laundry\",\"Dapur\",\"CCTV\",\"Pengurus Kos\",\"Kulkas\",\"Penjaga Kos\",\"Dispenser\",\"Gazebo\",\"Rice Cooker\"]', '[\"K. Mandi Dalam\",\"Kloset Duduk\",\"Shower\",\"Air Panas\"]', '[\"Parkir Motor\",\"Parkir Mobil\",\"Parkir Sepeda\"]', 'https://i.postimg.cc/3N5VNqMZ/11.jpg', 7, '[\"Kamar maksimal dihuni oleh 1 orang\",\"Boleh pasutri\",\"Boleh bawa anak\",\"Tamu menginap di kenakan biaya\"]', '3x3 Meter;Tidak Termasuk Listrik'),
(14, 16, 'Jl. Tubagus Ismanil No.90', 'kost-tipe-a-tubagus-ismail-depan-no-90-bandung', '2022-09-05', '13:36:48', 1, 'Surabaya', 950000, NULL, '[\"1\",\"3\",\"6\",\"12\"]', 'Kost Tipe A Tubagus Ismail Depan No. 90', 'Putra', '[\"Bantal\",\"Jendela\",\"Meja\"]', '[\"Wifi\",\"Laundry\",\"Dapur\",\"CCTV\",\"Pengurus Kos\",\"Kulkas\",\"Penjaga Kos\",\"Dispenser\",\"Gazebo\",\"Rice Cooker\"]', '[\"K. Mandi Dalam\",\"Kloset Duduk\",\"Shower\",\"Air Panas\"]', '[\"Parkir Motor\",\"Parkir Mobil\",\"Parkir Sepeda\"]', 'https://i.postimg.cc/x8v7zPnV/12.jpg', 1, '[\"Kamar maksimal dihuni oleh 1 orang\",\"Boleh pasutri\",\"Boleh bawa anak\",\"Tamu menginap di kenakan biaya\"]', '3x3 Meter;Tidak Termasuk Listrik'),
(15, 17, 'Jl. Kosambi No.18', 'kost-wartawan-18-bandung', '2022-09-05', '13:37:01', 1, 'Jakarta', 1600000, NULL, '[\"1\",\"3\",\"6\",\"12\"]', 'Kost wartawan 18', 'Putra', '[\"Jendela\",\"Meja\",\"Kursi\",\"Ventilasi\",\"Kipas Angin\",\"Kasur\"]', '[\"Wifi\",\"Laundry\",\"Dapur\",\"CCTV\",\"Pengurus Kos\",\"Kulkas\",\"Penjaga Kos\",\"Dispenser\",\"Gazebo\",\"Rice Cooker\"]', '[\"K. Mandi Dalam\",\"Kloset Duduk\",\"Shower\",\"Air Panas\"]', '[\"Parkir Motor\",\"Parkir Mobil\",\"Parkir Sepeda\"]', 'https://i.postimg.cc/1Rwb2y67/13.jpg', 1, '[\"Kamar maksimal dihuni oleh 1 orang\",\"Boleh pasutri\",\"Boleh bawa anak\",\"Tamu menginap di kenakan biaya\"]', '3x3 Meter;Tidak Termasuk Listrik'),
(16, 18, 'Jl. Ciheulang No.235', 'kost-terusan-ciheulang-no-235-b-type-a-coblong-bandung', '2022-09-05', '13:37:12', 1, 'Jakarta', 1700000, NULL, '[\"1\",\"3\",\"6\",\"12\"]', 'Kost Terusan Ciheulang No. 235 B Type A Coblong', 'Putra', '[\"Meja\",\"Ventilasi\",\"Kipas Angin\",\"Guling\",\"Bantal\"]', '[\"Wifi\",\"Laundry\",\"Dapur\",\"CCTV\",\"Pengurus Kos\",\"Kulkas\",\"Penjaga Kos\",\"Dispenser\",\"Gazebo\",\"Rice Cooker\"]', '[\"K. Mandi Dalam\",\"Kloset Duduk\",\"Shower\",\"Air Panas\"]', '[\"Parkir Motor\",\"Parkir Mobil\",\"Parkir Sepeda\"]', 'https://i.postimg.cc/BQCkZNmx/14.jpg', 2, '[\"Kamar maksimal dihuni oleh 1 orang\",\"Boleh pasutri\",\"Boleh bawa anak\",\"Tamu menginap di kenakan biaya\"]', '3x3 Meter;Tidak Termasuk Listrik'),
(17, 19, 'Jl. Antanan 1', 'kost-antanan-1-bandung', '2022-09-05', '13:37:21', 1, 'Yogyakarta', 1300000, NULL, '[\"1\",\"3\",\"6\",\"12\"]', 'Kost Antanan 1', 'Putra', '[\"Jendela\",\"Meja\",\"Kursi\",\"Ventilasi\",\"Kasur\",\"Bantal\",\"Guling\"]', '[\"Wifi\",\"Laundry\",\"Dapur\",\"CCTV\",\"Pengurus Kos\",\"Kulkas\",\"Penjaga Kos\",\"Dispenser\",\"Gazebo\",\"Rice Cooker\"]', '[\"K. Mandi Dalam\",\"Kloset Duduk\",\"Shower\",\"Air Panas\"]', '[\"Parkir Motor\",\"Parkir Mobil\",\"Parkir Sepeda\"]', 'https://i.postimg.cc/DwyDSsNR/15.jpg', 1, '[\"Kamar maksimal dihuni oleh 1 orang\",\"Boleh pasutri\",\"Boleh bawa anak\",\"Tamu menginap di kenakan biaya\"]', '3x3 Meter;Tidak Termasuk Listrik'),
(18, 20, 'Jl. Dago No.87', 'kost-dan-paviliun-dago-cintawangi-bandung', '2022-09-05', '13:37:30', 1, 'Yogyakarta', 1050000, NULL, '[\"1\",\"3\",\"6\",\"12\"]', 'Kost dan Paviliun Dago Cintawangi', 'Putra', '[\"Lemari Baju\",\"Kursi\",\"Kasur\",\"Bantal\",\"Guling\",\"Jendela\"]', '[\"Wifi\",\"Laundry\",\"Dapur\",\"CCTV\",\"Pengurus Kos\",\"Kulkas\",\"Penjaga Kos\",\"Dispenser\",\"Gazebo\",\"Rice Cooker\"]', '[\"K. Mandi Dalam\",\"Kloset Duduk\",\"Shower\",\"Air Panas\"]', '[\"Parkir Motor\",\"Parkir Mobil\",\"Parkir Sepeda\"]', 'https://i.postimg.cc/Gm7fGtwt/16.jpg', 4, '[\"Kamar maksimal dihuni oleh 1 orang\",\"Boleh pasutri\",\"Boleh bawa anak\",\"Tamu menginap di kenakan biaya\"]', '3x3 Meter;Tidak Termasuk Listrik'),
(19, 21, 'Jl. Coblong No.6', 'kost-yayu-no16-type-b-coblong-bandung', '2022-09-05', '13:37:42', 1, 'Yogyakarta', 1400000, NULL, '[\"1\",\"3\",\"6\",\"12\"]', 'Kost Yayu No.16 Type B Coblong', 'Putra', '[\"Kursi\",\"Meja\",\"Kasur\",\"Bantal\",\"Jendela\",\"Cermin\"]', '[\"Wifi\",\"Laundry\",\"Dapur\",\"CCTV\",\"Pengurus Kos\",\"Kulkas\",\"Penjaga Kos\",\"Dispenser\",\"Gazebo\",\"Rice Cooker\"]', '[\"K. Mandi Dalam\",\"Kloset Duduk\",\"Shower\",\"Air Panas\"]', '[\"Parkir Motor\",\"Parkir Mobil\",\"Parkir Sepeda\"]', 'https://i.postimg.cc/jjBk31jr/18.jpg', 4, '[\"Kamar maksimal dihuni oleh 1 orang\",\"Boleh pasutri\",\"Boleh bawa anak\",\"Tamu menginap di kenakan biaya\"]', '3x3 Meter;Tidak Termasuk Listrik'),
(20, 22, 'Jl. Sukajadi No.23', 'kost-light-home-sukajadi-bandung', '2022-09-05', '13:37:52', 1, 'Jakarta', 2000000, NULL, '[\"1\",\"3\",\"6\",\"12\"]', 'Kost Light Home Sukajadi', 'Putra', '[\"Kursi\",\"Bantal\",\"Jendela\",\"Meja\",\"Ventilasi\",\"Kipas Angin\"]', '[\"Wifi\",\"Laundry\",\"Dapur\",\"CCTV\",\"Pengurus Kos\",\"Kulkas\",\"Penjaga Kos\",\"Dispenser\",\"Gazebo\",\"Rice Cooker\"]', '[\"K. Mandi Dalam\",\"Kloset Duduk\",\"Shower\",\"Air Panas\"]', '[\"Parkir Motor\",\"Parkir Mobil\",\"Parkir Sepeda\"]', 'https://i.postimg.cc/QdGCs8nB/20.jpg', 4, '[\"Kamar maksimal dihuni oleh 1 orang\",\"Boleh pasutri\",\"Boleh bawa anak\",\"Tamu menginap di kenakan biaya\"]', '3x3 Meter;Tidak Termasuk Listrik'),
(21, 23, 'Jl. Dipatiukur No.17', 'kost-nur-house-bandung', '2022-09-05', '13:38:42', 1, 'Yogyakarta', 1150000, NULL, '[\"1\",\"3\",\"6\",\"12\"]', 'Kost Nur House', 'Putra', '[\"Kasur\",\"Lemari Baju\",\"Kursi\",\"Bantal\",\"Jendela\",\"Ventilasi\"]', '[\"Wifi\",\"Laundry\",\"Dapur\",\"CCTV\",\"Pengurus Kos\",\"Kulkas\",\"Penjaga Kos\",\"Dispenser\",\"Gazebo\",\"Rice Cooker\"]', '[\"K. Mandi Dalam\",\"Kloset Duduk\",\"Shower\",\"Air Panas\"]', '[\"Parkir Motor\",\"Parkir Mobil\",\"Parkir Sepeda\"]', 'https://i.postimg.cc/BvjVg34g/17.jpg', 3, '[\"Kamar maksimal dihuni oleh 1 orang\",\"Boleh pasutri\",\"Boleh bawa anak\",\"Tamu menginap di kenakan biaya\"]', '3x3 Meter;Tidak Termasuk Listrik'),
(22, 24, 'Jl. Pagarsih No.78', 'kost-tian-jalan-pagarsih-no78', '2022-09-05', '13:38:32', 1, 'Jakarta', 2700000, NULL, '[\"1\",\"3\",\"6\",\"12\"]', 'Kost Tian Jalan Pagarsih No.78', 'Putra', '[\"Kasur\",\"Bantal\",\"Guling\",\"Lemari Baju\",\"Kursi\",\"Meja\",\"Kipas Angin\",\"Kamar Mandi\",\"Cermin\"]', '[\"Wifi\",\"Laundry\",\"Dapur\",\"CCTV\",\"Pengurus Kos\",\"Kulkas\",\"Penjaga Kos\",\"Dispenser\",\"Gazebo\",\"Rice Cooker\"]', '[\"K. Mandi Dalam\",\"Kloset Duduk\",\"Shower\",\"Air Panas\"]', '[\"Parkir Motor\",\"Parkir Mobil\",\"Parkir Sepeda\"]', 'https://i.postimg.cc/bJbV7RGS/19.jpg', 3, '[\"Kamar maksimal dihuni oleh 1 orang\",\"Boleh pasutri\",\"Boleh bawa anak\",\"Tamu menginap di kenakan biaya\"]', '3x3 Meter;Tidak Termasuk Listrik'),
(55, 26, 'kosku', 'kosku', '2022-09-05', '13:38:05', 1, 'Banda Aceh', 1000, NULL, '[\"1\",\"3\",\"6\",\"12\"]', 'kosku', 'Putra', '[\"Bantal\",\"Jendela\",\"Meja\",\"Kipas Angin\"]', '[\"Wifi\",\"Laundry\",\"Dapur\",\"CCTV\",\"Pengurus Kos\",\"Kulkas\",\"Penjaga Kos\",\"Dispenser\",\"Gazebo\",\"Rice Cooker\"]', '[\"K. Mandi Dalam\",\"Kloset Duduk\",\"Shower\",\"Air Panas\"]', '[\"Parkir Motor\",\"Parkir Mobil\",\"Parkir Sepeda\"]', 'https://i.postimg.cc/cJ3VWW2J/Seven-inc5.jpg', 2, '[\"Kamar maksimal dihuni oleh 1 orang\",\"Boleh pasutri\",\"Boleh bawa anak\",\"Tamu menginap di kenakan biaya\"]', '3x3 Meter;Tidak Termasuk Listrik'),
(57, 44, 'Temon Kulon, Kec Temon,', 'kost-temon-kulon-progo-yogyakarta', '2022-09-29', '11:20:55', 1, 'Yogyakarta', 700000, NULL, '[\"1\",\"3\",\"6\",\"12\"]', 'KOST TEMON, KULON PROGO, YOGYAKARTA', 'Putra', '[\"Kasur\",\"Lemari Baju\",\"Kursi\",\"Bantal\"]', '[\"Wifi\",\"Laundry\",\"Dapur\",\"CCTV\",\"Pengurus Kos\",\"Kulkas\",\"Penjaga Kos\",\"Dispenser\",\"Gazebo\",\"Rice Cooker\"]', '[\"K. Mandi Dalam\",\"Kloset Duduk\",\"Shower\",\"Air Panas\"]', '[\"Parkir Motor\",\"Parkir Mobil\",\"Parkir Sepeda\"]', 'https://i.postimg.cc/PJMHjHLD/kost-temon-kulon-progo.jpg', 2, '[\"Kamar maksimal dihuni oleh 1 orang\",\"Boleh pasutri\",\"Boleh bawa anak\",\"Tamu menginap di kenakan biaya\"]', '3x3 Meter;Tidak Termasuk Listrik'),
(58, 44, '\r\nGlaheng RT 006/RW 003, Sindutan, Temon,Kulon Progo, DIY', 'kost-fastabikhul-khairat', '2022-09-29', '11:27:00', 1, 'Yogyakarta', 500000, NULL, '[\"1\",\"3\",\"6\",\"12\"]', 'Kost Fastabikhul Khairat', 'Putra', '[\"Kasur\",\"Bantal\",\"Guling\"]', '[\"Wifi\",\"Laundry\",\"Dapur\",\"CCTV\",\"Pengurus Kos\",\"Kulkas\",\"Penjaga Kos\",\"Dispenser\",\"Gazebo\",\"Rice Cooker\"]', '[\"K. Mandi Dalam\",\"Kloset Duduk\",\"Shower\",\"Air Panas\"]', '[\"Parkir Motor\",\"Parkir Mobil\",\"Parkir Sepeda\"]', 'https://i.postimg.cc/8cGG9cCD/kost-fastabikhul.jpg', 3, '[\"Kamar maksimal dihuni oleh 1 orang\",\"Boleh pasutri\",\"Boleh bawa anak\",\"Tamu menginap di kenakan biaya\"]', '3x3 Meter;Tidak Termasuk Listrik'),
(59, 44, 'Jl. Janti Gg. Nakula, RT.02, RW No.31, Jaranan, Banguntapan, Kec. Banguntapan, Kabupaten Bantul, Daerah Istimewa Yogyakarta 55198', 'kos-mbok-jillah', '2022-10-10', '16:21:10', 1, 'Yogyakarta', 500000, NULL, '[\"1\",\"12\"]', 'Kos Mbok Jillah', 'Putra', '[\"Kosongan\"]', '[\"Wifi\",\"Laundry\",\"Dapur\",\"CCTV\",\"Pengurus Kos\",\"Kulkas\",\"Penjaga Kos\",\"Dispenser\",\"Gazebo\",\"Rice Cooker\"]', '[\"K. Mandi Dalam\",\"Kloset Duduk\",\"Shower\",\"Air Panas\"]', '[\"Parkir Motor\",\"Parkir Mobil\",\"Parkir Sepeda\"]', 'https://i.postimg.cc/j2SgDYgP/2021-12-01.jpg', 2, '[\"Kamar maksimal dihuni oleh 1 orang\",\"Boleh pasutri\",\"Boleh bawa anak\",\"Tamu menginap di kenakan biaya\"]', '3x3 Meter;Tidak Termasuk Listrik'),
(60, 44, 'Jl. Mantrigawen Lor 5, Panembahan-Kraton, Jogja', 'kost-putri-nyaman-dekat-kraton', '2022-09-29', '14:48:11', 1, 'Yogyakarta', 400000, NULL, '[\"1\",\"3\",\"6\",\"12\"]', 'Kost Putri Nyaman Dekat Kraton', 'Putri', '[\"Kasur\",\"Lemari Baju\",\"Bantal\",\"Guling\"]', '[\"Wifi\",\"Laundry\",\"Dapur\",\"CCTV\",\"Pengurus Kos\",\"Kulkas\",\"Penjaga Kos\",\"Dispenser\",\"Gazebo\",\"Rice Cooker\"]', '[\"K. Mandi Dalam\",\"Kloset Duduk\",\"Shower\",\"Air Panas\"]', '[\"Parkir Motor\",\"Parkir Mobil\",\"Parkir Sepeda\"]', 'https://i.postimg.cc/fW7DXcHb/kost-putri-nyaman.jpg', 2, '[\"Kamar maksimal dihuni oleh 1 orang\",\"Boleh pasutri\",\"Boleh bawa anak\",\"Tamu menginap di kenakan biaya\"]', '3x3 Meter;Tidak Termasuk Listrik'),
(85, 65, 'Nunukan Tim., Kec. Nunukan, Kabupaten Nunukan, Kalimantan Utara 77482', 'kost-bujang', '2022-12-17', '16:08:26', 1, 'Nunukan', 500000, NULL, '[\"1\",\"3\",\"6\",\"12\"]', 'KOS Bujang paling oke dahh', 'Campur', '[\"Kasur\",\"Bantal\",\"Guling\"]', '[\"Wifi\",\"Pengurus Kos\",\"Kulkas\"]', '[\"K. Mandi Luar\",\"Kloset Jongkok\",\"Cermin\"]', '[\"Parkir Motor\",\"Parkir Sepeda\"]', 'https://i.postimg.cc/sxLc1QZC/1.jpg', -1, '[\"Kamar maksimal dihuni oleh 2 orang\",\"Boleh pasutri\",\"Boleh bawa anak\",\"Tamu menginap dikenakan biaya\"]', '4x4 Meter;Termasuk Listrik'),
(86, 65, 'Nunukan Tim., Kec. Nunukan, Kabupaten Nunukan, Kalimantan Utara 77482', 'kost-campur-paling-joss', '2022-12-17', '15:44:25', 1, 'Nunukan', 500000, NULL, '[\"1\",\"3\",\"6\",\"12\"]', 'kost campur paling wenak', 'Campur', '[\"Kasur\",\"Lemari Baju\",\"Kursi\",\"Bantal\",\"Jendela\",\"Meja\",\"Ventilasi\",\"Kipas Angin\",\"Guling\",\"Cermin\",\"Kamar Mandi\"]', '[\"Wifi\",\"Dapur\",\"CCTV\",\"Pengurus Kos\",\"Kulkas\",\"Dispenser\"]', '[\"K. Mandi Dalam\",\"Kloset Duduk\",\"Air Panas\",\"Cermin\"]', '[\"Parkir Motor\",\"Parkir Mobil\",\"Parkir Sepeda\"]', 'https://i.postimg.cc/VvtRrs9S/a5.jpg', 3, '[\"Kamar maksimal dihuni oleh 1 orang\",\"Tidak untuk pasutri\",\"Tidak boleh bawa anak\",\"Tamu menginap dikenakan biaya\"]', '3x4 Meter;Termasuk Listrik'),
(87, 66, ' Gang Sadewa, Ngentak Gede, RT.07/RW.24, Bedog, Trihanggo, Gamping, Sleman Regency, Special Region of Yogyakarta 55291', 'kos-campur-bebas-sesukamu', '2022-12-13', '09:24:04', 1, 'Yogyakarta', 2223, NULL, '[\"1\",\"3\",\"6\"]', 'kos campur bebas sesukamu', 'Campur', '[\"Kasur\",\"Lemari Baju\",\"Ventilasi\",\"Kipas Angin\",\"Guling\",\"Cermin\"]', '[\"Laundry\",\"Dapur\",\"CCTV\"]', '[\"K. Mandi Luar\"]', '[\"Parkir Motor\",\"Parkir Sepeda\"]', 'https://i.postimg.cc/59Qpkpcx/a4.jpg', 1, '[\"Kamar maksimal dihuni oleh 1 orang\",\"Tidak untuk pasutri\",\"Tidak boleh bawa anak\",\"Tamu menginap dikenakan biaya\"]', '3x3 Meter;Termasuk Listrik'),
(88, 69, '4MP2+R55, Tim.,, Nunukan Tim., Kec. Nunukan, Kabupaten Nunukan, Kalimantan Utara 77482', 'kos-fandi', '2022-12-15', '14:33:19', 1, 'Nunukan', 500000, NULL, '[\"1\",\"3\",\"6\"]', 'kos fandi ', 'Putra', '[\"Kasur\"]', '[\"Dapur\"]', '[\"Kloset Jongkok\"]', '[\"Parkir Motor\",\"Parkir Mobil\",\"Parkir Sepeda\"]', 'https://i.postimg.cc/yYqnq9B0/a2.jpg', 4, '[\"Kamar maksimal dihuni oleh 1 orang\",\"Tidak untuk pasutri\"]', '3x3 Meter;Termasuk Listrik'),
(89, 69, '4JMX+9Q8, East, Nunukan Tim., Kec. Nunukan, Kabupaten Nunukan, Kalimantan Utara 77482', 'kost-fandi-paling-mantap-okee', '2022-12-15', '14:48:14', 1, 'Nunukan', 0, NULL, '[\"1\",\"3\",\"6\",\"12\"]', 'kost fandi paling mantap okee', 'Putri', '[\"Kasur\",\"Lemari Baju\",\"Bantal\",\"Jendela\"]', '[\"Wifi\",\"Dapur\",\"CCTV\"]', '[\"K. Mandi Dalam\",\"Kloset Duduk\"]', '[\"Parkir Motor\",\"Parkir Mobil\",\"Parkir Sepeda\"]', 'https://i.postimg.cc/K8xNj21z/a1.jpg', 4, '[\"Kamar maksimal dihuni oleh 1 orang\",\"Boleh pasutri\",\"Boleh bawa anak\",\"Tamu menginap dikenakan biaya\"]', '3x3 Meter;Termasuk Listrik'),
(90, 77, 'mamat', 'jaya-kost', '2023-05-10', '09:35:04', 1, 'Semarang', 9000000, 10, '[\"1\",\"3\"]', 'jaya kost', 'Putra', '[\"Jendela\"]', '[\"Penjaga Kos\"]', '[\"K. Mandi Luar\"]', '[\"Parkir Motor\"]', 'https://i.postimg.cc/vB4RK9yp/a9.webp', 39, '[\"Tamu menginap dikenakan biaya\"]', '3x3 Meter;Termasuk Listrik'),
(92, 77, 'soto batok bu chalim', 'bagus', '2023-05-15', '09:37:30', 1, 'Semarang', 10000, 80, '[\"1\",\"3\",\"6\",\"12\"]', 'bagus', 'Campur', '[\"Kasur\",\"Kursi\",\"Jendela\",\"Ventilasi\",\"Kipas Angin\",\"Cermin\",\"Kamar Mandi\",\"Kosongan\"]', '[\"Wifi\",\"Laundry\",\"Dapur\",\"CCTV\",\"Pengurus Kos\",\"Kulkas\",\"Penjaga Kos\",\"Dispenser\",\"Gazebo\",\"Rice Cooker\"]', '[\"K. Mandi Dalam\",\"K. Mandi Luar\",\"Kloset Duduk\",\"Kloset Jongkok\",\"Shower\",\"Air Panas\",\"Cermin\"]', '[\"Parkir Motor\",\"Parkir Mobil\",\"Parkir Sepeda\"]', 'https://i.postimg.cc/Vvtxf8dg/a7.png', 17, '[\"Kamar maksimal dihuni oleh 10 orang\",\"Boleh pasutri\",\"Boleh bawa anak\",\"Tamu menginap dikenakan biaya\"]', '10x10 Meter;Termasuk Listrik'),
(93, 77, 'seveninc', 'woke', '2023-05-26', '13:23:52', 1, 'Yogyakarta', 1000, 80, '[\"1\",\"3\",\"6\",\"12\"]', 'woke', 'Campur', '[\"Bantal\"]', '[\"Dapur\"]', '[\"K. Mandi Dalam\"]', '[\"Parkir Motor\",\"Parkir Mobil\",\"Parkir Sepeda\"]', 'https://i.postimg.cc/5tmSLkF3/3.jpg\n', 4, '[\"Boleh pasutri\",\"Boleh bawa anak\"]', '6x3 Meter;Termasuk Listrik');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_links`
--

CREATE TABLE `tbl_links` (
  `id` int(10) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `link` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sewa`
--

CREATE TABLE `tbl_sewa` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_kos` int(11) NOT NULL,
  `date` date NOT NULL,
  `tagihan` int(11) NOT NULL,
  `buktipem` varchar(32) NOT NULL,
  `status` enum('Lunas','Belum Lunas','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tempat`
--

CREATE TABLE `tbl_tempat` (
  `id_tempat` int(11) NOT NULL,
  `id_kos` int(10) NOT NULL,
  `kategoriTempat` varchar(255) NOT NULL,
  `namaTempat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_tempat`
--

INSERT INTO `tbl_tempat` (`id_tempat`, `id_kos`, `kategoriTempat`, `namaTempat`) VALUES
(66, 1, 'ATM', 'ATM BCA'),
(67, 1, 'MASJID', 'Masjid Al_AZIZ'),
(69, 1, 'UNIVERSITAS', 'UTDI (Universitas Digital Indonesia)'),
(70, 3, 'RUMAH MAKAN', 'Warung ibu Ida'),
(71, 3, 'UNIVERSITAS', 'Stimik Akakom'),
(72, 2, 'MASJID', 'Masjid Al-Huda'),
(73, 2, 'ATM', 'ATM Mandiri'),
(74, 5, 'MASJID', 'Masjid An-nur'),
(75, 10, 'RUMAH MAKAN', 'Warung ibu nana'),
(84, 1, 'RUMAH MAKAN', 'Warung Mas Dwi'),
(85, 1, 'RUMAH SAKIT', 'RSUD'),
(86, 1, 'TEMPAT BELANJA', 'INDOMARET'),
(87, 1, 'STASIUN KERETA', 'LEMPUYANGAN'),
(98, 87, 'RUMAH MAKAN', 'Rumah Makan Padang'),
(99, 90, 'MASJID', 'masjidil haram');

-- --------------------------------------------------------

--
-- Table structure for table `tb_request`
--

CREATE TABLE `tb_request` (
  `id_request` int(11) NOT NULL,
  `nama_depan` varchar(100) NOT NULL,
  `nama_belakang` varchar(100) NOT NULL,
  `info_hub` varchar(100) NOT NULL,
  `no_hp` varchar(100) NOT NULL,
  `nama_properti` varchar(100) NOT NULL,
  `url_properti` varchar(100) NOT NULL,
  `tipe_kos` varchar(100) NOT NULL,
  `harga` varchar(100) NOT NULL,
  `provinsi` varchar(100) NOT NULL,
  `kabupaten_kota` varchar(100) NOT NULL,
  `kecamatan` varchar(100) NOT NULL,
  `kelurahan` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `jumlah_kamar` varchar(100) NOT NULL,
  `is_active` int(1) NOT NULL,
  `id_user_request` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_request`
--

INSERT INTO `tb_request` (`id_request`, `nama_depan`, `nama_belakang`, `info_hub`, `no_hp`, `nama_properti`, `url_properti`, `tipe_kos`, `harga`, `provinsi`, `kabupaten_kota`, `kecamatan`, `kelurahan`, `alamat`, `jumlah_kamar`, `is_active`, `id_user_request`) VALUES
(4, 'Arkan', 'Altair', 'Whatsapp', '081234578979', 'Wisma Arya 3', 'https://drive.google.com/drive/u/1/folders/1G44ZC66cpKFYPLkOnJJVDerWx3i9W4ty', 'Kost Putra', '1.000.000/bulan', 'Riau', 'Pekanbaru', 'Rumbai', 'Argowisata', 'Jalan Rumbai', '4', 1, 0),
(5, 'Glocha', 'Rakabumi', 'No Handphone', '081234578965', 'Kost Broklyn ', 'https://drive.google.com/drive/u/1/folders/1G44ZC66cpKFYPLkOnJJVDerWx3i9W4ty', 'Kost Putra', '1.500.000/bulan', 'Riau', 'Pekanbaru', 'Rumbai', 'Argowisata', 'Jalan Rumbai', '6', 1, 0),
(20, 'yoga ', 'okee', 'Whatsapp', '0817656676', 'kos bujang paling oke', '', 'Putri', '500000', 'Jawa Timur', 'Nunukan', 'Nunukan', 'Nunukan tengah', 'Nunukan Tim., Kec. Nunukan, Kabupaten Nunukan, Kalimantan Utara 77482', '1', 1, 65),
(24, 'johan', 'ajalah', 'Whatsapp', '081227753901', 'kos bujang paling oke', '', 'Campur', '500000', 'Jawa Timur', 'Nunukan', 'Nunukan', 'Nunukan tengah', 'Nunukan Tim., Kec. Nunukan, Kabupaten Nunukan, Kalimantan Utara 77482', '1', 1, 66),
(25, 'fandi', 'abdillah', 'Whatsapp', '0912277539019', 'kos fandi mantap', '', 'Putra', '400000', 'Lampung', 'Nunukan', 'Nunukan', 'Nunukan tengah', 'Nunukan Tim., Kec. Nunukan, Kabupaten Nunukan, Kalimantan Utara 77482', '3', 1, 69),
(26, 'Bagong', 'Sujiadi', 'No Handphone', '085335055043', 'Kost Bapak Bagong', '', 'Campur', '650.000', 'DI Yogyakarta', 'Bantul', 'Banguntapan', 'maju jaya', 'jalan simpang 7', '1', 1, 72),
(27, 'bagus', 'bagus', 'Whatsapp', '000', 'property ', '', 'Campur', '900000000', 'Jawa Tengah', 'semarang', 'semarang', 'semarang', 'semarang', '1000', 1, 77),
(28, 'bagus', 'dias', 'Whatsapp', '01', 'ygy esport', '', 'Putra', '100000000', 'Jawa Tengah', 'semarang', 'semarang', '1', 'semarang salatiga', '999', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_role`
--

CREATE TABLE `tb_role` (
  `id_role` int(11) NOT NULL,
  `nama_role` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_role`
--

INSERT INTO `tb_role` (`id_role`, `nama_role`) VALUES
(1, 'Admin'),
(2, 'Customer'),
(3, 'Owner'),
(4, 'Super Admin');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `foto` varchar(200) NOT NULL,
  `jk` enum('Pria','Wanita') NOT NULL,
  `email` varchar(30) NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `alamat` text NOT NULL,
  `id_role` int(11) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `username`, `password`, `fullname`, `foto`, `jk`, `email`, `no_hp`, `alamat`, `id_role`, `is_active`) VALUES
(1, 'bagus11@gmail.com', 'd2817245f80a874fbad9e557febcf4d8', 'mbagusdiass', 'default_pria.png', 'Pria', 'bagus11@gmail.com', '0000', 'kab semarang', 4, 1),
(2, 'admin', 'fcea920f7412b5da7be0cf42b8c93759', 'admin', 'pria.png', 'Pria', 'admin@gmail.com', '1010', 'admin', 1, 0),
(3, 'fandi', 'e10adc3949ba59abbe56e057f20f883e', 'alvian ahja wijaya', 'pria.png', 'Pria', 'alvian@gmail.com', '085222549953', 'Jl.Pagarsih Gg.Holili No.120 Blok 87 RT02/RW09', 2, 0),
(6, 'kurniawan', 'e10adc3949ba59abbe56e057f20f883e', 'Kurniawan Aditya', 'pria.png', 'Pria', 'kurniawan@gmail.com', '08752563663', 'Jl.Raya Cibeurem No.19', 2, 0),
(7, 'nawan', 'e10adc3949ba59abbe56e057f20f883e', 'Nawan Tutu Syah Lampah', 'pria.png', 'Pria', 'nawan@gmail.com', '085322145896', 'Jl. Raya Cimahi No.90', 2, 0),
(8, 'rudy', 'e10adc3949ba59abbe56e057f20f883e', 'Rudy Setiawan', 'pria.png', 'Pria', 'rudy@gmail.com', '085369985555', 'Jl.Pasir Impun No.90', 2, 0),
(9, 'firman', 'e10adc3949ba59abbe56e057f20f883e', 'Firman Alhadiansyah', 'pria.png', 'Pria', 'firman@gmail.com', '085244215511', 'Jl. Ir.Hj Juanda No.11', 2, 0),
(10, 'tantan', 'e10adc3949ba59abbe56e057f20f883e', 'Tantan Faturahman', 'pria.png', 'Pria', 'tantan@gmail.com', '08125648974', 'Jl. Gede Bangkong No.12', 2, 0),
(11, 'azzi', 'e10adc3949ba59abbe56e057f20f883e', 'Muhammad Azzi Alfurqon', 'pria.png', 'Pria', 'azzi@gmail.com', '082133669988', 'Jl. Dipatiukur No.67', 2, 0),
(12, 'reza', 'e10adc3949ba59abbe56e057f20f883e', 'Reza Yogi Andria', 'pria.png', 'Pria', 'reza@gmail.com', '0228956938', 'Jl. Soekarno Hatta No.90', 2, 0),
(13, 'angga', 'e10adc3949ba59abbe56e057f20f883e', 'Rangga Jaya Utama', 'pria.png', 'Pria', 'rangga@gmail.com', '08526335214', 'Jl. Pasirkoja No.90', 2, 0),
(14, 'yuliani', 'e10adc3949ba59abbe56e057f20f883e', 'Yuliani Putri Utama', 'wanita.png', 'Wanita', 'yuliani@gmail.com', '087758521245', 'Jl.Holis No.87', 2, 0),
(15, 'rahma', 'e10adc3949ba59abbe56e057f20f883e', 'Rahma Aulia', 'wanita.png', 'Wanita', 'rahma@gmail.com', '085245696963', 'Jl. Peta No.88', 2, 0),
(16, 'anie', '14e1b600b1fd579f47433b88e8d85291', 'Ani Yani', 'wanita.png', 'Wanita', 'ani@gmail.com', '085254698988', 'Jl.Sereh No.78', 2, 0),
(17, 'rani', '14e1b600b1fd579f47433b88e8d85291', 'Rani Maharani', 'wanita.png', 'Wanita', 'rani@gmail.com', '0852633562312', 'Jl. Jamika No.4', 2, 0),
(18, 'Andika', '14e1b600b1fd579f47433b88e8d85291', 'Andika Ramdani', 'pria.png', 'Pria', 'Dika@gmail.com', '085245658878', 'Jl. Sukamulya No.2', 2, 0),
(19, 'Kartika', 'e10adc3949ba59abbe56e057f20f883e', 'Kartika Sari', 'wanita.png', 'Wanita', 'kartika@gmail.com', '089563652145', 'Jl. Sunda No.22', 2, 0),
(20, 'ariska', 'e10adc3949ba59abbe56e057f20f883e', 'Sri Ariska', 'wanita.png', 'Wanita', 'ariska@gmail.com', '085622325645', 'Jl. Ciroyom', 2, 0),
(21, 'yayu', 'e10adc3949ba59abbe56e057f20f883e', 'Yayu', 'wanita.png', 'Wanita', 'yayu@gmail.com', '085698974563', 'Jl. Burangrang No.82', 2, 0),
(22, 'kezia', '14e1b600b1fd579f47433b88e8d85291', 'Kezia Andria', 'wanita.png', 'Wanita', 'kezia@gmail.com', '08545689758', 'Jl. Buah Batu No.34', 2, 0),
(23, 'Nurhikmah', 'e10adc3949ba59abbe56e057f20f883e', 'Nurhikmah', 'wanita.png', 'Wanita', 'nur@gmail.com', '0856478945', 'Jl. Dipatiukur No.56', 2, 0),
(24, 'tian', '25d55ad283aa400af464c76d713c07ad', 'Tian Bagja ', 'pria.png', 'Pria', 'tian@gmail.com', '087854446958', 'Jl. Pagarsih', 4, 0),
(25, 'test', 'e10adc3949ba59abbe56e057f20f883e', 'testest', 'pria.png', 'Pria', 'test@gmail.com', '087857846', 'Jl.Pagarsih', 3, 0),
(26, 'claire', '25d55ad283aa400af464c76d713c07ad', 'claire', '	 wanita.png', 'Wanita', 'claire@gmail.com', '089786567899', 'Malang', 1, 0),
(28, 'keshi', 'e10adc3949ba59abbe56e057f20f883e', 'keshi', 'pria.png', 'Pria', 'keshi@gmail.com', '089987654555', 'Surabaya', 2, 0),
(29, 'keshi', 'e10adc3949ba59abbe56e057f20f883e', 'keshi', 'pria.png', 'Pria', 'keshi@gmail.com', '089987654555', 'Surabaya', 2, 0),
(30, 'keshi', '14e1b600b1fd579f47433b88e8d85291', 'keshi', 'pria.png', 'Pria', 'keshi@gmail.com', '089987654555', 'Surabaya', 3, 0),
(32, 'ashley', '14e1b600b1fd579f47433b88e8d85291', 'ashley choi', '	 wanita.png', 'Wanita', 'ashley@gmail.com', '089763345234', 'Yogyakarta', 2, 0),
(36, 'max', 'e10adc3949ba59abbe56e057f20f883e', 'max', 'wanita.png', 'Wanita', 'max@gmail.com', '089786567899', 'Arcadia Bay', 2, 0),
(37, 'chloe', 'e10adc3949ba59abbe56e057f20f883e', 'chloe', '	 wanita.png', 'Wanita', 'chloe@gmail.com', '089767546345', 'Arcadia Bay', 2, 0),
(38, 'rachel', 'e10adc3949ba59abbe56e057f20f883e', 'rachel', 'wanita.png', 'Wanita', 'rachel@gmail.com', '089786567899', 'Arcadia Bay', 3, 0),
(39, 'bea', 'e10adc3949ba59abbe56e057f20f883e', 'beabadobee', '	 wanita.png', 'Wanita', 'bea@gmail.com', '089786567899', 'Surabaya', 2, 0),
(40, 'conan', 'e10adc3949ba59abbe56e057f20f883e', 'conan', 'pria.png', 'Pria', 'conan@gmail.com', '089786567444', 'Jakarta', 2, 0),
(41, 'ash', 'e10adc3949ba59abbe56e057f20f883e', 'ash island', 'pria.png', 'Pria', 'ash@gmail.com', '08975456777', 'Chicago', 2, 0),
(42, 'jeff', 'e10adc3949ba59abbe56e057f20f883e', 'jeff benard', 'pria.png', 'Pria', 'jeff@gmail.com', '089765678756', 'Jakarta', 3, 0),
(43, 'lucas', 'e10adc3949ba59abbe56e057f20f883e', 'lucas', 'pria.png', 'Pria', 'lucas@gmail.com', '089765456777', 'Atlanta', 2, 0),
(44, 'lana', 'e10adc3949ba59abbe56e057f20f883e', 'lana del rey', 'wanita.png', 'Wanita', 'lana@gmail.com', '089765435234', 'jalan janti', 2, 0),
(45, 'monica', 'e10adc3949ba59abbe56e057f20f883e', 'monica', 'wanita.png', 'Wanita', 'monica@gmail.com', '089765453676', 'Surabaya', 4, 0),
(46, 'blacksweet@gmail.com', 'b0e268aa058c057523f931943e981b23', 'andika', 'pria.png', 'Pria', 'blacksweet@gmail.com', '082278476347', 'jln nangka', 2, 0),
(47, 'cobap', 'feb5b4b10c7eb056d241967bd3b12864', 'cobap', 'kopisusu.jpg', 'Pria', 'cobap@gmail.com', '08123456789', 'Malang', 2, 0),
(49, 'enone', '95e36f1e7a3f876952a8b95f3d309d55', 'enone', 'pria.png', 'Pria', 'enone@gmail.com', '0987654321', 'Malang', 2, 0),
(51, 'Fandi', 'd41d8cd98f00b204e9800998ecf8427e', 'fandi abdillah', '	 wanita.png', 'Wanita', 'fandi44abdillah@gmail.com', '081227753901', 'jln, janti', 3, 0),
(52, 'Fandi abdillah', 'd41d8cd98f00b204e9800998ecf8427e', 'Fandi abdillah', 'wanita.png', 'Wanita', 'fandi@gmail.com', '081227765372', 'jl.janti', 2, 0),
(53, 'ariaaa', 'd41d8cd98f00b204e9800998ecf8427e', 'aria', '	 wanita.png', 'Wanita', 'aria@gmail.com', '0817656676', 'jl.janti', 2, 0),
(54, 'randi', 'd41d8cd98f00b204e9800998ecf8427e', 'randitya', 'wanita.png', 'Wanita', 'randi@gmail.com', '081245332334', 'jalan janti', 2, 0),
(55, 'gabriel', 'd41d8cd98f00b204e9800998ecf8427e', 'gabriel benya', 'wanita.png', 'Wanita', 'gabriel@gmail.com', '081234567889', 'jalan magelang', 2, 0),
(56, 'ucok', 'd41d8cd98f00b204e9800998ecf8427e', 'ucokbaba', 'pria.png', 'Pria', 'ucok@gmail.com', '09125678976', 'jalan janti', 2, 0),
(58, 'FandiAbdillah', 'b7653296ed257174b1733f58d104250a', 'Fandi abdillah', 'fandi5.jpg', 'Pria', 'fandiabdillah@gmail.com', '81227753901', 'jln, janti', 4, 0),
(59, 'alfian', 'e10adc3949ba59abbe56e057f20f883e', 'Alfian Hakim', 'pria.png', 'Pria', 'alfianhakim93@gmail.com', '0898123123', 'Kebumen', 4, 0),
(60, 'alfianmagang', 'e10adc3949ba59abbe56e057f20f883e', 'Alfian Hakim', 'pria.png', 'Pria', 'testinggg@gmail.com', '089812312757753', 'Kebumen', 3, 0),
(62, 'roger@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'roger', 'fandi6.jpg', 'Pria', 'roger@gmail.com', '098377465381', 'jl.bantul banguntapan', 4, 0),
(63, 'gain', 'e10adc3949ba59abbe56e057f20f883e', 'gain', 'Fandi_abdillah.jpg', 'Pria', 'gain@gmail.com', '09883746352', 'maroko', 1, 0),
(64, 'FandiAbdillah44', 'e10adc3949ba59abbe56e057f20f883e', 'Fandi Abdillah', 'pria.png', 'Pria', 'fandiabdillah44@gmail.com', '09873641234', 'bantul,banguntapan, gang kenanga', 2, 0),
(65, 'yogaohh', 'e10adc3949ba59abbe56e057f20f883e', 'yogaohh', 'WhatsApp_Image_2022-07-29_at_21_24_12.jpeg', 'Pria', 'yoga@gmail.com', '081256472334', 'jl.kampung jawa,nunukan,kalimantan utara', 3, 0),
(66, 'johaanlahh', 'fcea920f7412b5da7be0cf42b8c93759', 'johan ajah', 'communityIcon_1gau7nk6pwo41.png', 'Pria', 'johan@gamil.com', '0987653647', 'bannguntapan,bantul,gang knanga, yogyakarta', 3, 0),
(69, 'fandiajah', 'fcea920f7412b5da7be0cf42b8c93759', 'fandi ajah', 'pria.png', 'Pria', 'fandi123@gmail.com', '0812277539019', 'jalan magelang', 3, 0),
(70, 'Wasmad', 'cd5ec4656267a4447b23f37841262821', 'Bagus Hariyanto', 'pria.png', 'Pria', 'bagushariyanto.magangjogja@gma', '085852284068', 'Tegal', 2, 0),
(71, 'Cici', 'e5ef5fe5b2c4e8160f54d6b1b10aef8f', 'Cici Abidin', 'wanita.png', 'Wanita', 'cici@gmail.com', '085855484848', 'jogja', 2, 0),
(73, 'Bagushariyanto.18', 'e10adc3949ba59abbe56e057f20f883e', 'Bagus Hariyanto', 'pria.png', 'Pria', 'bagushariyanto.magangjogja@gma', '0857482839029', 'Tegal', 2, 0),
(74, 'Bagus', 'fcea920f7412b5da7be0cf42b8c93759', 'Bagus Hariyanto', 'pria.png', 'Pria', 'bagus.magang@gmail.com', '124567890', 'Tegal', 2, 0),
(75, 'Jokololer', 'e10adc3949ba59abbe56e057f20f883e', 'Bagus Hariyanto', 'pria.png', 'Pria', 'bagushariyanto.magangjogja@gma', '0890440305003', 'Tegal', 2, 0),
(77, 'bagus@gmail.com', '6c282280688ff96110c7a70d049926e0', 'bagus', 'monyet.jpg\r\n', 'Pria', 'bagus@gmail.com', '08123456789', 'seee', 3, 0),
(79, 'user', 'fcea920f7412b5da7be0cf42b8c93759', 'user', 'pria.png', 'Pria', 'user@gmail.com', '1234567', '123456', 3, 0),
(81, 'putri', '89e336b66e1416fe1b6cfc223a314f5b', 'putri', 'wanita.png', 'Wanita', 'putri@gmail.com', '0099899', 'Bantul, Yogyakarta', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_booking` int(20) NOT NULL,
  `id_user` int(20) NOT NULL,
  `id_Owner` int(20) NOT NULL,
  `id_kos` int(20) NOT NULL,
  `sisa_kamar` int(2) NOT NULL,
  `tgl_sewa` date NOT NULL,
  `tanggal_selesai` date DEFAULT NULL,
  `harga` int(20) NOT NULL,
  `kategori` varchar(10) NOT NULL,
  `tgl_pengembalian` date NOT NULL,
  `status_pengembalian` varchar(20) NOT NULL,
  `status_sewa` varchar(20) NOT NULL,
  `bukti_pembayaran` varchar(100) NOT NULL,
  `status_pembayaran` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_booking`, `id_user`, `id_Owner`, `id_kos`, `sisa_kamar`, `tgl_sewa`, `tanggal_selesai`, `harga`, `kategori`, `tgl_pengembalian`, `status_pengembalian`, `status_sewa`, `bukti_pembayaran`, `status_pembayaran`) VALUES
(107, 44, 3, 6, 0, '2022-10-06', '2022-11-06', 850000, '6', '0000-00-00', 'belum_kembali', 'belum_selesai', '', 0),
(108, 44, 3, 6, 0, '2022-10-06', '2023-01-06', 850000, '1', '0000-00-00', 'belum_kembali', 'belum_selesai', '', 0),
(109, 44, 3, 6, 0, '2022-10-06', '2023-01-01', 850000, '3', '0000-00-00', 'belum_kembali', 'belum_selesai', '', 0),
(110, 44, 3, 6, 0, '2022-10-06', '2023-01-02', 850000, '12', '0000-00-00', 'belum_kembali', 'belum_selesai', '', 0),
(111, 44, 3, 6, 0, '2022-10-06', '2023-01-03', 850000, '6', '0000-00-00', 'belum_kembali', 'belum_selesai', '', 0),
(112, 44, 3, 6, 0, '2022-10-06', '2023-01-04', 850000, '1', '0000-00-00', 'belum_kembali', 'belum_selesai', '', 0),
(182, 64, 65, 85, 0, '2022-12-23', '2023-06-23', 500000, '6', '0000-00-00', 'belum_kembali', 'belum_selesai', 'Gaftech31.png', 1),
(183, 64, 8, 6, 0, '2022-12-17', '2023-06-17', 850000, '6', '0000-00-00', 'belum_kembali', 'belum_selesai', '', 0),
(184, 64, 8, 6, 0, '2022-12-17', NULL, 850000, '6', '0000-00-00', 'belum_kembali', 'belum_selesai', '', 0),
(186, 64, 65, 86, 0, '2022-12-13', '2023-06-13', 500000, '6', '0000-00-00', 'belum_kembali', 'belum_selesai', '33564138986_7f7055d6b4_b.jpg', 1),
(187, 64, 65, 86, 2, '2022-12-12', '2023-06-12', 500000, '6', '0000-00-00', 'belum_kembali', 'belum_selesai', '9a557bc3-eaa4-4ac0-b73a-aa2030d72ace.jpg', 1),
(188, 64, 65, 86, 1, '2022-12-23', '2023-12-23', 500000, '12', '0000-00-00', 'belum_kembali', 'belum_selesai', 'images_(1).png', 1),
(189, 64, 65, 85, 2, '2022-12-17', '2023-03-17', 500000, '3', '0000-00-00', 'belum_kembali', 'belum_selesai', 'erd-sistem-informasi-apotek.png', 1),
(190, 64, 65, 85, 1, '2022-12-23', '2023-03-23', 500000, '3', '0000-00-00', 'belum_kembali', 'belum_selesai', '', 0),
(191, 64, 66, 87, 3, '2022-12-23', '2023-03-23', 2223, '3', '0000-00-00', 'belum_kembali', 'belum_selesai', 'Group_25.png', 1),
(192, 67, 66, 87, 2, '2022-12-21', '2023-06-21', 2223, '6', '0000-00-00', 'belum_kembali', 'belum_selesai', 'kkkk.png', 1),
(193, 67, 66, 87, 1, '2022-12-28', '2023-06-28', 2223, '6', '0000-00-00', 'belum_kembali', 'belum_selesai', '', 0),
(194, 68, 66, 87, 1, '2022-12-22', '2023-03-22', 2223, '3', '0000-00-00', 'belum_kembali', 'belum_selesai', '', 0),
(206, 71, 3, 1, 3, '2023-03-01', '2023-04-01', 500000, '1', '0000-00-00', 'belum_kembali', 'belum_selesai', '', 0),
(209, 74, 3, 1, 3, '2023-04-27', '2023-05-27', 500000, '1', '0000-00-00', 'belum_kembali', 'belum_selesai', '92a8ce42d22da898a6dd85b967c19541.png', 1),
(211, 74, 3, 1, 1, '2023-05-27', '2023-06-27', 500000, '1', '0000-00-00', 'belum_kembali', 'belum_selesai', '', 0),
(222, 1, 3, 3, 99, '2023-06-07', '2024-06-07', 600000, '12', '0000-00-00', 'belum_kembali', 'belum_selesai', 'blob.svg', 1),
(223, 1, 77, 93, 5, '2023-06-14', '2024-06-14', 1000, '12', '0000-00-00', 'belum_kembali', 'belum_selesai', '0a7ab9067a9360ead587760376032efa.jpg', 1),
(226, 1, 6, 4, 2, '2023-06-22', '2023-12-22', 900000, '6', '0000-00-00', 'belum_kembali', 'belum_selesai', 'd3bf174528bfe1c59f7142896420a061.jpg', 0),
(227, 81, 3, 2, 8, '2023-11-17', '2023-12-17', 700000, '1', '0000-00-00', 'belum_kembali', 'belum_selesai', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `unser_access_menu`
--

CREATE TABLE `unser_access_menu` (
  `id` int(11) NOT NULL,
  `id_role` int(10) NOT NULL,
  `menu_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `unser_access_menu`
--

INSERT INTO `unser_access_menu` (`id`, `id_role`, `menu_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(5, 2, 2),
(6, 3, 3),
(7, 3, 2),
(8, 4, 4),
(9, 4, 2),
(10, 4, 3),
(11, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`) VALUES
(1, 'Admin'),
(2, 'User'),
(3, 'Owner'),
(4, 'Super_Admin');

-- --------------------------------------------------------

--
-- Table structure for table `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `menu_id`, `title`, `url`, `icon`, `is_active`) VALUES
(1, 1, 'Dasbor Admin', 'admin', 'fas fa-fw fa-tachometer-alt', 1),
(2, 1, 'Permintaan Pemilik', 'admin/request_owner', 'fas fa-fw fa-file-alt', 1),
(7, 2, 'Profil Saya', 'User', 'fas fa-fw fa-user', 1),
(8, 3, 'Data Kos', 'owner', 'fas fa-fw fa-house-user', 1),
(9, 3, 'Data Sewa', 'owner/data_sewa', 'fas fa-fw fa-dollar-sign', 1),
(13, 1, 'Data Pengguna', 'admin/data_pengguna', 'fas fa-fw fa-users', 1),
(15, 4, 'Data Admin', 'super_admin/data_admin', 'fas fa-fw fa-users-cog', 1),
(16, 1, 'Data Kota', 'admin/dataKota', 'fas fa-fw fa-city', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kota`
--
ALTER TABLE `kota`
  ADD PRIMARY KEY (`id_kota`);

--
-- Indexes for table `tbl_iklan`
--
ALTER TABLE `tbl_iklan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_kos`
--
ALTER TABLE `tbl_kos`
  ADD PRIMARY KEY (`id_kos`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `tbl_links`
--
ALTER TABLE `tbl_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sewa`
--
ALTER TABLE `tbl_sewa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_kos` (`id_kos`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `tbl_tempat`
--
ALTER TABLE `tbl_tempat`
  ADD PRIMARY KEY (`id_tempat`),
  ADD KEY `id_kos` (`id_kos`) USING BTREE;

--
-- Indexes for table `tb_request`
--
ALTER TABLE `tb_request`
  ADD PRIMARY KEY (`id_request`);

--
-- Indexes for table `tb_role`
--
ALTER TABLE `tb_role`
  ADD PRIMARY KEY (`id_role`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_booking`);

--
-- Indexes for table `unser_access_menu`
--
ALTER TABLE `unser_access_menu`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kota`
--
ALTER TABLE `kota`
  MODIFY `id_kota` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_iklan`
--
ALTER TABLE `tbl_iklan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_kos`
--
ALTER TABLE `tbl_kos`
  MODIFY `id_kos` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `tbl_links`
--
ALTER TABLE `tbl_links`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_tempat`
--
ALTER TABLE `tbl_tempat`
  MODIFY `id_tempat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `tb_request`
--
ALTER TABLE `tb_request`
  MODIFY `id_request` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tb_role`
--
ALTER TABLE `tb_role`
  MODIFY `id_role` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_booking` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=228;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_kos`
--
ALTER TABLE `tbl_kos`
  ADD CONSTRAINT `tbl_kos_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `tb_user` (`id_user`);

--
-- Constraints for table `tbl_sewa`
--
ALTER TABLE `tbl_sewa`
  ADD CONSTRAINT `tbl_sewa_ibfk_1` FOREIGN KEY (`id_kos`) REFERENCES `tbl_kos` (`id_kos`),
  ADD CONSTRAINT `tbl_sewa_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `tb_user` (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
