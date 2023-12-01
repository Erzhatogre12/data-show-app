-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2023 at 04:21 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_show_data`
--

-- --------------------------------------------------------

--
-- Table structure for table `dimensis`
--

CREATE TABLE `dimensis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_dimensi` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dimensis`
--

INSERT INTO `dimensis` (`id`, `nama_dimensi`, `created_at`, `updated_at`) VALUES
(1, 'Hak Sipil dan Politik', NULL, NULL),
(2, 'Hak Ekonomi, Sosial, dan Budaya', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `indikators`
--

CREATE TABLE `indikators` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_indikator` varchar(255) NOT NULL,
  `dimensi_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `indikators`
--

INSERT INTO `indikators` (`id`, `nama_indikator`, `dimensi_id`, `created_at`, `updated_at`) VALUES
(1, '1.1. Hak untuk Hidup dan Mempertahankan Kehidupannya', 1, NULL, NULL),
(2, '1.2.Hak Bebas dari Penyiksaan dan Perlakuan/Penghukuman yang Keji, Tidak Manusiawi, dan Merendahkan Martabat Manusia', 1, NULL, NULL),
(3, '1.3. Hak Bebas dari Praktik Perbudakan', 1, NULL, NULL),
(4, '1.4. Kebebasan dan Keamanan Pribadi', 1, NULL, NULL),
(5, '1.5. Hak atas Peradilan yang Baik', 1, NULL, NULL),
(6, '1.6. Hak atas Perlindungan Privasi', 1, NULL, NULL),
(7, '1.7. Hak atas Kebebasan Berpikir, Beragama, dan  Berkeyakinan', 1, NULL, NULL),
(8, '1.8. Kebebasan Berpendapat, Berekspresi, dan Informasi', 1, NULL, NULL),
(9, '1.9. Hak untuk Berkumpul secara Damai', 1, NULL, NULL),
(10, '1.10. Hak untuk Berserikat', 1, NULL, NULL),
(11, '1.11. Hak Berpartisipasi dan Memperoleh Kesempatan yang Sama dalam Pemerintahan', 1, NULL, NULL),
(12, '2.1. Hak atas Pendidikan', 2, NULL, NULL),
(13, '2.2. Hak atas Pekerjaan', 2, NULL, NULL),
(14, '2.3.	Hak atas Perumahan yang Layak', 2, NULL, NULL),
(15, '2.4. Hak atas Air ', 2, NULL, NULL),
(16, '2.5. Hak atas Lingkungan Hidup yang Aman, Bersih, Sehat, dan Berkelanjutan', 2, NULL, NULL),
(17, '2.7 Hak atas Jaminan Sosial', 2, NULL, NULL),
(18, '2.8. Hak untuk berpartisipasi dalam kehidupan budaya, menikmati manfaat dari kemajuan ilmu pengetahuan dan penerapannya, dan memperoleh manfaat dari perlindungan atas kepentingan moral dan material yang timbul dari karya ilmiah, sastra atau seni yang tela', 2, NULL, NULL),
(19, '2.9. Hak atas Pangan ', 2, NULL, NULL),
(20, '2.9. Hak atas Penikmatan dan Pemanfaatan Sumber Daya Alam\r\n', 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_11_27_154407_create_dimensis_table', 1),
(6, '2023_11_27_154420_create_indikators_table', 1),
(7, '2023_11_27_154431_create_sub_indikators_table', 1),
(11, '2023_11_27_154443_create_variabels_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_indikators`
--

CREATE TABLE `sub_indikators` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_subIndikator` varchar(255) NOT NULL,
  `indikator_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_indikators`
--

INSERT INTO `sub_indikators` (`id`, `nama_subIndikator`, `indikator_id`, `created_at`, `updated_at`) VALUES
(1, '1.1.a. Perlindungan hukum terhadap hak hidup dari ancaman apapun', 1, NULL, NULL),
(2, '1.1.b. Hak mempertahankan hidup dari perampasan secara sewenang-wenang.', 1, NULL, NULL),
(3, '1.2.a. Bebas dari penderitaan jasmani atau rohani untuk mendapatkan pengakuan atau keterangan, atau untuk alasan yang didasarkan pada setiap bentuk diskriminasi, yang dilakukan oleh, atas hasutan, dengan persetujuan, atau sepengetahuan pejabat yang berwen', 2, NULL, NULL),
(4, '1.2.b. Bebas dari perlakuan/penghukuman yang keji, tidak manusiawi, dan merendahkan martabat manusia', 2, NULL, NULL),
(5, '1.3.a. Bebas dari tindakan perdagangan orang', 3, NULL, NULL),
(6, '1.4.a. Hak atas rasa aman dan perlindungan dari ancaman atas kebebasan dan keamanan pribadinya', 4, NULL, NULL),
(7, '1.4.b. Hak untuk tidak ditangkap atau ditahan secara sewenang-wenang', 4, NULL, NULL),
(8, '1.5.a. Hak untuk memperoleh proses peradilan sederhana, cepat dan berbiaya ringan.', 5, NULL, NULL),
(9, '1.5.b. Hak untuk memilih dan mendapatkan bantuan hukum', 5, NULL, NULL),
(10, '1.5.c. Hak mendapatkan kepastian hukum', 5, NULL, NULL),
(11, '1.5.d. Hak untuk mengajukan upaya hukum lanjutan sampai berkekuatan hukum tetap', 5, NULL, NULL),
(12, '1.5.e. Terjaminnya hak anak yang berdapan dengan hukum dalam proses peradilan ', 5, NULL, NULL),
(13, '1.5.f. Terjaminnya hak penyandang disabilitas yang berhadapan dengan hukum dalam proses peradilan (fisik, pelayanan, sistem)', 5, NULL, NULL),
(14, '1.6.a. Hak atas kerahasiaan karakteristik pribadinya (action or data)', 6, NULL, NULL),
(15, '1.6.b. Hak untuk tidak diganggu  pribadi (privacy) dan tempat kediamannya.', 6, NULL, NULL),
(16, '1.6.c. Hak dimana hubungan komunikasi melalui sarana elektronik tidak boleh diganggu', 6, NULL, NULL),
(17, '1.6.d. Hak pelindungan atas kehormatan dan martabatnya.', 6, NULL, NULL),
(18, '1.7.a. Hak untuk memilih agama/keyakinan (forum internum)', 7, NULL, NULL),
(19, '1.7.b. Hak untuk menjalankan ibadah agama/keyakinan (forum eksternum)', 7, NULL, NULL),
(20, '1.7.c. Hak untuk memiliki keyakinan (conscience) politik/kebebasan berpikir dan praktik - praktiknya/ aktifitas berpikirnya', 7, NULL, NULL),
(21, '1.7.d. Hak atas kebebasan berpikir dan aktivitas berpikirnya ', 7, NULL, NULL),
(22, '1.8.a. Kebebasan untuk menyatakan ide dan pendapat secara lisan, tulisan, visual, atau bentuk lainnya,', 8, NULL, NULL),
(23, '1.8.a. Kebebasan untuk menyatakan ide dan pendapat secara lisan, tulisan, visual, atau bentuk lainnya, ', 8, NULL, NULL),
(24, '1.8.b. Kebebasan berpendapat termasuk dalam mencari, menerima, memilah, menyimpan, dan menyebarluaskan gagasan dan informasi', 8, NULL, NULL),
(25, '1.9.a. Perlindungan untuk berkumpul secara aman dan damai', 9, NULL, NULL),
(26, '1.10.a Kebebasan untuk membentuk serikat atau organisasi yang berbadan hukum, tidak berbadan hukum, atau bentuk lainnya.', 10, NULL, NULL),
(27, '1.10.b. Kebebasan menjadi anggota maupun keluar dari keanggotaan dalam suatu serikat atau organisasi.', 10, NULL, NULL),
(28, '1.11.a. Kebebasan memilih dan dipilih pada pemilihan umum berkala yang dilakukan melalui pemungutan suara secara langsung, umum, bebas, rahasia, jujur, dan adil.', 11, NULL, NULL),
(29, '1.11.b. Kebebasan untuk berpartisipasi dalam pelaksanaan urusan pemerintahan, baik secara langsung ataupun melalui wakil-wakil yang dipilih secara bebas', 11, NULL, NULL),
(30, '1.11.c. Partisipasi anak dalam kebijakan terkait anak', 11, NULL, NULL),
(31, '1.11.d. Aksesibilitas bagi penyandang disabilitas dan Masyarakat Hukum Adat (MHA) dalam memilih dan dipilih', 11, NULL, NULL),
(32, '1.11.e. Kesetaraan akses pada pelayanan publik bagi kelompok rentan', 11, NULL, NULL),
(33, '2.1.a. Pendidikan dasar dan menengah bersifat wajib dan cuma-cuma/  tanpa memungut biaya', 12, NULL, NULL),
(34, '2.1.b. Ketersediaan (termasuk sarana dan prasarana, dan tenaga pendidik) pada berbagai bentuk dan tingkat pendidikan dasar dan menengah (formal, informal dan inklusi)', 12, NULL, NULL),
(35, '2.1.c. Aksesibilitas fisik pada berbagai bentuk dan tingkat pendidikan dasar dan menengah (formal, informal dan inklusi)', 12, NULL, NULL),
(36, '2.1.d. Jaminan non-diskriminasi bagi kelompok rentan pada ketersediaan dan aksesibilitas di berbagai bentuk dan tingkat pendidikan dasar dan menengah (formal, informal dan inklusi)', 12, NULL, NULL),
(37, '2.2.a. Kesempatan kerja bagi setiap orang, baik laki-laki maupun perempuan, penyandang disabilitas, dan minoritas, untuk mendapatkan pekerjaan yang sama, sebanding, setara atau serupa, dan berhak atas upah serta syarat-syarat perjanjian kerja (non-diskrim', 13, NULL, NULL),
(38, '2.2.b. Hak untuk memilih pekerjaan sesuai dengan bakat, minat, kecakapan, kemampuan dan perlindungan dari pengangguran', 13, NULL, NULL),
(39, '2.2.c. Hak atas kondisi kerja yang adil dan aman', 13, NULL, NULL),
(40, '2.2.d. Hak berserikat', 13, NULL, NULL),
(41, '2.2.e. Hak atas bebas dari kerja paksa/eksploitasi', 13, NULL, NULL),
(42, '2.3.a. Kepastian hukum atas kepemilikan tempat tinggal', 14, NULL, NULL),
(43, '2.3.b. Rumah yang terjangkau secara ekonomi ', 14, NULL, NULL),
(44, '2.3.c. Rumah yang aman dan layak huni', 14, NULL, NULL),
(45, '2.3.d. Akses terhadap lingkungan perumahan yang sehat dan aman (lokasi)', 14, NULL, NULL),
(46, '2.3.e. Kesetaraan setiap orang atas perumahan. (secara khusus untuk gender, MHA, dan disabilitas)', 14, NULL, NULL),
(47, '2.3.f. Bebas dari penggusuran paksa', 14, NULL, NULL),
(48, '2.4.a. Akses terhadap air yang memadai, berkualitas, sehat, aman, terjangkau (secara fisik dan ekonomi), dan berkelanjutan', 15, NULL, NULL),
(49, '2.4.b. Hak atas air baik untuk perseorangan, rumah tangga, maupun komunitas tanpa diskriminasi', 15, NULL, NULL),
(50, '2.5.a. Lingkungan yang bebas dari pencemaran, perusakan, kerusakan untuk hidup, bekerja, dan aktivitas lainnya', 16, NULL, NULL),
(51, '2.5.b. Ekosistem dan keanekaragaman hayati yang berkelanjutan', 16, NULL, NULL),
(52, '2.5.c. Terjaminnya iklim yang aman dari dampak buruk perubahan iklim', 16, NULL, NULL),
(53, '2.6.a. Hak atas ketersediaan atas layanan kesehatan yang aman, terjangkau, efektif, dan berkualitas. ', 17, NULL, NULL),
(54, '2.6.b. Hak atas akses fisik, ekonomi, dan informasi dalam layanan kesehatan yang aman, terjangkau, efektif, dan berkualitas. ', 17, NULL, NULL),
(55, '2.6.c. Hak atas kesehatan bagi kebutuhan kelompok khusus (seperti anak, perempuan, penyandang disabilitas, masyarakat adat, kondisi sosial ekonomi, masyarakat daerah 3T, dan lainnya)', 17, NULL, NULL),
(56, '2.7.a. Ketersediaan dan akses informasi bagi setiap orang tentang Jaminan Sosial ', 18, NULL, NULL),
(57, '2.7.b. Jaminan atas risiko sosial dan kedaruratan (healthcare, prolong period of sickness, lansia, disabilitas,  fakir miskin, dan anak terlantar, pengangguran)', 18, NULL, NULL),
(58, '2.7.c. Kelayakan dan Kecukupan Jaminan Sosial', 18, NULL, NULL),
(59, '2.7.d. Akses terhadap sistem jaminan sosial yang terjangkau dan efektif, dengan memperhatikan kebutuhan kelompok khusus ', 18, NULL, NULL),
(60, '2.8.a. Hak setiap orang atas ketersedian bahan pangan yang layak, aman, bergizi, dan bebas dari substansi/zat yang merugikan serta memperhatikan kebutuhan diet khusus', 19, NULL, NULL),
(61, '2.8.b. Hak setiap orang atas ketersedian pangan yang berkelanjutan', 19, NULL, NULL),
(62, '2.8.c. Hak setiap orang atas keterjangkauan pangan', 19, NULL, NULL),
(63, '2.9.a. Hak setiap orang, baik secara individual maupun berkelompok, untuk berpartisipasi, mengelola, dan memanfaatkan sumber daya alam bagi kelangsungan hidup dan kehidupan', 20, NULL, NULL),
(64, '2.9.b. Hak setiap orang untuk mengakses, mendapatkan, dan menggunakan sumber daya alam untuk kelangsungan hidup', 20, NULL, NULL),
(65, '2.9.c. Jaminan Perlindungan MHA dalam penikmatan dan pemanfaatan tanah adat yang berupa tanah, air, dan/atau perairan beserta sumber daya alam yang ada di atasnya dengan batas-batas tertentu.', 20, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `variabels`
--

CREATE TABLE `variabels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_variabel` varchar(255) NOT NULL,
  `nilai` int(11) NOT NULL,
  `dimensi_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variabels`
--

INSERT INTO `variabels` (`id`, `nama_variabel`, `nilai`, `dimensi_id`, `created_at`, `updated_at`) VALUES
(1, '1.1.a.1. Putusan Hukuman mati yang mendapat pengurangan dalam proses pengadilan lanjutan', 80, 1, NULL, '2023-11-28 21:32:28'),
(2, '1.1.a.2. Persentase Perkara yang dijatuhi hukuman mati berkekuatan hukum tetap yang mendapatkan pengurangan hukuman melalui Grasi dan Amnesti', 85, 1, NULL, NULL),
(3, '1.1.b.1. Kasus penghilangan paksa', 60, 1, NULL, '2023-12-01 05:01:55'),
(4, '1.1.b.2. Kasus pembunuhan secara sewenang-wenang', 90, 1, NULL, NULL),
(5, '1.2.a.1. Persentase Korban Penyiksaan yang memperoleh pelindungan', 61, 1, NULL, NULL),
(6, '1.2.a.2. Persentase Permohonan Pelindungan dari tindak penyiksaan yang memperoleh pelindungan', 51, 1, NULL, NULL),
(7, '1.2.b.1. Jumlah Kasus Pasung', 30, 1, NULL, '2023-12-01 05:01:35'),
(8, '1.2.b.2. Persentase Lapas yang mengalami overcrowding', 64, 1, NULL, NULL),
(9, '1.2.b.3. Tindak lanjut pengaduan dari Tahanan/WBP yang mendapatkan perlakuan/penghukuman keji, tidak manusiawi, dan merendahkan martabat manusia', 31, 1, NULL, NULL),
(10, '1.3.a.1. Korban Tindak Pidana Perdagangan Orang (TPPO)', 98, 1, NULL, NULL),
(11, '1.3.a.2. Persentase Korban Tindak Pidana Perdagangan Orang (TPPO) yang mendapat restitusi', 39, 1, NULL, NULL),
(12, '1.3.a.3. Persentase Korban Tindak Pidana Perdagangan Orang (TPPO)  yang mendapat rehabilitasi', 80, 1, NULL, NULL),
(13, '1.4.a.1. Penanganan atas Tindak pidana terkait ancaman kemanan pribadi', 65, 1, NULL, NULL),
(14, '1.4.a.2. Ketersediaan sistem/mekanisme keamanan lingkungan', 58, 1, NULL, NULL),
(15, '1.4.b.1. Kasus penangkapan atau penahanan sewenang-wenang', 55, 1, NULL, NULL),
(16, '1.4.b.2. Penanganan kasus penangkapan atau penahanan sewenang-wenang', 53, 1, NULL, NULL),
(17, '1.5.a.1. Penikmatan hak untuk memperoleh proses peradilan sederhana, cepat dan berbiaya ringan', 87, 1, NULL, NULL),
(18, '1.5.a.2. Penerapan asas cepat dalam proses peradilan', 61, 1, NULL, NULL),
(19, '1.5.a.3. Penerapan asas berbiaya ringan dalam proses peradilan', 42, 1, NULL, NULL),
(20, '1.5.b.1. Proporsi masyarakat miskin yang menerima bantuan hukum', 36, 1, NULL, NULL),
(21, '1.5.c.1. Pengaduan/laporan dugaan pelanggaran kode etik dan Perilaku Polisi di Propam; Jaksa di Komisi Kejaksaan; Hakim di Komisi Yudisial', 74, 1, NULL, NULL),
(22, '1.5.c.2. Jumlah Perkara dengan status putusan bebas dari dakwaan/lepas pada Tingkat Peradilan Pertama (PN)', 70, 1, NULL, '2023-12-01 05:01:13'),
(23, '1.5.d.1. Persentase permohonan upaya hukum yang diperoses', 65, 1, NULL, NULL),
(24, '1.5.e.1. Proporsi Anak yang Berkonflik dengan Hukum yang Diproses Secara Diversi', 85, 1, NULL, NULL),
(25, '1.5.f.1. Persentase penyandang disabilitas yang berkonflik dengan hukum di tingkat pengadilan', 50, 1, NULL, NULL),
(26, '1.6.a.1. Kebocoran data pribadi yang mendapat penanganan', 64, 1, NULL, NULL),
(27, '1.6.b.1.Jumlah perkara Praperadilan Pidana perihal sah atau tidaknya penggeledahan', 37, 1, NULL, NULL),
(28, '1.6.b.2. Jumlah Putusan Terkaiat perkara Praperadilan Pidana perihal sah atau tidaknya penggeledahan', 78, 1, NULL, NULL),
(29, '1.6.c.1. Kasus penyadapan sarana elektronik yang dilakukan secara sewenang-wenang', 41, 1, NULL, NULL),
(30, '1.6.c.2. Penanganan penyadapan secara sewenang-wenang', 93, 1, NULL, NULL),
(31, '1.6.d.1. Penanganan kasus pencemaran nama baik atau merendahkan martabat seseorang', 88, 1, NULL, NULL),
(32, '1.7.a.1. Jumlah Pengaduan terkait pelanggaran hak atas Kebebasan Pribadi (khusnya Kebebasan Beragama dan Berkeyakinan)', 77, 1, NULL, NULL),
(33, '1.7.b.1. Hak untuk menjalankan ibadah agama/keyakinan (forum eksternum)', 88, 1, NULL, NULL),
(34, '1.7.c.1. Kasus Pemaksaan untuk memiliki atau tidak memiliki keyakinan politik dan/atau melaksanakan ataupun tidak melaksanakan praktiknya \r\nPemaksaan keyakinan (conscience) politik atau kebebasan berpikir dan/atau praktiknya/aktifitas berpikirnya', 71, 1, NULL, NULL),
(35, '1.7.d.1. Pemaksaan untuk berpikir dan/atau menjalankan atau tidak menjalankan aktivitas berpikirnya', 45, 1, NULL, NULL),
(36, '1.8.a.1. Penanganan dalam kasus kriminalisasi terhadap kebebasan berpendapat dan berekspresi', 65, 1, NULL, NULL),
(37, '1.8.a.2. Jumlah Pengaduan terkait pelanggaran Hak atas Kebebasan Pribadi dalam berpendapat dan berekspresi', 36, 1, NULL, NULL),
(38, '1.8.a.3. Indeks Kemerdekaan Pers', 60, 1, NULL, NULL),
(39, '1.8.b.1. Indeks Keterbukaan Informasi Publik', 92, 1, NULL, NULL),
(40, '1.9.a.1. Kasus pembubaran kebebasan berkumpul secara sewenang-wenang', 80, 1, NULL, NULL),
(41, '1.10.a.1. Ormas/Orpol yang dibubarkan secara sewenang-wenang', 51, 1, NULL, NULL),
(42, '1.10.a.2. Serikat Buruh yang dibubarkan oleh Perusahaan Pemberi Kerja', 82, 1, NULL, NULL),
(43, '1.10.b.1. Orang yang dipaksa untuk bergabung atau dipaksa untuk keluar dari Ormas/Serikat secara sewenang-wenang', 68, 1, NULL, NULL),
(44, '1.11.a.1. Kasus pemilihan umum yang tidak berlangsung secara langsung, umum, bebas, rahasia, jujur, dan adil', 51, 1, NULL, NULL),
(45, '1.11.b.1. Persentase Masyarakat yang Pernah dilibatkan dalam proses pembahasan peraturan perundang - undangan', 79, 1, NULL, NULL),
(46, '1.11.c.1. Proporsi pemerintah (pusat dan daerah) yang memiliki forum anak dalam pengambilan kebijakan untuk anak', 57, 1, NULL, NULL),
(47, '1.11.d.1. Tersedianya Akomodasi yang Layak bagi Penyandang Disabilitas untuk memilih dalam pemilihan umum', 56, 1, NULL, NULL),
(48, '1.11.d.2. Kasus diskriminasi bagi penyandang disabilitas dan MHA untuk memilih dan dipilih dalam pemilihan umum', 51, 1, NULL, NULL),
(49, '1.11.e.1. Jumlah pengaduan terkait tindakan diskriminasi terhadap pelayanan publik', 91, 1, NULL, NULL),
(50, '2.1.a.1. Perbandingan Ketersedian Sekolah Pendidikan Dasar dan Menengah Negeri dengan Sekolah Pendidikan Dasar dan Menengah Swasta', 32, 2, NULL, NULL),
(62, '2.1.d.2. Proporsi Peserta Didik Masyarakat Hukum Adat yang dapat mengakses Pendidikan', 74, 2, NULL, NULL),
(63, '2.1.d.3. Rasio Jumlah Sekolah Pendidikan Dasar dan Pendidikan Menengah (SD/MI, SMP/MTS, SMA/MA dan  bentuk lain sederajat) yang telah melaksanakan pendidikan inklusi', 77, 2, NULL, NULL),
(64, '2.2.a.1. Proporsi perusahaan/institusi pemerintah yang telah mempekerjakan penyandang disabilitas', 67, 2, NULL, NULL),
(65, '2.2.a.2. persentase penanganan kasus ketenagakerjaan terkait dengan diskriminasi berbasis gender atau berdasarkan hal lainnya (sesuai dengan PUU)', 71, 2, NULL, NULL),
(66, '2.2.a.3. Persentase Pekerja Penyandang Disabilitas', 99, 2, NULL, NULL),
(67, '2.2.b.1. Persentase Jumlah Pengangguran Terbuka yang mengakses program pengurangan pengangguran', 52, 2, NULL, NULL),
(68, '2.2.b.2. Tingkat Partisipasi Angkatan Kerja (TPAK)', 50, 2, NULL, NULL),
(69, '2.2.c.1. Persentase penanganan pelanggaran hak-hak ketenagakerjaan dengan jumlah kasus yang dilaporkan', 49, 2, NULL, NULL),
(70, '2.2.c.2. Proporsi Pekerja yang mendapatkan upah yang sesuai UMP', 34, 2, NULL, NULL),
(71, '2.2.c.3. Proporsi Pekerja yang telah memperoleh jaminan Cuti tahunan/cuti sakit/istirahat haid/cuti bersalin tanpa memotong upah/gaji pokok', 41, 2, NULL, NULL),
(72, '2.2.c.4. proporsi perusahaan/ instasi pemerintahan yang telah memiliki fasilitas laktasi/ daycare', 68, 2, NULL, NULL),
(73, '2.2.c.5. Proporsi Pekerja yang memiliki Prosedur perjanjian tertulis/kontrak kerja/surat\r\nkeputusan (SK)', 73, 2, NULL, NULL),
(74, '2.2.d.1. proporsi tenaga kerja yang menjadi anggota serikat pekerja', 74, 2, NULL, NULL),
(75, '2.2.e.1. Persentase penanganan kasus pekerja terburuk anak/ eksploitasi ekonomi anak', 79, 2, NULL, NULL),
(76, '2.2.e.2. persentase penanganan kasus kerja paksa', 67, 2, NULL, NULL),
(77, '2.3.a.1. Proporsi Rumah Tangga yang memiliki sertifikat kepemilikan tanah/bangunan tempat tinggal yang sah', 54, 2, NULL, NULL),
(78, '2.3.a.2. Proporsi kasus penggusuran lahan dan rumah karena ketiadaan sertifikat yang berhasil ditangani', 39, 2, NULL, NULL),
(79, '2.3.b.1. Proporsi Rumah Tangga yang mendapatkan Subsidi Rumah', 75, 2, NULL, NULL),
(80, '2.3.b.2. Proporsi Masyarakat Berpenghasilan Rendah (MBR) yang dapat mengakses dukungan pemerintah untuk memperoleh rumah', 35, 2, NULL, NULL),
(81, '2.3.c.1. Persentase Rumah Tangga yang Memiliki Akses Terhadap Hunian Yang Layak Dan Terjangkau Menurut Daerah Tempat Tinggal, (Persen)', 32, 2, NULL, NULL),
(82, '2.3.d.1. Proporsi rumah tangga yang menempati rumah yang terjangkau dari Fasilitas Umum dan Fasilitas Sosial', 72, 2, NULL, NULL),
(83, '2.3.d.2. Potensi penduduk terpapar pada setiap bencana', 35, 2, NULL, NULL),
(84, '2.3.e.1. Proporsi Perempuan yang memiliki sertifikat kepemilikan tanah bangunan tempat tinggal', 58, 2, NULL, NULL),
(85, '2.3.e.2. Proporsi penyediaan rumah khusus bagi masyarakat rentan/Pemerlu Pelayanan Kesejahteraan Sosial (PPKS) (sesuai program rumah khusus PUPR & Kemsos)', 65, 2, NULL, NULL),
(86, '2.3.f.1. Proporsi kasus penggusuran paksa yang berhasil ditangani', 98, 2, NULL, NULL),
(87, '2.4.a.1. Persentase rumah tangga yang menggunakan layanan air minum yang dikelola secara aman', 86, 2, NULL, NULL),
(88, 'Indeks Kualitas Air Nasional', 43, 2, NULL, NULL),
(89, '2.4.b.1. Persentase rumah tangga pada kelompok status ekonomi miskin yang menggunakan layanan air minum yang dikelola secara aman', 40, 2, NULL, NULL),
(90, '2.4.b.2. Pengaduan atas pembatasan akses terhadap air yang berhasil ditangani', 81, 2, NULL, NULL),
(91, '2.4.b.3. Proporsi bencana krisis air yang mendapatkan penanganan', 90, 2, NULL, NULL),
(92, '2.5.a.1. Indeks Kualitas Lingkungan Hidup (IKA, IKU, IKL, dan IKAL)', 52, 2, NULL, NULL),
(93, '2.5.a.2. Indeks Pencemaran', 82, 2, NULL, NULL),
(94, 'Indeks Kualitas Udara', 68, 2, NULL, NULL),
(95, '2.5.a.3. Persentase Kasus dugaan Pencemaran dan/atau  pengerusakan lingkungan hidup yang berhasil ditangani', 49, 2, NULL, NULL),
(96, '2.5.b.1. Luas Kawasan Bernilai Konservasi Tinggi (HCV)', 36, 2, NULL, NULL),
(97, '2.5.b.2. Proporsi kawasan hutan terhadap total luas lahan', 75, 2, NULL, NULL),
(98, '2.5.b.3. Jumlah Kawasan Konservasi Perairan dan Daratan', 98, 2, NULL, NULL),
(99, '2.5.b.4. Luas Kawasan yang terverifikasi sebagai Perlindungan Keanekaragaman Hayati', 96, 2, NULL, NULL),
(100, '2.5.c.1. Potensi penurunan emisi gas rumah kaca (GRK)', 56, 2, NULL, NULL),
(101, '2.5.c.2. Potensi penurunan intensitas emisi gas rumah kaca (GRK)', 59, 2, NULL, NULL),
(102, '2.5.c.2. Potensi penurunan intensitas emisi gas rumah kaca (GRK)', 59, 2, NULL, NULL),
(103, '2.5.c.3. Indeks Kualitas Ekosistem Gambut', 93, 2, NULL, NULL),
(104, '2.5.c.4. Indeks Kualitas Tutupan Lahan', 93, 2, NULL, NULL),
(105, '2.6.a.1. Persentase Fasilitas Kesehatan yang memenuhi standar sarana-prasarana kesehatan', 42, 2, NULL, NULL),
(106, '2.6.a.2. Rasio Tenaga Kesehatan yang berkualitas terhadap kebutuhan pelayanan kesehatan', 74, 2, NULL, NULL),
(107, '2.6.a.3. Puskesmas dengan ketersediaan paket obat esensial (standar 40 jenis obat esensial) telah mencapai target yang ditetapkan', 77, 2, NULL, NULL),
(108, '2.6.b.1. Proporsi Penduduk Miskin yang memperoleh layanan kesehatan gratis', 99, 2, NULL, NULL),
(109, '2.6.b.2. Proporsi Kecamatan yang Sudah memiliki Puskesmas', 60, 2, NULL, NULL),
(110, '2.6.b.3. Proporsi Kabupaten/Kota Yang sudah memiliki Rumah Sakit (perlu dicek kembali mengenai tipe Rumah sakit)', 76, 2, NULL, NULL),
(111, '2.6.b.4. Tersedianya Media Komunikasi, Informasi, dan Edukasi Kesehatan hingga tingkat Desa', 95, 2, NULL, NULL),
(112, '2.6.c.1. Angka kematian ibu melahirkan', 63, 2, NULL, NULL),
(113, '2.6.c.2. Angka Kematian Bayi', 93, 2, NULL, NULL),
(114, '2.6.c.3. Prevelensi Wasting pada Balita', 89, 2, NULL, NULL),
(115, '2.6.c.4. Prevalensi Balita Stunting', 92, 2, NULL, NULL),
(116, '2.6.c.5. Prevalensi Balita Gizi Buruk', 36, 2, NULL, NULL),
(117, '2.6.c.6. Layanan kesehatan bagi Orang Dengan Gangguan Jiwa (ODGJ)', 59, 2, NULL, NULL),
(118, '2.6.c.7. Layanan Kesehatan Bagi Masyarakat Hukum Adat (MHA)', 47, 2, NULL, NULL),
(119, '2.6.c.8. Layanan Kesehatan Bagi Penyandang Disabilitas dalam hal Habilitasi dan Rehabilitasi', 55, 2, NULL, NULL),
(120, '2.6.c.9. Layanan Kesehatan bagi masyarakat Daerah Tertinggal, Perbatasan, dan Kepulauan', 31, 2, NULL, NULL),
(121, '2.7.a.1. Persentase kepesertaan sistem jaminan sosial kesehatan', 84, 2, NULL, NULL),
(122, '2.7.a.2. Persentase pekerja yang memiliki jaminan sosial ketenagakerjaan', 79, 2, NULL, NULL),
(123, '2.7.a.3. Peserta jaminan sosial kesehatan yang dapat mengakses layanan kesehatan', 55, 2, NULL, NULL),
(124, '2.7.b.1. Persentase Pengangguran yang masuk dalam Program Kartu Prakerja', 49, 2, NULL, NULL),
(125, '2.7.b.2. Persentase orang yang mengalami disfungsi sosial yang menerima Layanan Rehabilitasi Sosial', 47, 2, NULL, NULL),
(126, '2.7.c.1. Kelayakan dan Kecukupan program jaminan sosial kesehatan terhadap layanan yang dibutuhkan', 88, 2, NULL, NULL),
(127, '2.7.c.2. Kelayakan dan Kecukupan program jaminan sosial ketenagakerjaan terhadap layanan yang dibutuhkan', 89, 2, NULL, NULL),
(128, '2.7.d.1. Proporsi masyarakat fakir miskin dan orang tidak mampu  yang menjadi Penerima Bantuan Iuran Jaminan Sosial Kesehatan', 36, 2, NULL, NULL),
(129, '2.7.d.2. Proporsi masyarakat diwilayah 3T yang menjadi Penerima Bantuan Iuran Jaminan Sosial Kesehatan', 71, 2, NULL, NULL),
(130, 'Hak atas perlindungan dan mekanisme pengakuan/ penikmatan hasil budaya, produksi ilmiah, sastra, dan seni', 74, 2, NULL, NULL),
(131, '2.8.a.1. Proporsi Kelompok Rawan Gizi yang memperoleh pelayanan gizi', 65, 2, NULL, NULL),
(132, '2.8.a.2. Produk pangan olahan yang menyertakan catatan kandungan gizi dan keamanannya', 36, 2, NULL, NULL),
(133, '2.8.a.3. korban bencana (alam, non alam, sosial) yang menerima bantuan pangan', 55, 2, NULL, NULL),
(134, '2.8.a.4. Angka kecukupan gizi', 41, 2, NULL, NULL),
(135, '2.8.b.1. Lahan pertanian pangan berkelanjutan yang dilindungi dalam rangka pengendalian alih fungsi lahan sawah', 67, 2, NULL, NULL),
(136, '2.8.b.2. Adanya program diversifikasi pangan di tingkat Provinsi', 58, 2, NULL, NULL),
(137, '2.8.b.3. Indeks Ketahanan Pangan', 84, 2, NULL, NULL),
(138, '2.8.b.4. Persentase desa yang telah memiliki strategi kemandirian pangan', 67, 2, NULL, NULL),
(139, '2.8.b.5. Jumlah Provinsi yang telah memiliki program pengawasan dan pengendalian ketersediaan pangan', 36, 2, NULL, NULL),
(140, '2.8.c.1. Anomali harga pangan (IAHP) nasional', 72, 2, NULL, NULL),
(141, '2.8.c.2. Proporsi pengeluaran rata-rata rumah tangga kelompok rentan/miskin yang digunakan untuk pembelian bahan pangan', 68, 2, NULL, NULL),
(142, '2.8.c.3. Kasus krisis pangan', 82, 2, NULL, NULL),
(143, '2.8.c.4. Keluarga Penerima Manfaat (KPM)/ Masyarakat Rawan Pangan dan Gizi yang menerima bantuan pangan', 43, 2, NULL, NULL),
(144, '2.9.a.1. Realisasi penetapan perhutanan sosial berdasarkan target capaian', 67, 2, NULL, NULL),
(145, '2.9.b.1. Persentase pemulihan bagi korban pelanggaran hak atas tanah dan sumber daya alam', 38, 2, NULL, NULL),
(146, '2.9.c.1. Persentase penetapan hutan adat', 39, 2, NULL, NULL),
(147, '2.9.c.2. Persentase MHA yang telah mendapatkan Penetapan Hutan Adat', 63, 2, NULL, NULL),
(148, '2.9.c.3. Persentase penetapan izin  kelola MHA di wilayah pesisir dan pulau-pulau kecil', 43, 2, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dimensis`
--
ALTER TABLE `dimensis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `indikators`
--
ALTER TABLE `indikators`
  ADD PRIMARY KEY (`id`),
  ADD KEY `indikators_dimensi_id_foreign` (`dimensi_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sub_indikators`
--
ALTER TABLE `sub_indikators`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_indikators_indikator_id_foreign` (`indikator_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `variabels`
--
ALTER TABLE `variabels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `variabels_dimensi_id_foreign` (`dimensi_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dimensis`
--
ALTER TABLE `dimensis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `indikators`
--
ALTER TABLE `indikators`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_indikators`
--
ALTER TABLE `sub_indikators`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `variabels`
--
ALTER TABLE `variabels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `indikators`
--
ALTER TABLE `indikators`
  ADD CONSTRAINT `indikators_dimensi_id_foreign` FOREIGN KEY (`dimensi_id`) REFERENCES `dimensis` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sub_indikators`
--
ALTER TABLE `sub_indikators`
  ADD CONSTRAINT `sub_indikators_indikator_id_foreign` FOREIGN KEY (`indikator_id`) REFERENCES `indikators` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `variabels`
--
ALTER TABLE `variabels`
  ADD CONSTRAINT `variabels_dimensi_id_foreign` FOREIGN KEY (`dimensi_id`) REFERENCES `dimensis` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
