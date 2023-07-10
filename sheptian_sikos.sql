-- phpMyAdmin SQL Dump

-- version 5.1.1

-- https://www.phpmyadmin.net/

--

-- Host: 127.0.0.1

-- Waktu pembuatan: 18 Nov 2022 pada 03.00

-- Versi server: 10.4.22-MariaDB

-- Versi PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";

START TRANSACTION;

SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */

;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */

;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */

;

/*!40101 SET NAMES utf8mb4 */

;

--

-- Database: `sheptian_sikos`

--

-- --------------------------------------------------------

--

-- Struktur dari tabel `tbl_kos`

--

CREATE TABLE
    `tbl_kos` (
        `id_kos` int(10) NOT NULL,
        `id_user` int(11) NOT NULL,
        `alamat` text NOT NULL,
        `slug` varchar(200) NOT NULL,
        `date` date NOT NULL,
        `time` time NOT NULL,
        `status` int(11) NOT NULL,
        `kota` varchar(20) NOT NULL,
        `harga` int(11) NOT NULL,
        `kategori` varchar(100) NOT NULL,
        `nama` varchar(60) NOT NULL,
        `tipe` enum('Putri', 'Putra', 'Campur') NOT NULL,
        `fasilitas` varchar(200) NOT NULL,
        `fasilitas_umum` longtext NOT NULL,
        `fasilitas_kamar_mandi` longtext NOT NULL,
        `fasilitas_parkir` longtext NOT NULL,
        `image_header` varchar(200) NOT NULL,
        `sisa_kamar` int(11) NOT NULL,
        `peraturan_kamar` longtext NOT NULL,
        `spesifikasi_kamar` longtext NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = latin1;

--

-- Dumping data untuk tabel `tbl_kos`

--

INSERT INTO
    `tbl_kos` (
        `id_kos`,
        `id_user`,
        `alamat`,
        `slug`,
        `date`,
        `time`,
        `status`,
        `kota`,
        `harga`,
        `kategori`,
        `nama`,
        `tipe`,
        `fasilitas`,
        `fasilitas_umum`,
        `fasilitas_kamar_mandi`,
        `fasilitas_parkir`,
        `image_header`,
        `sisa_kamar`,
        `peraturan_kamar`,
        `spesifikasi_kamar`
    )
VALUES (
        1,
        3,
        'Jl.Raya Paledang Bandung No.33',
        'Kost-BR-46-Pasteur-Bandung',
        '2022-11-16',
        '07:57:55',
        1,
        'Yogyakarta',
        500000,
        '[\"1\",\"3\",\"6\"]',
        'Kost BR 46 Pasteur Jawa Barat',
        'Campur',
        '[\"Kursi\",\"Bantal\",\"Jendela\",\"Meja\",\"Ventilasi\",\"Kipas Angin\",\"Guling\",\"Cermin\",\"Kamar Mandi\"]',
        '[\"Dapur\",\"CCTV\",\"Pengurus Kos\",\"Kulkas\",\"Penjaga Kos\",\"Dispenser\",\"Gazebo\"]',
        '[\"K. Mandi Dalam\",\"K. Mandi Luar\",\"Kloset Duduk\",\"Kloset Jongkok\",\"Shower\",\"Air Panas\",\"Cermin\"]',
        '[\"Parkir Motor\",\"Parkir Mobil\"]',
        'kos13.jpg',
        3,
        '[\"Kamar maksimal dihuni oleh 1 orang\",\"Boleh pasutri\",\"Boleh bawa anak\",\"Tamu menginap dikenakan biaya\"]',
        '5x3 Meter;Termasuk Listrik'
    ), (
        2,
        3,
        'Jl. Permai No.17 Cigadung Cibeunying Kaler Kota Bandung ',
        'Kost-Cibeunying-Permai',
        '2022-11-15',
        '09:21:29',
        1,
        'Bandung',
        700000,
        '[\"1\",\"3\",\"6\",\"12\"]',
        'Kost Cibeunying Permai',
        'Putri',
        '[\"Kasur\",\"Lemari Baju\",\"Kursi\",\"Bantal\",\"Jendela\",\"Meja\",\"Kamar Mandi\"]',
        '[\"Wifi\",\"Laundry\",\"Dapur\",\"CCTV\",\"Pengurus Kos\",\"Kulkas\",\"Penjaga Kos\",\"Dispenser\",\"Gazebo\",\"Rice Cooker\"]',
        '[\"K. Mandi Dalam\",\"Kloset Duduk\",\"Shower\",\"Air Panas\"]',
        '[\"Parkir Motor\",\"Parkir Mobil\",\"Parkir Sepeda\"]',
        'kos2.jpg',
        0,
        '[\"Kamar maksimal dihuni oleh 1 orang\",\"Boleh pasutri\",\"Boleh bawa anak\",\"Tamu menginap dikenakan biaya\"]',
        '3x3 Meter;Tidak Termasuk Listrik'
    ), (
        3,
        3,
        'Jl.Anjani Sukasari Bandung No.90',
        'guest-house-anjani-sukasari-bandung',
        '2022-10-10',
        '10:58:52',
        1,
        'Bandung',
        600000,
        '[\"1\",\"12\"]',
        'Guest House Anjani Sukasari',
        'Putra',
        '[\"Kasur\",\"Lemari Baju\",\"Kursi\",\"Bantal\",\"Jendela\"]',
        '[\"Wifi\",\"Laundry\",\"Dapur\",\"CCTV\",\"Pengurus Kos\",\"Kulkas\",\"Penjaga Kos\",\"Dispenser\",\"Gazebo\",\"Rice Cooker\"]',
        '[\"K. Mandi Dalam\",\"Kloset Duduk\",\"Shower\",\"Air Panas\"]',
        '[\"Parkir Motor\",\"Parkir Mobil\",\"Parkir Sepeda\"]',
        'kos12.jpg',
        0,
        '[\"Kamar maksimal dihuni oleh 1 orang\",\"Boleh pasutri\",\"Boleh bawa anak\",\"Tamu menginap di kenakan biaya\"]',
        '3x3 Meter;Tidak Termasuk Listrik'
    ), (
        4,
        6,
        'Jl.Cidadap No.1',
        'kost-platinum-cidadap-bandung',
        '2022-09-05',
        '13:39:59',
        1,
        'Bandung',
        900000,
        '[\"1\",\"3\",\"6\",\"12\"]',
        'Kost Platinum Cidadap',
        'Putra',
        '[\"Kasur\",\"Lemari Baju\",\"Kursi\"]',
        '[\"Wifi\",\"Laundry\",\"Dapur\",\"CCTV\",\"Pengurus Kos\",\"Kulkas\",\"Penjaga Kos\",\"Dispenser\",\"Gazebo\",\"Rice Cooker\"]',
        '[\"K. Mandi Dalam\",\"Kloset Duduk\",\"Shower\",\"Air Panas\"]',
        '[\"Parkir Motor\",\"Parkir Mobil\",\"Parkir Sepeda\"]',
        'kos14.jpg',
        3,
        '[\"Kamar maksimal dihuni oleh 1 orang\",\"Boleh pasutri\",\"Boleh bawa anak\",\"Tamu menginap di kenakan biaya\"]',
        '3x3 Meter;Tidak Termasuk Listrik'
    ), (
        5,
        7,
        'Jl. Cibiru No.900',
        'kost-bowie-cibiru-bandung',
        '2022-10-10',
        '13:05:54',
        1,
        'Surabaya',
        1000000,
        '[\"1\",\"3\",\"6\",\"12\"]',
        'Kost Bowie Cibiru',
        'Putra',
        '[\"Bantal\",\"Jendela\",\"Meja\"]',
        '[\"Wifi\",\"Laundry\",\"Dapur\",\"CCTV\",\"Pengurus Kos\",\"Kulkas\",\"Penjaga Kos\",\"Dispenser\",\"Gazebo\",\"Rice Cooker\"]',
        '[\"K. Mandi Dalam\",\"Kloset Duduk\",\"Shower\",\"Air Panas\"]',
        '[\"Parkir Motor\",\"Parkir Mobil\",\"Parkir Sepeda\"]',
        '2.jpg',
        5,
        '[\"Kamar maksimal dihuni oleh 1 orang\",\"Boleh pasutri\",\"Boleh bawa anak\",\"Tamu menginap di kenakan biaya\"]',
        '3x3 Meter;Tidak Termasuk Listrik'
    ), (
        6,
        8,
        'Jl. Sukaluyu No.222',
        'kost-sapujagad-2-sukaluyu-bandung',
        '2022-09-05',
        '13:34:19',
        1,
        'Surabaya',
        850000,
        '[\"1\",\"3\",\"6\",\"12\"]',
        'Kost Sapujagad 2 Sukaluyu',
        'Putra',
        '[\"Kasur\",\"Lemari Baju\",\"Kursi\",\"Meja\",\"Jendela\",\"Kamar Mandi\"]',
        '[\"Wifi\",\"Laundry\",\"Dapur\",\"CCTV\",\"Pengurus Kos\",\"Kulkas\",\"Penjaga Kos\",\"Dispenser\",\"Gazebo\",\"Rice Cooker\"]',
        '[\"K. Mandi Dalam\",\"Kloset Duduk\",\"Shower\",\"Air Panas\"]',
        '[\"Parkir Motor\",\"Parkir Mobil\",\"Parkir Sepeda\"]',
        '3.jpg',
        1,
        '[\"Kamar maksimal dihuni oleh 1 orang\",\"Boleh pasutri\",\"Boleh bawa anak\",\"Tamu menginap di kenakan biaya\"]',
        '3x3 Meter;Tidak Termasuk Listrik'
    ), (
        7,
        9,
        'Jl. Wisma No.88',
        'kost-wisma-lentera-bandung',
        '2022-09-05',
        '13:34:29',
        1,
        'Bandung',
        1100000,
        '[\"1\",\"3\",\"6\",\"12\"]',
        'Kost Wisma Lentera',
        'Putra',
        '[\"Lemari Baju\",\"Kursi\",\"Meja\"]',
        '[\"Wifi\",\"Laundry\",\"Dapur\",\"CCTV\",\"Pengurus Kos\",\"Kulkas\",\"Penjaga Kos\",\"Dispenser\",\"Gazebo\",\"Rice Cooker\"]',
        '[\"K. Mandi Dalam\",\"Kloset Duduk\",\"Shower\",\"Air Panas\"]',
        '[\"Parkir Motor\",\"Parkir Mobil\",\"Parkir Sepeda\"]',
        '4.jpg',
        2,
        '[\"Kamar maksimal dihuni oleh 1 orang\",\"Boleh pasutri\",\"Boleh bawa anak\",\"Tamu menginap di kenakan biaya\"]',
        '3x3 Meter;Tidak Termasuk Listrik'
    ), (
        8,
        10,
        'Jl. Rancasari No.88',
        'kost-pondok-mars-barat-iii-no-8-tipe-b-rancasari-bandung',
        '2022-09-05',
        '13:34:37',
        1,
        'Yogyakarta',
        1500000,
        '[\"1\",\"3\",\"6\",\"12\"]',
        'Kost Pondok Mars Barat III No. 8 Tipe B Rancasari',
        'Putra',
        '[\"Kipas Angin\",\"Guling\",\"Cermin\"]',
        '[\"Wifi\",\"Laundry\",\"Dapur\",\"CCTV\",\"Pengurus Kos\",\"Kulkas\",\"Penjaga Kos\",\"Dispenser\",\"Gazebo\",\"Rice Cooker\"]',
        '[\"K. Mandi Dalam\",\"Kloset Duduk\",\"Shower\",\"Air Panas\"]',
        '[\"Parkir Motor\",\"Parkir Mobil\",\"Parkir Sepeda\"]',
        '6.JPG',
        2,
        '[\"Kamar maksimal dihuni oleh 1 orang\",\"Boleh pasutri\",\"Boleh bawa anak\",\"Tamu menginap di kenakan biaya\"]',
        '3x3 Meter;Tidak Termasuk Listrik'
    ), (
        9,
        11,
        'Jl. Subur Coblong No.21',
        'kost-sadang-subur-i-coblong-bandung',
        '2022-09-05',
        '13:34:45',
        1,
        'Yogyakarta',
        550000,
        '[\"1\",\"3\",\"6\",\"12\"]',
        'Kost Sadang Subur I Coblong',
        'Putra',
        '[\"Jendela\",\"Kipas Angin\",\"Bantal\",\"Cermin\"]',
        '[\"Wifi\",\"Laundry\",\"Dapur\",\"CCTV\",\"Pengurus Kos\",\"Kulkas\",\"Penjaga Kos\",\"Dispenser\",\"Gazebo\",\"Rice Cooker\"]',
        '[\"K. Mandi Dalam\",\"Kloset Duduk\",\"Shower\",\"Air Panas\"]',
        '[\"Parkir Motor\",\"Parkir Mobil\",\"Parkir Sepeda\"]',
        '7.jpg',
        4,
        '[\"Kamar maksimal dihuni oleh 1 orang\",\"Boleh pasutri\",\"Boleh bawa anak\",\"Tamu menginap di kenakan biaya\"]',
        '3x3 Meter;Tidak Termasuk Listrik'
    ), (
        10,
        12,
        'Jl. Cibiru No.21',
        'kost-pondok-jati-cibiru-bandung',
        '2022-11-07',
        '17:07:34',
        1,
        'Surabaya',
        750000,
        'null',
        'Kost Pondok Jati Cibiru ',
        'Putra',
        'null',
        'null',
        'null',
        'null',
        '8.jpg',
        4,
        'null',
        '3x3 Meter;'
    ), (
        11,
        13,
        'Jl. Sukasari No.121',
        'kost-niji-house-sukasari-bandung',
        '2022-09-05',
        '13:35:03',
        1,
        'Jakarta',
        500000,
        '[\"1\",\"3\",\"6\",\"12\"]',
        'Kost Niji House Sukasari',
        'Putra',
        '[\"Lemari Baju\",\"Kursi\",\"Bantal\"]',
        '[\"Wifi\",\"Laundry\",\"Dapur\",\"CCTV\",\"Pengurus Kos\",\"Kulkas\",\"Penjaga Kos\",\"Dispenser\",\"Gazebo\",\"Rice Cooker\"]',
        '[\"K. Mandi Dalam\",\"Kloset Duduk\",\"Shower\",\"Air Panas\"]',
        '[\"Parkir Motor\",\"Parkir Mobil\",\"Parkir Sepeda\"]',
        '9.JPG',
        3,
        '[\"Kamar maksimal dihuni oleh 1 orang\",\"Boleh pasutri\",\"Boleh bawa anak\",\"Tamu menginap di kenakan biaya\"]',
        '3x3 Meter;Tidak Termasuk Listrik'
    ), (
        12,
        14,
        'Jl. Cibeurem No.812',
        'kost-nyaman-cibeurem-bandung',
        '2022-09-05',
        '13:36:14',
        1,
        'Jakarta',
        650000,
        '[\"1\",\"3\",\"6\",\"12\"]',
        'Kost Nyaman Cibeurem',
        'Putra',
        '[\"Cermin\",\"Kamar Mandi\"]',
        '[\"Wifi\",\"Laundry\",\"Dapur\",\"CCTV\",\"Pengurus Kos\",\"Kulkas\",\"Penjaga Kos\",\"Dispenser\",\"Gazebo\",\"Rice Cooker\"]',
        '[\"K. Mandi Dalam\",\"Kloset Duduk\",\"Shower\",\"Air Panas\"]',
        '[\"Parkir Motor\",\"Parkir Mobil\",\"Parkir Sepeda\"]',
        '10.jpg',
        1,
        '[\"Kamar maksimal dihuni oleh 1 orang\",\"Boleh pasutri\",\"Boleh bawa anak\",\"Tamu menginap di kenakan biaya\"]',
        '3x3 Meter;Tidak Termasuk Listrik'
    ), (
        13,
        15,
        'Jl. Peta 90',
        'kost-amara-residence-bandung',
        '2022-09-05',
        '13:36:26',
        1,
        'Jakarta',
        450000,
        '[\"1\",\"3\",\"6\",\"12\"]',
        'Kost Amara Residence',
        'Putra',
        '[\"Ventilasi\",\"Kipas Angin\",\"Kasur\",\"Meja\",\"Kursi\",\"Kamar Mandi\"]',
        '[\"Wifi\",\"Laundry\",\"Dapur\",\"CCTV\",\"Pengurus Kos\",\"Kulkas\",\"Penjaga Kos\",\"Dispenser\",\"Gazebo\",\"Rice Cooker\"]',
        '[\"K. Mandi Dalam\",\"Kloset Duduk\",\"Shower\",\"Air Panas\"]',
        '[\"Parkir Motor\",\"Parkir Mobil\",\"Parkir Sepeda\"]',
        '11.jpg',
        0,
        '[\"Kamar maksimal dihuni oleh 1 orang\",\"Boleh pasutri\",\"Boleh bawa anak\",\"Tamu menginap di kenakan biaya\"]',
        '3x3 Meter;Tidak Termasuk Listrik'
    ), (
        14,
        16,
        'Jl. Tubagus Ismanil No.90',
        'kost-tipe-a-tubagus-ismail-depan-no-90-bandung',
        '2022-09-05',
        '13:36:48',
        1,
        'Surabaya',
        950000,
        '[\"1\",\"3\",\"6\",\"12\"]',
        'Kost Tipe A Tubagus Ismail Depan No. 90',
        'Putra',
        '[\"Bantal\",\"Jendela\",\"Meja\"]',
        '[\"Wifi\",\"Laundry\",\"Dapur\",\"CCTV\",\"Pengurus Kos\",\"Kulkas\",\"Penjaga Kos\",\"Dispenser\",\"Gazebo\",\"Rice Cooker\"]',
        '[\"K. Mandi Dalam\",\"Kloset Duduk\",\"Shower\",\"Air Panas\"]',
        '[\"Parkir Motor\",\"Parkir Mobil\",\"Parkir Sepeda\"]',
        '12.jpg',
        1,
        '[\"Kamar maksimal dihuni oleh 1 orang\",\"Boleh pasutri\",\"Boleh bawa anak\",\"Tamu menginap di kenakan biaya\"]',
        '3x3 Meter;Tidak Termasuk Listrik'
    ), (
        15,
        17,
        'Jl. Kosambi No.18',
        'kost-wartawan-18-bandung',
        '2022-09-05',
        '13:37:01',
        1,
        'Jakarta',
        1600000,
        '[\"1\",\"3\",\"6\",\"12\"]',
        'Kost wartawan 18',
        'Putra',
        '[\"Jendela\",\"Meja\",\"Kursi\",\"Ventilasi\",\"Kipas Angin\",\"Kasur\"]',
        '[\"Wifi\",\"Laundry\",\"Dapur\",\"CCTV\",\"Pengurus Kos\",\"Kulkas\",\"Penjaga Kos\",\"Dispenser\",\"Gazebo\",\"Rice Cooker\"]',
        '[\"K. Mandi Dalam\",\"Kloset Duduk\",\"Shower\",\"Air Panas\"]',
        '[\"Parkir Motor\",\"Parkir Mobil\",\"Parkir Sepeda\"]',
        '13.jpg',
        1,
        '[\"Kamar maksimal dihuni oleh 1 orang\",\"Boleh pasutri\",\"Boleh bawa anak\",\"Tamu menginap di kenakan biaya\"]',
        '3x3 Meter;Tidak Termasuk Listrik'
    ), (
        16,
        18,
        'Jl. Ciheulang No.235',
        'kost-terusan-ciheulang-no-235-b-type-a-coblong-bandung',
        '2022-09-05',
        '13:37:12',
        1,
        'Jakarta',
        1700000,
        '[\"1\",\"3\",\"6\",\"12\"]',
        'Kost Terusan Ciheulang No. 235 B Type A Coblong',
        'Putra',
        '[\"Meja\",\"Ventilasi\",\"Kipas Angin\",\"Guling\",\"Bantal\"]',
        '[\"Wifi\",\"Laundry\",\"Dapur\",\"CCTV\",\"Pengurus Kos\",\"Kulkas\",\"Penjaga Kos\",\"Dispenser\",\"Gazebo\",\"Rice Cooker\"]',
        '[\"K. Mandi Dalam\",\"Kloset Duduk\",\"Shower\",\"Air Panas\"]',
        '[\"Parkir Motor\",\"Parkir Mobil\",\"Parkir Sepeda\"]',
        '14.jpg',
        2,
        '[\"Kamar maksimal dihuni oleh 1 orang\",\"Boleh pasutri\",\"Boleh bawa anak\",\"Tamu menginap di kenakan biaya\"]',
        '3x3 Meter;Tidak Termasuk Listrik'
    ), (
        17,
        19,
        'Jl. Antanan 1',
        'kost-antanan-1-bandung',
        '2022-09-05',
        '13:37:21',
        1,
        'Yogyakarta',
        1300000,
        '[\"1\",\"3\",\"6\",\"12\"]',
        'Kost Antanan 1',
        'Putra',
        '[\"Jendela\",\"Meja\",\"Kursi\",\"Ventilasi\",\"Kasur\",\"Bantal\",\"Guling\"]',
        '[\"Wifi\",\"Laundry\",\"Dapur\",\"CCTV\",\"Pengurus Kos\",\"Kulkas\",\"Penjaga Kos\",\"Dispenser\",\"Gazebo\",\"Rice Cooker\"]',
        '[\"K. Mandi Dalam\",\"Kloset Duduk\",\"Shower\",\"Air Panas\"]',
        '[\"Parkir Motor\",\"Parkir Mobil\",\"Parkir Sepeda\"]',
        '15.jpg',
        1,
        '[\"Kamar maksimal dihuni oleh 1 orang\",\"Boleh pasutri\",\"Boleh bawa anak\",\"Tamu menginap di kenakan biaya\"]',
        '3x3 Meter;Tidak Termasuk Listrik'
    ), (
        18,
        20,
        'Jl. Dago No.87',
        'kost-dan-paviliun-dago-cintawangi-bandung',
        '2022-09-05',
        '13:37:30',
        1,
        'Yogyakarta',
        1050000,
        '[\"1\",\"3\",\"6\",\"12\"]',
        'Kost dan Paviliun Dago Cintawangi',
        'Putra',
        '[\"Lemari Baju\",\"Kursi\",\"Kasur\",\"Bantal\",\"Guling\",\"Jendela\"]',
        '[\"Wifi\",\"Laundry\",\"Dapur\",\"CCTV\",\"Pengurus Kos\",\"Kulkas\",\"Penjaga Kos\",\"Dispenser\",\"Gazebo\",\"Rice Cooker\"]',
        '[\"K. Mandi Dalam\",\"Kloset Duduk\",\"Shower\",\"Air Panas\"]',
        '[\"Parkir Motor\",\"Parkir Mobil\",\"Parkir Sepeda\"]',
        '16.jpg',
        4,
        '[\"Kamar maksimal dihuni oleh 1 orang\",\"Boleh pasutri\",\"Boleh bawa anak\",\"Tamu menginap di kenakan biaya\"]',
        '3x3 Meter;Tidak Termasuk Listrik'
    ), (
        19,
        21,
        'Jl. Coblong No.6',
        'kost-yayu-no16-type-b-coblong-bandung',
        '2022-09-05',
        '13:37:42',
        1,
        'Yogyakarta',
        1400000,
        '[\"1\",\"3\",\"6\",\"12\"]',
        'Kost Yayu No.16 Type B Coblong',
        'Putra',
        '[\"Kursi\",\"Meja\",\"Kasur\",\"Bantal\",\"Jendela\",\"Cermin\"]',
        '[\"Wifi\",\"Laundry\",\"Dapur\",\"CCTV\",\"Pengurus Kos\",\"Kulkas\",\"Penjaga Kos\",\"Dispenser\",\"Gazebo\",\"Rice Cooker\"]',
        '[\"K. Mandi Dalam\",\"Kloset Duduk\",\"Shower\",\"Air Panas\"]',
        '[\"Parkir Motor\",\"Parkir Mobil\",\"Parkir Sepeda\"]',
        '18.jpg',
        4,
        '[\"Kamar maksimal dihuni oleh 1 orang\",\"Boleh pasutri\",\"Boleh bawa anak\",\"Tamu menginap di kenakan biaya\"]',
        '3x3 Meter;Tidak Termasuk Listrik'
    ), (
        20,
        22,
        'Jl. Sukajadi No.23',
        'kost-light-home-sukajadi-bandung',
        '2022-09-05',
        '13:37:52',
        1,
        'Jakarta',
        2000000,
        '[\"1\",\"3\",\"6\",\"12\"]',
        'Kost Light Home Sukajadi',
        'Putra',
        '[\"Kursi\",\"Bantal\",\"Jendela\",\"Meja\",\"Ventilasi\",\"Kipas Angin\"]',
        '[\"Wifi\",\"Laundry\",\"Dapur\",\"CCTV\",\"Pengurus Kos\",\"Kulkas\",\"Penjaga Kos\",\"Dispenser\",\"Gazebo\",\"Rice Cooker\"]',
        '[\"K. Mandi Dalam\",\"Kloset Duduk\",\"Shower\",\"Air Panas\"]',
        '[\"Parkir Motor\",\"Parkir Mobil\",\"Parkir Sepeda\"]',
        '20.jpg',
        4,
        '[\"Kamar maksimal dihuni oleh 1 orang\",\"Boleh pasutri\",\"Boleh bawa anak\",\"Tamu menginap di kenakan biaya\"]',
        '3x3 Meter;Tidak Termasuk Listrik'
    ), (
        21,
        23,
        'Jl. Dipatiukur No.17',
        'kost-nur-house-bandung',
        '2022-09-05',
        '13:38:42',
        1,
        'Yogyakarta',
        1150000,
        '[\"1\",\"3\",\"6\",\"12\"]',
        'Kost Nur House',
        'Putra',
        '[\"Kasur\",\"Lemari Baju\",\"Kursi\",\"Bantal\",\"Jendela\",\"Ventilasi\"]',
        '[\"Wifi\",\"Laundry\",\"Dapur\",\"CCTV\",\"Pengurus Kos\",\"Kulkas\",\"Penjaga Kos\",\"Dispenser\",\"Gazebo\",\"Rice Cooker\"]',
        '[\"K. Mandi Dalam\",\"Kloset Duduk\",\"Shower\",\"Air Panas\"]',
        '[\"Parkir Motor\",\"Parkir Mobil\",\"Parkir Sepeda\"]',
        '17.jpg',
        3,
        '[\"Kamar maksimal dihuni oleh 1 orang\",\"Boleh pasutri\",\"Boleh bawa anak\",\"Tamu menginap di kenakan biaya\"]',
        '3x3 Meter;Tidak Termasuk Listrik'
    ), (
        22,
        24,
        'Jl. Pagarsih No.78',
        'kost-tian-jalan-pagarsih-no78',
        '2022-09-05',
        '13:38:32',
        1,
        'Jakarta',
        2700000,
        '[\"1\",\"3\",\"6\",\"12\"]',
        'Kost Tian Jalan Pagarsih No.78',
        'Putra',
        '[\"Kasur\",\"Bantal\",\"Guling\",\"Lemari Baju\",\"Kursi\",\"Meja\",\"Kipas Angin\",\"Kamar Mandi\",\"Cermin\"]',
        '[\"Wifi\",\"Laundry\",\"Dapur\",\"CCTV\",\"Pengurus Kos\",\"Kulkas\",\"Penjaga Kos\",\"Dispenser\",\"Gazebo\",\"Rice Cooker\"]',
        '[\"K. Mandi Dalam\",\"Kloset Duduk\",\"Shower\",\"Air Panas\"]',
        '[\"Parkir Motor\",\"Parkir Mobil\",\"Parkir Sepeda\"]',
        '19.jpg',
        3,
        '[\"Kamar maksimal dihuni oleh 1 orang\",\"Boleh pasutri\",\"Boleh bawa anak\",\"Tamu menginap di kenakan biaya\"]',
        '3x3 Meter;Tidak Termasuk Listrik'
    ), (
        55,
        26,
        'kosku',
        'kosku',
        '2022-09-05',
        '13:38:05',
        1,
        'Banda Aceh',
        1000,
        '[\"1\",\"3\",\"6\",\"12\"]',
        'kosku',
        'Putra',
        '[\"Bantal\",\"Jendela\",\"Meja\",\"Kipas Angin\"]',
        '[\"Wifi\",\"Laundry\",\"Dapur\",\"CCTV\",\"Pengurus Kos\",\"Kulkas\",\"Penjaga Kos\",\"Dispenser\",\"Gazebo\",\"Rice Cooker\"]',
        '[\"K. Mandi Dalam\",\"Kloset Duduk\",\"Shower\",\"Air Panas\"]',
        '[\"Parkir Motor\",\"Parkir Mobil\",\"Parkir Sepeda\"]',
        'Seven_inc5.jpeg',
        2,
        '[\"Kamar maksimal dihuni oleh 1 orang\",\"Boleh pasutri\",\"Boleh bawa anak\",\"Tamu menginap di kenakan biaya\"]',
        '3x3 Meter;Tidak Termasuk Listrik'
    ), (
        57,
        44,
        'Temon Kulon, Kec Temon,',
        'kost-temon-kulon-progo-yogyakarta',
        '2022-09-29',
        '11:20:55',
        1,
        'Yogyakarta',
        700000,
        '[\"1\",\"3\",\"6\",\"12\"]',
        'KOST TEMON, KULON PROGO, YOGYAKARTA',
        'Putra',
        '[\"Kasur\",\"Lemari Baju\",\"Kursi\",\"Bantal\"]',
        '[\"Wifi\",\"Laundry\",\"Dapur\",\"CCTV\",\"Pengurus Kos\",\"Kulkas\",\"Penjaga Kos\",\"Dispenser\",\"Gazebo\",\"Rice Cooker\"]',
        '[\"K. Mandi Dalam\",\"Kloset Duduk\",\"Shower\",\"Air Panas\"]',
        '[\"Parkir Motor\",\"Parkir Mobil\",\"Parkir Sepeda\"]',
        'kost-temon-kulon-progo.jpeg',
        2,
        '[\"Kamar maksimal dihuni oleh 1 orang\",\"Boleh pasutri\",\"Boleh bawa anak\",\"Tamu menginap di kenakan biaya\"]',
        '3x3 Meter;Tidak Termasuk Listrik'
    ), (
        58,
        44,
        '\r\nGlaheng RT 006/RW 003, Sindutan, Temon,Kulon Progo, DIY',
        'kost-fastabikhul-khairat',
        '2022-09-29',
        '11:27:00',
        1,
        'Yogyakarta',
        500000,
        '[\"1\",\"3\",\"6\",\"12\"]',
        'Kost Fastabikhul Khairat',
        'Putra',
        '[\"Kasur\",\"Bantal\",\"Guling\"]',
        '[\"Wifi\",\"Laundry\",\"Dapur\",\"CCTV\",\"Pengurus Kos\",\"Kulkas\",\"Penjaga Kos\",\"Dispenser\",\"Gazebo\",\"Rice Cooker\"]',
        '[\"K. Mandi Dalam\",\"Kloset Duduk\",\"Shower\",\"Air Panas\"]',
        '[\"Parkir Motor\",\"Parkir Mobil\",\"Parkir Sepeda\"]',
        'kost-fastabikhul.jpg',
        3,
        '[\"Kamar maksimal dihuni oleh 1 orang\",\"Boleh pasutri\",\"Boleh bawa anak\",\"Tamu menginap di kenakan biaya\"]',
        '3x3 Meter;Tidak Termasuk Listrik'
    ), (
        59,
        44,
        'Jl. Janti Gg. Nakula, RT.02, RW No.31, Jaranan, Banguntapan, Kec. Banguntapan, Kabupaten Bantul, Daerah Istimewa Yogyakarta 55198',
        'kos-mbok-jillah',
        '2022-10-10',
        '16:21:10',
        1,
        'Yogyakarta',
        500000,
        '[\"1\",\"12\"]',
        'Kos Mbok Jillah',
        'Putra',
        '[\"Kosongan\"]',
        '[\"Wifi\",\"Laundry\",\"Dapur\",\"CCTV\",\"Pengurus Kos\",\"Kulkas\",\"Penjaga Kos\",\"Dispenser\",\"Gazebo\",\"Rice Cooker\"]',
        '[\"K. Mandi Dalam\",\"Kloset Duduk\",\"Shower\",\"Air Panas\"]',
        '[\"Parkir Motor\",\"Parkir Mobil\",\"Parkir Sepeda\"]',
        '2021-12-01.jpg',
        2,
        '[\"Kamar maksimal dihuni oleh 1 orang\",\"Boleh pasutri\",\"Boleh bawa anak\",\"Tamu menginap di kenakan biaya\"]',
        '3x3 Meter;Tidak Termasuk Listrik'
    ), (
        60,
        44,
        'Jl. Mantrigawen Lor 5, Panembahan-Kraton, Jogja',
        'kost-putri-nyaman-dekat-kraton',
        '2022-09-29',
        '14:48:11',
        1,
        'Yogyakarta',
        400000,
        '[\"1\",\"3\",\"6\",\"12\"]',
        'Kost Putri Nyaman Dekat Kraton',
        'Putri',
        '[\"Kasur\",\"Lemari Baju\",\"Bantal\",\"Guling\"]',
        '[\"Wifi\",\"Laundry\",\"Dapur\",\"CCTV\",\"Pengurus Kos\",\"Kulkas\",\"Penjaga Kos\",\"Dispenser\",\"Gazebo\",\"Rice Cooker\"]',
        '[\"K. Mandi Dalam\",\"Kloset Duduk\",\"Shower\",\"Air Panas\"]',
        '[\"Parkir Motor\",\"Parkir Mobil\",\"Parkir Sepeda\"]',
        'kost-putri-nyaman.jpg',
        2,
        '[\"Kamar maksimal dihuni oleh 1 orang\",\"Boleh pasutri\",\"Boleh bawa anak\",\"Tamu menginap di kenakan biaya\"]',
        '3x3 Meter;Tidak Termasuk Listrik'
    );

-- --------------------------------------------------------

--

-- Struktur dari tabel `tbl_sewa`

--

CREATE TABLE
    `tbl_sewa` (
        `id` int(11) NOT NULL,
        `id_user` int(11) NOT NULL,
        `id_kos` int(11) NOT NULL,
        `date` date NOT NULL,
        `tagihan` int(11) NOT NULL,
        `buktipem` varchar(32) NOT NULL,
        `status` enum('Lunas', 'Belum Lunas', '', '') NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

-- --------------------------------------------------------

--

-- Struktur dari tabel `tbl_tempat`

--

CREATE TABLE
    `tbl_tempat` (
        `id_tempat` int(11) NOT NULL,
        `id_kos` int(10) NOT NULL,
        `kategoriTempat` varchar(255) NOT NULL,
        `namaTempat` varchar(255) NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

--

-- Dumping data untuk tabel `tbl_tempat`

--

INSERT INTO
    `tbl_tempat` (
        `id_tempat`,
        `id_kos`,
        `kategoriTempat`,
        `namaTempat`
    )
VALUES (66, 1, 'ATM', 'ATM BCA'), (
        67,
        1,
        'MASJID',
        'Masjid Al_AZIZ'
    ), (
        69,
        1,
        'UNIVERSITAS',
        'UTDI (Universitas Digital Indonesia)'
    ), (
        70,
        3,
        'RUMAH MAKAN',
        'Warung ibu Ida'
    ), (
        71,
        3,
        'UNIVERSITAS',
        'Stimik Akakom'
    ), (
        72,
        2,
        'MASJID',
        'Masjid Al-Huda'
    ), (73, 2, 'ATM', 'ATM Mandiri'), (
        74,
        5,
        'MASJID',
        'Masjid An-nur'
    ), (
        75,
        10,
        'RUMAH MAKAN',
        'Warung ibu nana'
    ), (
        84,
        1,
        'RUMAH MAKAN',
        'Warung Mas Dwi'
    ), (85, 1, 'RUMAH SAKIT', 'RSUD'), (
        86,
        1,
        'TEMPAT BELANJA',
        'INDOMARET'
    ), (
        87,
        1,
        'STASIUN KERETA',
        'LEMPUYANGAN'
    );

-- --------------------------------------------------------

--

-- Struktur dari tabel `tb_request`

--

CREATE TABLE
    `tb_request` (
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
        `jumlah_kamar` varchar(100) NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

--

-- Dumping data untuk tabel `tb_request`

--

INSERT INTO
    `tb_request` (
        `id_request`,
        `nama_depan`,
        `nama_belakang`,
        `info_hub`,
        `no_hp`,
        `nama_properti`,
        `url_properti`,
        `tipe_kos`,
        `harga`,
        `provinsi`,
        `kabupaten_kota`,
        `kecamatan`,
        `kelurahan`,
        `alamat`,
        `jumlah_kamar`
    )
VALUES (
        4,
        'Arkan',
        'Altair',
        'Whatsapp',
        '081234578979',
        'Wisma Arya 3',
        'https://drive.google.com/drive/u/1/folders/1G44ZC66cpKFYPLkOnJJVDerWx3i9W4ty',
        'Kost Putra',
        '1.000.000/bulan',
        'Riau',
        'Pekanbaru',
        'Rumbai',
        'Argowisata',
        'Jalan Rumbai',
        '4'
    ), (
        5,
        'Glocha',
        'Rakabumi',
        'No Handphone',
        '081234578965',
        'Kost Broklyn ',
        'https://drive.google.com/drive/u/1/folders/1G44ZC66cpKFYPLkOnJJVDerWx3i9W4ty',
        'Kost Putra',
        '1.500.000/bulan',
        'Riau',
        'Pekanbaru',
        'Rumbai',
        'Argowisata',
        'Jalan Rumbai',
        '6'
    );

-- --------------------------------------------------------

--

-- Struktur dari tabel `tb_role`

--

CREATE TABLE
    `tb_role` (
        `id_role` int(11) NOT NULL,
        `nama_role` varchar(20) NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = latin1;

--

-- Dumping data untuk tabel `tb_role`

--

INSERT INTO
    `tb_role` (`id_role`, `nama_role`)
VALUES (1, 'Admin'), (2, 'Customer'), (3, 'Owner'), (4, 'Super Admin');

-- --------------------------------------------------------

--

-- Struktur dari tabel `tb_user`

--

CREATE TABLE
    `tb_user` (
        `id_user` int(11) NOT NULL,
        `username` varchar(20) NOT NULL,
        `password` varchar(50) NOT NULL,
        `fullname` varchar(50) NOT NULL,
        `foto` varchar(200) NOT NULL,
        `jk` enum('Pria', 'Wanita') NOT NULL,
        `email` varchar(30) NOT NULL,
        `no_hp` varchar(20) NOT NULL,
        `alamat` text NOT NULL,
        `id_role` int(11) NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = latin1;

--

-- Dumping data untuk tabel `tb_user`

--

INSERT INTO
    `tb_user` (
        `id_user`,
        `username`,
        `password`,
        `fullname`,
        `foto`,
        `jk`,
        `email`,
        `no_hp`,
        `alamat`,
        `id_role`
    )
VALUES (
        1,
        'sheptian',
        '6bc96d4888c477d534703c5c9de9a49b',
        'sheptian bagja utama',
        '',
        'Pria',
        'sheptian96@gmail.com',
        '087824392239',
        'Jl.Pagarsih Gg.Holili No.120 Blok 87 RT02/RW09',
        1
    ), (
        3,
        'alvian',
        'e10adc3949ba59abbe56e057f20f883e',
        'alvian ahja wijaya',
        '',
        'Pria',
        'alvian@gmail.com',
        '085222549953',
        'Jl.Pagarsih Gg.Holili No.120 Blok 87 RT02/RW09',
        3
    ), (
        5,
        'bla',
        'e10adc3949ba59abbe56e057f20f883e',
        'bla bla bla',
        '',
        'Wanita',
        'bla@gmail.com',
        '789456142',
        'Jl.Cibiru',
        2
    ), (
        6,
        'kurniawan',
        'e10adc3949ba59abbe56e057f20f883e',
        'Kurniawan Aditya',
        '',
        'Pria',
        'kurniawan@gmail.com',
        '08752563663',
        'Jl.Raya Cibeurem No.19',
        2
    ), (
        7,
        'nawan',
        'e10adc3949ba59abbe56e057f20f883e',
        'Nawan Tutu Syah Lampah',
        '',
        'Pria',
        'nawan@gmail.com',
        '085322145896',
        'Jl. Raya Cimahi No.90',
        2
    ), (
        8,
        'rudy',
        'e10adc3949ba59abbe56e057f20f883e',
        'Rudy Setiawan',
        '',
        'Pria',
        'rudy@gmail.com',
        '085369985555',
        'Jl.Pasir Impun No.90',
        2
    ), (
        9,
        'firman',
        'e10adc3949ba59abbe56e057f20f883e',
        'Firman Alhadiansyah',
        '',
        'Pria',
        'firman@gmail.com',
        '085244215511',
        'Jl. Ir.Hj Juanda No.11',
        2
    ), (
        10,
        'tantan',
        'e10adc3949ba59abbe56e057f20f883e',
        'Tantan Faturahman',
        '',
        'Pria',
        'tantan@gmail.com',
        '08125648974',
        'Jl. Gede Bangkong No.12',
        2
    ), (
        11,
        'azzi',
        'e10adc3949ba59abbe56e057f20f883e',
        'Muhammad Azzi Alfurqon',
        '',
        'Pria',
        'azzi@gmail.com',
        '082133669988',
        'Jl. Dipatiukur No.67',
        2
    ), (
        12,
        'reza',
        'e10adc3949ba59abbe56e057f20f883e',
        'Reza Yogi Andria',
        '',
        'Pria',
        'reza@gmail.com',
        '0228956938',
        'Jl. Soekarno Hatta No.90',
        2
    ), (
        13,
        'angga',
        'e10adc3949ba59abbe56e057f20f883e',
        'Rangga Jaya Utama',
        '',
        'Pria',
        'rangga@gmail.com',
        '08526335214',
        'Jl. Pasirkoja No.90',
        2
    ), (
        14,
        'yuliani',
        'e10adc3949ba59abbe56e057f20f883e',
        'Yuliani Putri Utama',
        '',
        'Wanita',
        'yuliani@gmail.com',
        '087758521245',
        'Jl.Holis No.87',
        2
    ), (
        15,
        'rahma',
        'e10adc3949ba59abbe56e057f20f883e',
        'Rahma Aulia',
        '',
        'Wanita',
        'rahma@gmail.com',
        '085245696963',
        'Jl. Peta No.88',
        2
    ), (
        16,
        'anie',
        '14e1b600b1fd579f47433b88e8d85291',
        'Ani Yani',
        '',
        'Wanita',
        'ani@gmail.com',
        '085254698988',
        'Jl.Sereh No.78',
        2
    ), (
        17,
        'rani',
        '14e1b600b1fd579f47433b88e8d85291',
        'Rani Maharani',
        '',
        'Wanita',
        'rani@gmail.com',
        '0852633562312',
        'Jl. Jamika No.4',
        2
    ), (
        18,
        'Andika',
        '14e1b600b1fd579f47433b88e8d85291',
        'Andika Ramdani',
        '',
        'Pria',
        'Dika@gmail.com',
        '085245658878',
        'Jl. Sukamulya No.2',
        2
    ), (
        19,
        'Kartika',
        'e10adc3949ba59abbe56e057f20f883e',
        'Kartika Sari',
        '',
        'Wanita',
        'kartika@gmail.com',
        '089563652145',
        'Jl. Sunda No.22',
        2
    ), (
        20,
        'ariska',
        'e10adc3949ba59abbe56e057f20f883e',
        'Sri Ariska',
        '',
        'Wanita',
        'ariska@gmail.com',
        '085622325645',
        'Jl. Ciroyom',
        2
    ), (
        21,
        'yayu',
        'e10adc3949ba59abbe56e057f20f883e',
        'Yayu',
        '',
        'Wanita',
        'yayu@gmail.com',
        '085698974563',
        'Jl. Burangrang No.82',
        2
    ), (
        22,
        'kezia',
        '14e1b600b1fd579f47433b88e8d85291',
        'Kezia Andria',
        '',
        'Wanita',
        'kezia@gmail.com',
        '08545689758',
        'Jl. Buah Batu No.34',
        2
    ), (
        23,
        'Nurhikmah',
        'e10adc3949ba59abbe56e057f20f883e',
        'Nurhikmah',
        '',
        'Wanita',
        'nur@gmail.com',
        '0856478945',
        'Jl. Dipatiukur No.56',
        2
    ), (
        24,
        'tian',
        '25d55ad283aa400af464c76d713c07ad',
        'Tian Bagja ',
        '',
        'Pria',
        'tian@gmail.com',
        '087854446958',
        'Jl. Pagarsih',
        4
    ), (
        25,
        'test',
        'e10adc3949ba59abbe56e057f20f883e',
        'testest',
        '',
        'Pria',
        'test@gmail.com',
        '087857846',
        'Jl.Pagarsih',
        3
    ), (
        26,
        'claire',
        '25d55ad283aa400af464c76d713c07ad',
        'claire',
        '',
        'Wanita',
        'claire@gmail.com',
        '089786567899',
        'Malang',
        1
    ), (
        28,
        'keshi',
        'e10adc3949ba59abbe56e057f20f883e',
        'keshi',
        '',
        'Pria',
        'keshi@gmail.com',
        '089987654555',
        'Surabaya',
        2
    ), (
        29,
        'keshi',
        'e10adc3949ba59abbe56e057f20f883e',
        'keshi',
        '',
        'Pria',
        'keshi@gmail.com',
        '089987654555',
        'Surabaya',
        2
    ), (
        30,
        'keshi',
        '14e1b600b1fd579f47433b88e8d85291',
        'keshi',
        '',
        'Pria',
        'keshi@gmail.com',
        '089987654555',
        'Surabaya',
        3
    ), (
        32,
        'ashley',
        '14e1b600b1fd579f47433b88e8d85291',
        'ashley choi',
        '',
        'Wanita',
        'ashley@gmail.com',
        '089763345234',
        'Yogyakarta',
        2
    ), (
        36,
        'max',
        'e10adc3949ba59abbe56e057f20f883e',
        'max',
        '',
        'Wanita',
        'max@gmail.com',
        '089786567899',
        'Arcadia Bay',
        2
    ), (
        37,
        'chloe',
        'e10adc3949ba59abbe56e057f20f883e',
        'chloe',
        '',
        'Wanita',
        'chloe@gmail.com',
        '089767546345',
        'Arcadia Bay',
        2
    ), (
        38,
        'rachel',
        'e10adc3949ba59abbe56e057f20f883e',
        'rachel',
        '',
        'Wanita',
        'rachel@gmail.com',
        '089786567899',
        'Arcadia Bay',
        3
    ), (
        39,
        'bea',
        'e10adc3949ba59abbe56e057f20f883e',
        'beabadobee',
        '',
        'Wanita',
        'bea@gmail.com',
        '089786567899',
        'Surabaya',
        2
    ), (
        40,
        'conan',
        'e10adc3949ba59abbe56e057f20f883e',
        'conan',
        '',
        'Pria',
        'conan@gmail.com',
        '089786567444',
        'Jakarta',
        2
    ), (
        41,
        'ash',
        'e10adc3949ba59abbe56e057f20f883e',
        'ash island',
        '',
        'Pria',
        'ash@gmail.com',
        '08975456777',
        'Chicago',
        2
    ), (
        42,
        'jeff',
        'e10adc3949ba59abbe56e057f20f883e',
        'jeff benard',
        '',
        'Pria',
        'jeff@gmail.com',
        '089765678756',
        'Jakarta',
        3
    ), (
        43,
        'lucas',
        'e10adc3949ba59abbe56e057f20f883e',
        'lucas',
        '',
        'Pria',
        'lucas@gmail.com',
        '089765456777',
        'Atlanta',
        2
    ), (
        44,
        'lana',
        'e10adc3949ba59abbe56e057f20f883e',
        'lana del rey',
        '',
        'Wanita',
        'lana@gmail.com',
        '089765435234',
        'jalan janti',
        2
    ), (
        45,
        'monica',
        'e10adc3949ba59abbe56e057f20f883e',
        'monica',
        '',
        'Wanita',
        'monica@gmail.com',
        '089765453676',
        'Surabaya',
        4
    ), (
        46,
        'blacksweet@gmail.com',
        'b0e268aa058c057523f931943e981b23',
        'andika',
        '',
        'Pria',
        'blacksweet@gmail.com',
        '082278476347',
        'jln nangka',
        2
    ), (
        47,
        'cobap',
        'feb5b4b10c7eb056d241967bd3b12864',
        'cobap',
        'kopisusu.jpg',
        'Pria',
        'cobap@gmail.com',
        '08123456789',
        'Malang',
        2
    ), (
        49,
        'enone',
        '95e36f1e7a3f876952a8b95f3d309d55',
        'enone',
        '',
        'Pria',
        'enone@gmail.com',
        '0987654321',
        'Malang',
        2
    ), (
        51,
        'Fandi',
        'd41d8cd98f00b204e9800998ecf8427e',
        'fandi abdillah',
        '',
        'Wanita',
        'fandi44abdillah@gmail.com',
        '081227753901',
        'jln, janti',
        3
    ), (
        52,
        'Fandi abdillah',
        'd41d8cd98f00b204e9800998ecf8427e',
        'Fandi abdillah',
        '',
        'Wanita',
        'fandi@gmail.com',
        '081227765372',
        'jl.janti',
        2
    ), (
        53,
        'ariaaa',
        'd41d8cd98f00b204e9800998ecf8427e',
        'aria',
        '',
        'Wanita',
        'aria@gmail.com',
        '0817656676',
        'jl.janti',
        2
    ), (
        54,
        'randi',
        'd41d8cd98f00b204e9800998ecf8427e',
        'randitya',
        '',
        'Wanita',
        'randi@gmail.com',
        '081245332334',
        'jalan janti',
        2
    ), (
        55,
        'gabriel',
        'd41d8cd98f00b204e9800998ecf8427e',
        'gabriel benya',
        '',
        'Wanita',
        'gabriel@gmail.com',
        '081234567889',
        'jalan magelang',
        2
    ), (
        56,
        'ucok',
        'd41d8cd98f00b204e9800998ecf8427e',
        'ucokbaba',
        '',
        'Pria',
        'ucok@gmail.com',
        '09125678976',
        'jalan janti',
        2
    ), (
        57,
        'ucokbaba',
        '5f4dcc3b5aa765d61d8327deb882cf99',
        'Ucok Baba',
        '',
        'Pria',
        'ucokbaba@gmail.com',
        '123456',
        'jln, janti',
        2
    ), (
        58,
        'FandiAbdillah',
        'b7653296ed257174b1733f58d104250a',
        'Fandi abdillah',
        '',
        'Pria',
        'fandiabdillah@gmail.com',
        '81227753901',
        'jln, janti',
        2
    ), (
        59,
        'alfian',
        'e10adc3949ba59abbe56e057f20f883e',
        'Alfian Hakim',
        '',
        'Pria',
        'alfianhakim93@gmail.com',
        '0898123123',
        'Kebumen',
        4
    ), (
        60,
        'alfianmagang',
        'e10adc3949ba59abbe56e057f20f883e',
        'Alfian Hakim',
        '',
        'Pria',
        'testinggg@gmail.com',
        '089812312757753',
        'Kebumen',
        3
    );

-- --------------------------------------------------------

--

-- Struktur dari tabel `transaksi`

--

CREATE TABLE
    `transaksi` (
        `id_booking` int(20) NOT NULL,
        `id_user` int(20) NOT NULL,
        `id_Owner` int(20) NOT NULL,
        `id_kos` int(20) NOT NULL,
        `tgl_sewa` date NOT NULL,
        `tanggal_selesai` date DEFAULT NULL,
        `harga` int(20) NOT NULL,
        `kategori` varchar(10) NOT NULL,
        `tgl_pengembalian` date NOT NULL,
        `status_pengembalian` varchar(20) NOT NULL,
        `status_sewa` varchar(20) NOT NULL,
        `bukti_pembayaran` varchar(100) NOT NULL,
        `status_pembayaran` int(11) NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = latin1;

--

-- Dumping data untuk tabel `transaksi`

--

INSERT INTO
    `transaksi` (
        `id_booking`,
        `id_user`,
        `id_Owner`,
        `id_kos`,
        `tgl_sewa`,
        `tanggal_selesai`,
        `harga`,
        `kategori`,
        `tgl_pengembalian`,
        `status_pengembalian`,
        `status_sewa`,
        `bukti_pembayaran`,
        `status_pembayaran`
    )
VALUES (
        107,
        44,
        3,
        6,
        '2022-10-06',
        '2022-11-06',
        850000,
        '6',
        '0000-00-00',
        'belum_kembali',
        'belum_selesai',
        '',
        0
    ), (
        108,
        44,
        3,
        6,
        '2022-10-06',
        '2023-01-06',
        850000,
        '1',
        '0000-00-00',
        'belum_kembali',
        'belum_selesai',
        '',
        0
    ), (
        109,
        44,
        3,
        6,
        '2022-10-06',
        '2023-01-01',
        850000,
        '3',
        '0000-00-00',
        'belum_kembali',
        'belum_selesai',
        '',
        0
    ), (
        110,
        44,
        3,
        6,
        '2022-10-06',
        '2023-01-02',
        850000,
        '12',
        '0000-00-00',
        'belum_kembali',
        'belum_selesai',
        '',
        0
    ), (
        111,
        44,
        3,
        6,
        '2022-10-06',
        '2023-01-03',
        850000,
        '6',
        '0000-00-00',
        'belum_kembali',
        'belum_selesai',
        '',
        0
    ), (
        112,
        44,
        3,
        6,
        '2022-10-06',
        '2023-01-04',
        850000,
        '1',
        '0000-00-00',
        'belum_kembali',
        'belum_selesai',
        '',
        0
    ), (
        169,
        59,
        3,
        1,
        '2022-11-16',
        '2023-02-16',
        500000,
        '3',
        '0000-00-00',
        'belum_kembali',
        'belum_selesai',
        '2022-Formula1-Red-Bull-Racing-RB18-002-1080w3.jpg',
        0
    );

-- --------------------------------------------------------

--

-- Struktur dari tabel `unser_access_menu`

--

CREATE TABLE
    `unser_access_menu` (
        `id` int(11) NOT NULL,
        `id_role` int(10) NOT NULL,
        `menu_id` int(10) NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

--

-- Dumping data untuk tabel `unser_access_menu`

--

INSERT INTO
    `unser_access_menu` (`id`, `id_role`, `menu_id`)
VALUES (1, 1, 1), (2, 1, 2), (3, 1, 3), (5, 2, 2), (6, 3, 3), (7, 3, 2), (8, 4, 4), (9, 4, 2), (10, 4, 3), (11, 4, 1);

-- --------------------------------------------------------

--

-- Struktur dari tabel `user_menu`

--

CREATE TABLE
    `user_menu` (
        `id` int(11) NOT NULL,
        `menu` varchar(128) NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

--

-- Dumping data untuk tabel `user_menu`

--

INSERT INTO
    `user_menu` (`id`, `menu`)
VALUES (1, 'Admin'), (2, 'User'), (3, 'Owner'), (4, 'Super_Admin');

-- --------------------------------------------------------

--

-- Struktur dari tabel `user_sub_menu`

--

CREATE TABLE
    `user_sub_menu` (
        `id` int(11) NOT NULL,
        `menu_id` int(11) NOT NULL,
        `title` varchar(128) NOT NULL,
        `url` varchar(128) NOT NULL,
        `icon` varchar(128) NOT NULL,
        `is_active` int(1) NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

--

-- Dumping data untuk tabel `user_sub_menu`

--

INSERT INTO
    `user_sub_menu` (
        `id`,
        `menu_id`,
        `title`,
        `url`,
        `icon`,
        `is_active`
    )
VALUES (
        1,
        1,
        'Dasbor Admin',
        'admin',
        'fas fa-fw fa-tachometer-alt',
        1
    ), (
        2,
        1,
        'Permintaan Pemilik',
        'admin/request_owner',
        'fas fa-fw fa-file-alt',
        1
    ), (
        7,
        2,
        'Profil Saya',
        'User',
        'fas fa-fw fa-user',
        1
    ), (
        8,
        3,
        'Data Kos',
        'owner',
        'fas fa-fw fa-house-user',
        1
    ), (
        9,
        3,
        'Data Sewa',
        'owner/data_sewa',
        'fas fa-fw fa-dollar-sign',
        1
    ), (
        13,
        4,
        'Data Pengguna',
        'admin/data_pengguna',
        'fas fa-fw fa-users',
        1
    ), (
        15,
        4,
        'Data Admin',
        'super_admin/data_admin',
        'fas fa-fw fa-users-cog',
        1
    );

--

-- Indexes for dumped tables

--

--

-- Indeks untuk tabel `tbl_kos`

--

ALTER TABLE `tbl_kos`
ADD PRIMARY KEY (`id_kos`),
ADD KEY `id_user` (`id_user`);

--

-- Indeks untuk tabel `tbl_sewa`

--

ALTER TABLE `tbl_sewa`
ADD PRIMARY KEY (`id`),
ADD KEY `id_kos` (`id_kos`),
ADD KEY `id_user` (`id_user`);

--

-- Indeks untuk tabel `tbl_tempat`

--

ALTER TABLE `tbl_tempat`
ADD
    PRIMARY KEY (`id_tempat`),
ADD
    KEY `id_kos` (`id_kos`) USING BTREE;

--

-- Indeks untuk tabel `tb_request`

--

ALTER TABLE `tb_request` ADD PRIMARY KEY (`id_request`);

--

-- Indeks untuk tabel `tb_role`

--

ALTER TABLE `tb_role` ADD PRIMARY KEY (`id_role`);

--

-- Indeks untuk tabel `tb_user`

--

ALTER TABLE `tb_user` ADD PRIMARY KEY (`id_user`);

--

-- Indeks untuk tabel `transaksi`

--

ALTER TABLE `transaksi` ADD PRIMARY KEY (`id_booking`);

--

-- Indeks untuk tabel `unser_access_menu`

--

ALTER TABLE `unser_access_menu` ADD PRIMARY KEY (`id`) USING BTREE;

--

-- Indeks untuk tabel `user_sub_menu`

--

ALTER TABLE `user_sub_menu` ADD PRIMARY KEY (`id`);

--

-- AUTO_INCREMENT untuk tabel yang dibuang

--

--

-- AUTO_INCREMENT untuk tabel `tbl_kos`

--

ALTER TABLE
    `tbl_kos` MODIFY `id_kos` int(10) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 85;

--

-- AUTO_INCREMENT untuk tabel `tbl_tempat`

--

ALTER TABLE
    `tbl_tempat` MODIFY `id_tempat` int(11) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 98;

--

-- AUTO_INCREMENT untuk tabel `tb_request`

--

ALTER TABLE
    `tb_request` MODIFY `id_request` int(11) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 6;

--

-- AUTO_INCREMENT untuk tabel `tb_role`

--

ALTER TABLE
    `tb_role` MODIFY `id_role` int(11) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 5;

--

-- AUTO_INCREMENT untuk tabel `tb_user`

--

ALTER TABLE
    `tb_user` MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 62;

--

-- AUTO_INCREMENT untuk tabel `transaksi`

--

ALTER TABLE
    `transaksi` MODIFY `id_booking` int(20) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 170;

--

-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)

--

--

-- Ketidakleluasaan untuk tabel `tbl_kos`

--

ALTER TABLE `tbl_kos`
ADD
    CONSTRAINT `tbl_kos_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `tb_user` (`id_user`);

--

-- Ketidakleluasaan untuk tabel `tbl_sewa`

--

ALTER TABLE `tbl_sewa`
ADD
    CONSTRAINT `tbl_sewa_ibfk_1` FOREIGN KEY (`id_kos`) REFERENCES `tbl_kos` (`id_kos`),
ADD
    CONSTRAINT `tbl_sewa_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `tb_user` (`id_user`);

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */

;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */

;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */

;