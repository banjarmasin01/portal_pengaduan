-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2025 at 07:07 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kalselwe_pengaduandb`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_pengaduan`
--

CREATE TABLE `data_pengaduan` (
  `no_ticket` varchar(100) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `no_hp` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `pesan_pengaduan` mediumtext DEFAULT NULL,
  `judul_pengaduan` varchar(255) NOT NULL,
  `bukti` varchar(255) DEFAULT NULL,
  `kategori` int(11) DEFAULT NULL,
  `tujuan` int(11) DEFAULT NULL,
  `is_respond` tinyint(1) NOT NULL,
  `is_internal` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `data_pengaduan`
--

INSERT INTO `data_pengaduan` (`no_ticket`, `nama`, `no_hp`, `email`, `alamat`, `created_at`, `pesan_pengaduan`, `judul_pengaduan`, `bukti`, `kategori`, `tujuan`, `is_respond`, `is_internal`) VALUES
('0D3003336PF6', 'Ayu', '082149925464', 'ayu.yanti@bps.go.id', 'Banjarbaru', '2025-01-15 16:33:53', 'bau asap rokok yang cukup kuat di beberapa ruangan lantai 3 kanto BPS Prov Kalsel dan di toilet', 'Asap Rokok di lantai 3', NULL, 5, NULL, 1, 0),
('2A99305VP151', 'Anonim Internal - 1736899305', NULL, NULL, NULL, '2025-01-15 08:01:45', 'AC diruangan SDM tidak dingin, pengaturan sudah cold dan cenderung angin nya panas', 'Perbaikan Fasilitas Kantor', 'bukti/1736899305.jpg', 5, NULL, 1, 1),
('4K14602VMA', 'ncojdc', '08895194238', 'rofiqauliarohman@gmail.com', 'banjarbaru', '2025-11-28 14:23:22', 'cbdisxm', 'kj;eaknc.', 'bukti/1764314602.jpg', 4, NULL, 0, 0),
('4S27199H5S', 'Rofiq', '08895194238', 'rofiqauliarohman@gmail.com', 'jdiajbdd', '2025-12-04 12:46:39', 'sufiusfhufh', 'jzfjdbfd', 'bukti/1764827202.png', 9, NULL, 0, 0),
('5F54999VBC4M', 'masjay', '085730938086', 'masjay2022@gmail.com', 'Nguling', '2025-09-06 18:36:39', 'Anu loh', 'Anu', 'bukti/1757155000.jpg', 1, NULL, 1, 0),
('6Q27389C83', 'rofiq', '085175459928', 'rofiqauliarohman@gmail.com', 'banjarbaru', '2025-11-27 14:09:50', 'jbx,ZM jladbc', 'kj;eaknc.', 'bukti/1764227391.png', 1, NULL, 0, 0),
('CT74370XASOW', 'Anonim Internal - 1744074370', NULL, NULL, NULL, '2025-04-08 09:06:10', 'ada rembesan tetesan air dari saluran ac, sblumnya sdh baik, tp kembali bocor', 'Kebocoran saluran ac', 'bukti/1744074370.jpg', 12, NULL, 1, 1),
('I927411G11SO', 'oke gas', '087262366363', 'okegas@gmail.com', 'kalsel', '2025-03-06 10:16:51', 'oek gas', 'oke gas', NULL, 5, NULL, 1, 0),
('IW364299HGD1', 'Anonim Internal - 1736836429', NULL, NULL, NULL, '2025-01-14 14:33:49', 'AC diruangan SDM tidak dingin, pengaturan sudah cold dan cenderung angin nya panas', 'Perbaikan Fasilitas Kantor', 'bukti/1736836429.jpg', 5, NULL, 1, 1),
('KD19082M713F', 'Anonim Internal - 1736919082', NULL, NULL, NULL, '2025-01-15 13:31:22', 'Toilet lantai 1 atapnya jebol menyebabkan takut menggunakannya dikarenakan terkadang ada kotoran2 yg jatuh dan sering terdengar bunyi2an.', 'Toilet wanita lantai 1', 'bukti/1736919082.jpg', 9, NULL, 1, 1),
('KU47010NVCW1', 'Anonim Internal - 1736747010', NULL, NULL, NULL, '2025-01-13 13:43:30', 'izin menginfokan, hari ini jam 10 pagi tadi, lorong ujung lantai 3 dan ruangan terpapar bau asap rokok. \r\nkondisi : tidak ada yang merokok diruangan, tidak ada buka jendela, dan AC hidup. dan baunya tidak sebentar, cukup lama. \r\nini juga kadang terjadi beberapa hari sebelumnya.\r\nmohon bantuan dan solusinya.', 'Bau Asap Rokok di lantai 3', 'bukti/1736747010.jpg', 5, NULL, 1, 1),
('LD1138991IPZ', 'Bagus Abdurrohman', '089692775217', 'bagusabdurrohman21@gmail.com', 'JI. Hksn No. 10, Kuin Utara, Kec. Banjarmasin Utara, Kota Banjarmasin, Kalimantan Selatan 70124', '2022-11-23 21:49:49', 'saya belum di data', 'kegiatan regsosek 2022', '', 2, NULL, 1, 0),
('LJ3022248UHA', 'Ayu', '082149925464', 'ayu.yanti@bps.go.id', 'Banjarbaru', '2025-01-15 16:37:02', 'bau asap rokok yang cukup kuat di beberapa ruangan lantai 3 kantor BPS Prov Kalsel dan di toilet pada hari Rabu 15 Januari 2025', 'Asap Rokok di lantai 3', 'bukti/1736930222.jpg', 5, NULL, 1, 0),
('LX14841DZ0', 'ncojdc', '081256373387', 'rofiqauliarohman@gmail.com', 'banjarbaru', '2025-11-28 14:27:21', 'ded', 'kj;eaknc.', 'bukti/1764314841.jpg', 10, NULL, 0, 0),
('PD99686SDTHP', 'Anonim Internal - 1738299686', NULL, NULL, NULL, '2025-01-31 13:01:26', 'Sakelar listrik di ruang sosial di belakang kursi alvi nur laily hampir terlepas, membahayakan bagi orang yg lalu lalang', 'Sakelar listrik rusak', 'bukti/1738299686.jpg', 5, NULL, 1, 1),
('VK36536G7CU6', 'Anonim Internal - 1736836536', NULL, NULL, NULL, '2025-01-14 14:35:36', 'AC diruangan SDM tidak dingin, pengaturan sudah cold dan cenderung angin nya panas', 'Perbaikan Fasilitas Kantor', 'bukti/1736836536.jpg', 5, NULL, 1, 1),
('VX13108OJL', 'ncojdc', '08895194238', 'rofiqauliarohman@gmail.com', 'banjarbaru', '2025-11-28 13:58:29', 'xdyfcgvh', 'kj;eaknc.', 'bukti/1764313109.jpg', 3, NULL, 0, 0),
('YQ14318K9X', 'ncojdc', '08895194238', 'rofiqauliarohman@gmail.com', 'banjarbaru', '2025-11-28 14:18:38', 'cnds', 'kj;eaknc.', 'bukti/1764314318.jpg', 4, NULL, 0, 0),
('ZT39135IHIUF', 'Arsella Putri', '+6295606149084', 'arselaputri.bbm88@gmail.com', 'Martapura', '2025-03-13 12:12:15', 'Saya tidak bisa download data luas panen dan produksi padi 2024 (angka tetap) Provinsi Kalimantan Selatan.', 'Tidak bisa download data', NULL, 12, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(1, 'default', '{\"displayName\":\"App\\\\Jobs\\\\EmailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\EmailJob\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\EmailJob\\\":5:{s:4:\\\"data\\\";a:5:{s:6:\\\"ticket\\\";s:12:\\\"KY25512KLSKW\\\";s:4:\\\"nama\\\";s:6:\\\"Bianca\\\";s:5:\\\"email\\\";s:23:\\\"destablanco27@gmail.com\\\";s:15:\\\"judul_pengaduan\\\";s:85:\\\"Obat Penggugur Kandungan ( Cytotec 400 mg ) Cara Pakai Obat Aborsi Tanpa Efek Samping\\\";s:15:\\\"pesan_pengaduan\\\";s:10020:\\\"Obat Aborsi Cytotec Dan Obat Penggugur Kandungan 1-6 Bulan Aman Ampuh\\r\\nObat Aborsi 1 2 3 4 5 6 Bulan Cod, Penjual Obat Penggugur Kandungan Cytotec, Obat Gugurkan Kandungan, Tempat Jual Obat Cytotec, Alamat Jual Cytotec Obat Aborsi, Pusat Obat Gynaecosid Asli, Toko Penjual Obat Gastrul Ampuh, Klinik Menggugurkan Janin, Konsultasi Mengenai Penggugur Kehamilan, Kontak Penjual Obat Peluntur Kandungan Area, Grosir Obat Cytotec Terbesar, Layanan Menggugurkan Kandungan Terpercaya, Dokter Spesialis Aborsi, Apotik 24Jam Jual Obat Aborsi Pfizer, Jual Obat Aborsi Cytotec Usia 1 Bulan, Obat Aborsi Cytotec Usia 2 Bulan, Obat Cytotec Usia 3 Bulan, Obat Gastrul Usia 4 Bulan, Obat Aborsi Cytotec Usia 5 Bulan, Obat Aborsi Cytotec Usia 6 Bulan, Obat Aborsi Cytotec Usia 7 Bulan, Membantu Menggugurkan Kehamilan Tuntas, Info Aborsi Paling Akurat, Cara Aborsi Kandungan Kuat Dengan Aman, Efek Samping Obat Cytotec 400mg,\\r\\n\\r\\nCara Menggugurkan Kandungan ( Kehamilan ) Usia 1, 2, 3, 4, 5 Bulan Secara Mudah Tanpa Resiko Maupun Efek Samping Dengan Menggunakan Misoprostol Cytotec PFIZER 400mcg Berjenis Cytotec Dan Gastrul ( Obat Aborsi ) Untuk Menggugurkan Kandungan Dengan Cepat Dan Aman Selain Itu Banyak Jenis Obat Aborsi Yang Dapat Ditemukan Di Apotik Terdekat. Kami Jual Obat Telat Datang Bulan Serta Memberikan Solusi Bagi Anda Yang Ingin Menggugurkan Kandungan Dengan Aman Dengan Cara Pemakaian Dipandu\\/Dibimbing Secara Langsung Admin Kami Paket Obat Sudah Sampai Dan Tangan Customer, Obat Telat Datang Bulan Ini Dilakukan Wanita Hamil Baik Sudah Menikah Maupun Belum Menikah Langkah Sebelum Melakukan Aborsi Harus Mengetahui Usia Kehamilan, Jika Anda Tidak Tahu Atau Kurang Yakin Berapa Usia Kandungan Anda Bisa Bicara Sama Admi kami. Cytotec dan Gastrul Sangatlah Efektif Serta Aman Jika Di Bandingkan Dengan Obat Palsu Dan Rumor Yang Beredar Seperti Jamu Peluntur Kandungan, Pils Terlambat Bulan. Nanas Muda Ataupun Sejenisnya Jangan Pernah Melakukan Hal Bodoh Hanya Untuk 1 kata ( Coba \\u2013 Coba ). BERBAHAYA !!!! Web Terpercaya Disini Anda Mendapatkan Jual Obat Aborsi serta Mifrprex Dan Pembersih Dengan Kepastian Gugur Bukan Sekedar PHP, Jaminan Bersih Tanpa Harus Kuret Lagi Ke Dokkter, Serta Aman Karena Dibimbing Langsung Admin.\\r\\n\\r\\nFaktor Yang Menyebabkan Menstruasi Tidak Teratur\\r\\n-Faktor Usia : Jika Anda Masih Muda Atau Masih Remaja banyak Perubahan Hormon Yang Terjadi Pada Tubuh Yang Menyebabkan Terlambat Haid Tidak Teratur, Begitu Juga Saat Anda Menginjak Usia 30-40 Tahun, Akan Mengalami Penyesuai Kewanitaan Yang Berakibat Datang Tidak Teratur\\r\\n-Berat Badan : Masalah Ini Terbilangh Mengerikan Bagi Wanita, Karena Umumnya Wanita Pasti Ingin Memiliki Berat Badan Yang Ideal. Faktor Ini Berpengaruh Saat Anda Mengalami Perubahan Badan Entah Itu Di Atas Atau Di Bawah Idealnya Berat Badan Anda. Saat Berat badan Turun Secara Mendadak Itu Bisa Mengakibatkan Terlambat Bulan Menjadi Tidak Teratur Karena Fungsi Organ Tidak Bekerja Maksimal Termasuk Organ Kewanitaan.\\r\\n- Faktor Pikkiran Atau Psiologis : Pikiran Termasuk Faktor Penyebab Anda Mengalami Terlambat Bulan Seperti Stres. Hal Itu Akan Mempegaruhi Keseimbangan Hormon Sehingga Memperlambat Ovulusi Ovarium. Stres Bisa Terjadi Karena Lelah, Masalah, Dan Lain Lain.\\r\\n-Lalu Apa Yang Terjadi Anda Mengkomsumsi Obat Telat Datang Bulan Padahal Anda Sedang Tidak Hamil \\u2026. ? Jawabnya Tidak Akan Ada Masalah\\\\ Dan Efek Samping Berbahaya Yang Terjadi Pada Diri Anda. Karena Obat Telat Datang Bulan Yang Kami Jual Terbukti Aman Dan 100% Manjur Untuk Masalah Terlambat Haid Serta Obat Aborsi Penggugur Kandungan.\\r\\n\\r\\nPesan Langsung Klik Disini = > \\r\\nhttps:\\/\\/api.whatsapp.com\\/send?phone=6281254445552&text=Halo%20Admin%20Saya%20Mau%20Order%20Obat\\r\\n\\r\\nObat Aborsi Penggugur Kandungan Misoprostol Cytotec Asli  \\r\\nDi sini kami menjual berbagai macam obat aborsi cytotec misoprostol pfizer asli RESMI PFIZER, obat penggugur kandungan cytotec asli Apotik Penjual Obat Aborsi belakangan ini banyak sekali yang mengaku bidan yang bisa menggugurkan kandungan ( aborsi ) atau dokter, saya harap anda hati2 untuk bidan kuret, karena alat kuret hanya dokter yang mempunyai alat tersebut, kalau si bidan atau si dokter tersebut menawarkan obat aborsi cytotec, atau obat aborsi lainnya, pastikan dulu website atau blognya mempunyai bukti bahwa dia benar2 memiliki obat untuk aborsi janin dan kandungan tersebut, jadi kalau sebuah blog tidak punya bukti memiliki obat jangan coba2 membeli dari web atau blog tersebut, obat saja tidak punya lalu apa yang mau dikirim ?\\r\\n\\r\\nBagi wanita di jika ingin menggugurkan kandungannya karena terbelit masalah yang sangat serius,misalnya, ada penyakit yang mengancam keselamatan sang ibu yang mengandungnya,masalah ekonomi, hasil pemerkosaan, maupun hasil hubungan gelap dan ternyata pasangannya tidak mau bertanggung jawab, oleh sebab itu jika anda tersandung masalah tersebut dan jika anda ingin melakukan tindakan aborsi dengan menggunkan obat, anda tidak salah tempat, karena disini menyediakan Obat Penggugur Kandungan yang bisa anda beli disini.\\r\\n\\r\\nBagaimana cara mendapatkan obat di Apotik Penjual Obat Aborsi Cytotec ? kami akan memberikan kemudahan untuk anda tanpa harus mencari atau membawa resep dokter, Obat cytotec untuk aborsi merupakan tahap bagaimana seseorang dalam melakukan tindakan menggugurkan sebuah kehamilan atau kandungan dengan metode obat yang di dapat di kami dengan cara dan langkah-langkah yang diberikan oleh pihak kami yang ahli dalam proses pengguguran sebuah kandungan yang berusia 1 hingga 6 bulan lamanya obat aborsi yang tingkat keberhasilannya mencapai 100% karena obat inisudah sangat banyak digunakan bagi wanita yang tidak ingin meneruskan kandungan dikarenakan sesuatu hal tertentu, obat ini mempunyai nama Mifepristone ( juga dikenal dengan nama pil abortus, RU 486, Mifegyn, Mifeprex ), dan Misoprostol (juga dikenal dengan nama Cytotec, Arthrotec, Oxaprost, Cyprostol, Mibetec,Prostokos or Misotrol ). sebelum anda melakukan yang lebih bersifat riskan lebih baiknya anda berfikir untuk lebih baiknya sebelum menggunakan jasa kami ini.\\r\\n\\r\\nTips Menghindari Penjual Obat Aborsi Penggugur Kandungan Cytotec Palsu:\\r\\n-Hindari penawaran dengan harga yang murah \\/murahan hasil pasti (GAGAL)\\r\\n-Layanan Setiap Waktu, bisa di telepon dan dengan Respon yang baik & cepat\\r\\n-Mendapatkan No Resi Pengiriman supaya anda bisa cek melalui J&TJNE\\/TIKI\\/POS terdeka tuntuk mengetahui \\/ memastikan anda.\\r\\nAda berbagai BUKTI nyata tanpa rekayasa &TERPERCAYA.\\r\\n*Mintalah foto obat dengan menyertakan alamat anda di sampingnya sebelum anda mentransfer pembayaranya.\\r\\n*Jangan membeli obat di website yang tidak resmi, karena website resmi tidak memakai kalimat blog gratisan.web resmi kami https:\\/\\/housemedical.net\\/\\r\\n*Ingat !!! Obat yang asli tidak ada warna lain selain warna putih& bentuknya cuma segi enam bukan yang lain dan isi paket sama yang beda dosis obatnya saja, dalam isi paket ada Empat jenis obat yaitu: Cytotec misoprostol 200mcg, Gastrul, Mifeprex \\/ mifepristone 200mcg dan pembersih\\r\\n\\r\\nEfek Samping Obat Aborsi Cytotec Misoprostol.\\r\\nMual atau perut kram mungkin terjadi. Jika salah satu dari efek-efek ini menetap atau memburuk, beritahu Kami segera.\\r\\nIngatlah bahwa dokter telah memberikan resep obat ini karena dia telah menilai bahwa manfaat kepada Anda lebih besar daripada risiko efek samping. Banyak orangmenggunakan obat ini tidak memiliki efek samping yang serius.\\r\\nDiare adalah umum dengan misoprostol dan biasanya terjadi sekitar dua minggu setelahAnda mulai mengambil, dan berlangsung selama sekitar satu minggu. Pastikan untuk menjaga asupan cairan dan mineral \\/ elektrolit untuk mencegah dehidrasi .Diare persisten kadang-kadang dapat menyebabkan kerugian besar cairan tubuh dan mineral. Katakan kepada dokter Anda segera jika Anda mengembangkan semua iniserius tanda-tanda dehidrasi dan mineral ketidakseimbangan parah pusing.\\r\\n\\r\\nKEUNGGULAN OBAT ABORSI AMPUH CYTOTEC MISOPROSTOL:\\r\\n1.Menggugurkan kandungan dengan cepat dan tuntas\\r\\n2.Hasil setelah mengkonsumsi obat cytotec dan gastrul seperti keguguran alami\\r\\n3.Tidak mengeluarkan biaya banyak\\r\\n4.Dapat digunakan di awal masa kehamilan\\r\\n5.Tidak perlu intervensi bedah\\r\\n6.Tingkat keberhasilan mencapai 99%\\r\\n\\r\\nHimbauan: Bagi Anda Yang Benar-benar Ingin Menggugurkan Kandungan Sekarang Ini Banyak Sekali Pasien Yang Datang Dan Mengeluh Dengan Beredar nya Obat Aborsi Palsu Yang Di Jual. Kami Menyarankan Kepada Anda Jangan Tergiur Dengan Harga Obat Aborsi Murah.\\r\\n\\uf0fc\\tObat Aborsi 1 Bulan\\r\\n1.\\tPaket Obat Aborsi 1 Bulan : Cara Menggugurkan Kandungan 1 Bulan\\r\\n2.\\tHarga Jenis Obat Standar : Rp. 700.000,- ( 3 Butir Misoprostol Cytotec, 4 Butir Cyrux Pushing The Fetus and  Misoprostol, 2 Butir Obat Anti Nyeri Analgesik )\\r\\n\\uf0fc\\tObat Aborsi 2 Bulan\\r\\n1.\\tPaket Obat Aborsi 2 Bulan : Cara Menggugurkan Kandungan 2 Bulan\\r\\n2.\\tHarga Jenis Obat Standar : Rp. 1.000.000,- ( 4 Butir Misoprostol Cytotec, 8 Butir Cyrux Pushing The Fetus and Misoprostol, 4 Butir Obat Anti Nyeri Analgesik )\\r\\n\\uf0fc\\tObat Aborsi 3 Bulan\\r\\n1.\\tPaket Obat Aborsi 3 Bulan : Cara Menggugurkan Kandungan 3 Bulan\\r\\n2.\\tHarga Jenis Obat Standar : Rp. 1.600.000,- ( 6 Butir Misoprostol Cytotec, 12 Butir Cyrux Pushing The Fetus and Misoprostol, 6 Butir Obat Anti Nyeri Analgesik )\\r\\n\\uf0fc\\tObat Aborsi 4 Bulan\\r\\n1.\\tPaket Obat Aborsi 4 Bulan : Cara Menggugurkan Kandungan 4 Bulan\\r\\n2.\\tHarga Jenis Obat Standar : Rp. 1.900.000,- ( 7 Butir Misoprostol Cytotec, 16 Butir Cyrux Pushing The Fetus and Misoprostol, 8 Butir Obat Anti Nyeri Analgesik )\\r\\n\\uf0fc\\tObat Aborsi 5 Bulan\\r\\n1.\\tPaket Obat Aborsi 5 Bulan : Cara Menggugurkan Kandungan 5 Bulan\\r\\n2.\\tHarga Jenis Obat Standar : Rp. 2.500.000,- ( 9 Butir Misoprostol Cytotec, 20 Butir Cyrux Pushing The Fetus and Misoprostol, 10 Butir Obat Anti Nyeri Analgesik )\\r\\n\\r\\nCARA PESAN OBAT ABORSI\\r\\nAnda Bisa Hubungi Kami CALL\\/SMS\\/WA : 081254445552\\r\\nAtau Bisa Klik Disini ( WA otomatis )\\r\\nNB: Jangan Tergiur Harga Murah. Pastikan Anda Membeli Obat Cytotec Asli di Website Resmi Seperti (.com)(.co.id).(.net)(.biz) Dll. Jangan Di Blog Gratisan. \\r\\nhttps:\\/\\/housemedical.net\\/\\r\\n\\\";}s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;}\"}}', 0, NULL, 1634325512, 1634325512),
(2, 'default', '{\"displayName\":\"App\\\\Jobs\\\\EmailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\EmailJob\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\EmailJob\\\":5:{s:4:\\\"data\\\";a:5:{s:6:\\\"ticket\\\";s:12:\\\"LD1138991IPZ\\\";s:4:\\\"nama\\\";s:17:\\\"Bagus Abdurrohman\\\";s:5:\\\"email\\\";s:28:\\\"bagusabdurrohman21@gmail.com\\\";s:15:\\\"judul_pengaduan\\\";s:22:\\\"kegiatan regsosek 2022\\\";s:15:\\\"pesan_pengaduan\\\";s:18:\\\"saya belum di data\\\";}s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;}\"}}', 0, NULL, 1669211389, 1669211389),
(3, 'default', '{\"displayName\":\"App\\\\Jobs\\\\EmailProgresJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\EmailProgresJob\",\"command\":\"O:24:\\\"App\\\\Jobs\\\\EmailProgresJob\\\":5:{s:4:\\\"data\\\";a:2:{s:13:\\\"progres_aduan\\\";O:39:\\\"Illuminate\\\\Database\\\\Eloquent\\\\Collection\\\":1:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:21:\\\"App\\\\ProgresAduanModel\\\":25:{s:8:\\\"\\u0000*\\u0000table\\\";s:17:\\\"progres_pengaduan\\\";s:10:\\\"timestamps\\\";b:0;s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:5:{s:2:\\\"id\\\";i:2;s:9:\\\"no_ticket\\\";s:12:\\\"LD1138991IPZ\\\";s:10:\\\"updated_at\\\";s:19:\\\"2023-03-27 09:54:53\\\";s:9:\\\"tanggapan\\\";s:21:\\\"sudah diltindalanjuti\\\";s:7:\\\"pelapor\\\";s:5:\\\"admin\\\";}s:11:\\\"\\u0000*\\u0000original\\\";a:5:{s:2:\\\"id\\\";i:2;s:9:\\\"no_ticket\\\";s:12:\\\"LD1138991IPZ\\\";s:10:\\\"updated_at\\\";s:19:\\\"2023-03-27 09:54:53\\\";s:9:\\\"tanggapan\\\";s:21:\\\"sudah diltindalanjuti\\\";s:7:\\\"pelapor\\\";s:5:\\\"admin\\\";}s:8:\\\"\\u0000*\\u0000casts\\\";a:0:{}s:8:\\\"\\u0000*\\u0000dates\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:9:\\\"\\u0000*\\u0000events\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:9:\\\"\\u0000*\\u0000hidden\\\";a:0:{}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:0:{}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}}}}s:5:\\\"aduan\\\";O:14:\\\"App\\\\AduanModel\\\":25:{s:8:\\\"\\u0000*\\u0000table\\\";s:14:\\\"data_pengaduan\\\";s:10:\\\"timestamps\\\";b:0;s:10:\\\"primaryKey\\\";s:9:\\\"no_ticket\\\";s:12:\\\"incrementing\\\";b:0;s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:10:{s:9:\\\"no_ticket\\\";s:12:\\\"LD1138991IPZ\\\";s:4:\\\"nama\\\";s:17:\\\"Bagus Abdurrohman\\\";s:5:\\\"no_hp\\\";s:12:\\\"089692775217\\\";s:5:\\\"email\\\";s:28:\\\"bagusabdurrohman21@gmail.com\\\";s:6:\\\"alamat\\\";s:95:\\\"JI. Hksn No. 10, Kuin Utara, Kec. Banjarmasin Utara, Kota Banjarmasin, Kalimantan Selatan 70124\\\";s:10:\\\"created_at\\\";s:19:\\\"2022-11-23 21:49:49\\\";s:15:\\\"pesan_pengaduan\\\";s:18:\\\"saya belum di data\\\";s:15:\\\"judul_pengaduan\\\";s:22:\\\"kegiatan regsosek 2022\\\";s:8:\\\"kategori\\\";i:2;s:10:\\\"is_respond\\\";i:1;}s:11:\\\"\\u0000*\\u0000original\\\";a:10:{s:9:\\\"no_ticket\\\";s:12:\\\"LD1138991IPZ\\\";s:4:\\\"nama\\\";s:17:\\\"Bagus Abdurrohman\\\";s:5:\\\"no_hp\\\";s:12:\\\"089692775217\\\";s:5:\\\"email\\\";s:28:\\\"bagusabdurrohman21@gmail.com\\\";s:6:\\\"alamat\\\";s:95:\\\"JI. Hksn No. 10, Kuin Utara, Kec. Banjarmasin Utara, Kota Banjarmasin, Kalimantan Selatan 70124\\\";s:10:\\\"created_at\\\";s:19:\\\"2022-11-23 21:49:49\\\";s:15:\\\"pesan_pengaduan\\\";s:18:\\\"saya belum di data\\\";s:15:\\\"judul_pengaduan\\\";s:22:\\\"kegiatan regsosek 2022\\\";s:8:\\\"kategori\\\";i:2;s:10:\\\"is_respond\\\";i:1;}s:8:\\\"\\u0000*\\u0000casts\\\";a:0:{}s:8:\\\"\\u0000*\\u0000dates\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:9:\\\"\\u0000*\\u0000events\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:9:\\\"\\u0000*\\u0000hidden\\\";a:0:{}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:0:{}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}}}s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;}\"}}', 0, NULL, 1679882093, 1679882093),
(4, 'default', '{\"displayName\":\"App\\\\Jobs\\\\EmailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\EmailJob\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\EmailJob\\\":5:{s:4:\\\"data\\\";a:5:{s:6:\\\"ticket\\\";s:12:\\\"GI60632XLQGE\\\";s:4:\\\"nama\\\";s:5:\\\"asdas\\\";s:5:\\\"email\\\";s:29:\\\"radioedukasi@kemdikdbud.go.id\\\";s:15:\\\"judul_pengaduan\\\";s:3:\\\"asd\\\";s:15:\\\"pesan_pengaduan\\\";s:8:\\\"asdaaaaa\\\";}s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;}\"}}', 0, NULL, 1690960632, 1690960632),
(5, 'default', '{\"displayName\":\"App\\\\Jobs\\\\EmailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\EmailJob\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\EmailJob\\\":5:{s:4:\\\"data\\\";a:5:{s:6:\\\"ticket\\\";s:12:\\\"9A24219GTZT7\\\";s:4:\\\"nama\\\";s:4:\\\"Abel\\\";s:5:\\\"email\\\";s:14:\\\"abel@gmail.com\\\";s:15:\\\"judul_pengaduan\\\";s:4:\\\"coba\\\";s:15:\\\"pesan_pengaduan\\\";s:4:\\\"coba\\\";}s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;}\"}}', 0, NULL, 1709624219, 1709624219),
(6, 'default', '{\"displayName\":\"App\\\\Jobs\\\\EmailProgresJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\EmailProgresJob\",\"command\":\"O:24:\\\"App\\\\Jobs\\\\EmailProgresJob\\\":5:{s:4:\\\"data\\\";a:2:{s:13:\\\"progres_aduan\\\";O:39:\\\"Illuminate\\\\Database\\\\Eloquent\\\\Collection\\\":1:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:21:\\\"App\\\\ProgresAduanModel\\\":25:{s:8:\\\"\\u0000*\\u0000table\\\";s:17:\\\"progres_pengaduan\\\";s:10:\\\"timestamps\\\";b:0;s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:5:{s:2:\\\"id\\\";i:3;s:9:\\\"no_ticket\\\";s:12:\\\"9A24219GTZT7\\\";s:10:\\\"updated_at\\\";s:19:\\\"2024-03-05 15:57:24\\\";s:9:\\\"tanggapan\\\";s:14:\\\"testing respon\\\";s:7:\\\"pelapor\\\";s:5:\\\"admin\\\";}s:11:\\\"\\u0000*\\u0000original\\\";a:5:{s:2:\\\"id\\\";i:3;s:9:\\\"no_ticket\\\";s:12:\\\"9A24219GTZT7\\\";s:10:\\\"updated_at\\\";s:19:\\\"2024-03-05 15:57:24\\\";s:9:\\\"tanggapan\\\";s:14:\\\"testing respon\\\";s:7:\\\"pelapor\\\";s:5:\\\"admin\\\";}s:8:\\\"\\u0000*\\u0000casts\\\";a:0:{}s:8:\\\"\\u0000*\\u0000dates\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:9:\\\"\\u0000*\\u0000events\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:9:\\\"\\u0000*\\u0000hidden\\\";a:0:{}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:0:{}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}}}}s:5:\\\"aduan\\\";O:14:\\\"App\\\\AduanModel\\\":25:{s:8:\\\"\\u0000*\\u0000table\\\";s:14:\\\"data_pengaduan\\\";s:10:\\\"timestamps\\\";b:0;s:10:\\\"primaryKey\\\";s:9:\\\"no_ticket\\\";s:12:\\\"incrementing\\\";b:0;s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:10:{s:9:\\\"no_ticket\\\";s:12:\\\"9A24219GTZT7\\\";s:4:\\\"nama\\\";s:4:\\\"Abel\\\";s:5:\\\"no_hp\\\";s:12:\\\"087816326423\\\";s:5:\\\"email\\\";s:14:\\\"abel@gmail.com\\\";s:6:\\\"alamat\\\";s:10:\\\"banjarbaru\\\";s:10:\\\"created_at\\\";s:19:\\\"2024-03-05 15:36:59\\\";s:15:\\\"pesan_pengaduan\\\";s:4:\\\"coba\\\";s:15:\\\"judul_pengaduan\\\";s:4:\\\"coba\\\";s:8:\\\"kategori\\\";i:5;s:10:\\\"is_respond\\\";i:1;}s:11:\\\"\\u0000*\\u0000original\\\";a:10:{s:9:\\\"no_ticket\\\";s:12:\\\"9A24219GTZT7\\\";s:4:\\\"nama\\\";s:4:\\\"Abel\\\";s:5:\\\"no_hp\\\";s:12:\\\"087816326423\\\";s:5:\\\"email\\\";s:14:\\\"abel@gmail.com\\\";s:6:\\\"alamat\\\";s:10:\\\"banjarbaru\\\";s:10:\\\"created_at\\\";s:19:\\\"2024-03-05 15:36:59\\\";s:15:\\\"pesan_pengaduan\\\";s:4:\\\"coba\\\";s:15:\\\"judul_pengaduan\\\";s:4:\\\"coba\\\";s:8:\\\"kategori\\\";i:5;s:10:\\\"is_respond\\\";i:1;}s:8:\\\"\\u0000*\\u0000casts\\\";a:0:{}s:8:\\\"\\u0000*\\u0000dates\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:9:\\\"\\u0000*\\u0000events\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:9:\\\"\\u0000*\\u0000hidden\\\";a:0:{}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:0:{}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}}}s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;}\"}}', 0, NULL, 1709625445, 1709625445),
(7, 'default', '{\"displayName\":\"App\\\\Jobs\\\\EmailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\EmailJob\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\EmailJob\\\":5:{s:4:\\\"data\\\";a:5:{s:6:\\\"ticket\\\";s:12:\\\"SU26449YNYZM\\\";s:4:\\\"nama\\\";s:9:\\\"coba lagi\\\";s:5:\\\"email\\\";s:19:\\\"abelwasap@gmail.com\\\";s:15:\\\"judul_pengaduan\\\";s:4:\\\"cona\\\";s:15:\\\"pesan_pengaduan\\\";s:4:\\\"test\\\";}s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;}\"}}', 0, NULL, 1709626449, 1709626449),
(8, 'default', '{\"displayName\":\"App\\\\Jobs\\\\EmailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\EmailJob\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\EmailJob\\\":5:{s:4:\\\"data\\\";a:5:{s:6:\\\"ticket\\\";s:12:\\\"Z0265313OBUP\\\";s:4:\\\"nama\\\";s:9:\\\"coba lagi\\\";s:5:\\\"email\\\";s:19:\\\"abelwasap@gmail.com\\\";s:15:\\\"judul_pengaduan\\\";s:4:\\\"cona\\\";s:15:\\\"pesan_pengaduan\\\";s:4:\\\"test\\\";}s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;}\"}}', 0, NULL, 1709626531, 1709626531),
(9, 'default', '{\"displayName\":\"App\\\\Jobs\\\\EmailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\EmailJob\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\EmailJob\\\":5:{s:4:\\\"data\\\";a:5:{s:6:\\\"ticket\\\";s:12:\\\"NQ26558ICXYI\\\";s:4:\\\"nama\\\";s:10:\\\"coba lagi2\\\";s:5:\\\"email\\\";s:19:\\\"abelwasap@gmail.com\\\";s:15:\\\"judul_pengaduan\\\";s:5:\\\"cona2\\\";s:15:\\\"pesan_pengaduan\\\";s:4:\\\"test\\\";}s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;}\"}}', 0, NULL, 1709626559, 1709626559),
(10, 'default', '{\"displayName\":\"App\\\\Jobs\\\\EmailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\EmailJob\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\EmailJob\\\":5:{s:4:\\\"data\\\";a:5:{s:6:\\\"ticket\\\";s:12:\\\"QP93210RVF4Z\\\";s:4:\\\"nama\\\";s:3:\\\"tes\\\";s:5:\\\"email\\\";s:13:\\\"tes@gmail.com\\\";s:15:\\\"judul_pengaduan\\\";s:7:\\\"tesasdf\\\";s:15:\\\"pesan_pengaduan\\\";s:11:\\\"sdfasdfasdf\\\";}s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;}\"}}', 0, NULL, 1713493211, 1713493211),
(11, 'default', '{\"displayName\":\"App\\\\Jobs\\\\EmailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\EmailJob\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\EmailJob\\\":5:{s:4:\\\"data\\\";a:5:{s:6:\\\"ticket\\\";s:12:\\\"FY42077GB7FF\\\";s:4:\\\"nama\\\";s:3:\\\"tes\\\";s:5:\\\"email\\\";s:13:\\\"tes@gmail.com\\\";s:15:\\\"judul_pengaduan\\\";s:3:\\\"tes\\\";s:15:\\\"pesan_pengaduan\\\";s:3:\\\"tes\\\";}s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;}\"}}', 0, NULL, 1713842077, 1713842077),
(12, 'default', '{\"displayName\":\"App\\\\Jobs\\\\EmailProgresJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\EmailProgresJob\",\"command\":\"O:24:\\\"App\\\\Jobs\\\\EmailProgresJob\\\":5:{s:4:\\\"data\\\";a:2:{s:13:\\\"progres_aduan\\\";O:39:\\\"Illuminate\\\\Database\\\\Eloquent\\\\Collection\\\":1:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:21:\\\"App\\\\ProgresAduanModel\\\":25:{s:8:\\\"\\u0000*\\u0000table\\\";s:17:\\\"progres_pengaduan\\\";s:10:\\\"timestamps\\\";b:0;s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:5:{s:2:\\\"id\\\";i:4;s:9:\\\"no_ticket\\\";s:12:\\\"FY42077GB7FF\\\";s:10:\\\"updated_at\\\";s:19:\\\"2024-07-09 00:40:11\\\";s:9:\\\"tanggapan\\\";s:43:\\\"terima kasih banyak, ujicoba \\/ tes berhasil\\\";s:7:\\\"pelapor\\\";s:5:\\\"admin\\\";}s:11:\\\"\\u0000*\\u0000original\\\";a:5:{s:2:\\\"id\\\";i:4;s:9:\\\"no_ticket\\\";s:12:\\\"FY42077GB7FF\\\";s:10:\\\"updated_at\\\";s:19:\\\"2024-07-09 00:40:11\\\";s:9:\\\"tanggapan\\\";s:43:\\\"terima kasih banyak, ujicoba \\/ tes berhasil\\\";s:7:\\\"pelapor\\\";s:5:\\\"admin\\\";}s:8:\\\"\\u0000*\\u0000casts\\\";a:0:{}s:8:\\\"\\u0000*\\u0000dates\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:9:\\\"\\u0000*\\u0000events\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:9:\\\"\\u0000*\\u0000hidden\\\";a:0:{}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:0:{}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}}}}s:5:\\\"aduan\\\";O:14:\\\"App\\\\AduanModel\\\":25:{s:8:\\\"\\u0000*\\u0000table\\\";s:14:\\\"data_pengaduan\\\";s:10:\\\"timestamps\\\";b:0;s:10:\\\"primaryKey\\\";s:9:\\\"no_ticket\\\";s:12:\\\"incrementing\\\";b:0;s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:10:{s:9:\\\"no_ticket\\\";s:12:\\\"FY42077GB7FF\\\";s:4:\\\"nama\\\";s:3:\\\"tes\\\";s:5:\\\"no_hp\\\";s:11:\\\"08123456789\\\";s:5:\\\"email\\\";s:13:\\\"tes@gmail.com\\\";s:6:\\\"alamat\\\";s:3:\\\"tes\\\";s:10:\\\"created_at\\\";s:19:\\\"2024-04-23 11:14:37\\\";s:15:\\\"pesan_pengaduan\\\";s:3:\\\"tes\\\";s:15:\\\"judul_pengaduan\\\";s:3:\\\"tes\\\";s:8:\\\"kategori\\\";i:1;s:10:\\\"is_respond\\\";i:1;}s:11:\\\"\\u0000*\\u0000original\\\";a:10:{s:9:\\\"no_ticket\\\";s:12:\\\"FY42077GB7FF\\\";s:4:\\\"nama\\\";s:3:\\\"tes\\\";s:5:\\\"no_hp\\\";s:11:\\\"08123456789\\\";s:5:\\\"email\\\";s:13:\\\"tes@gmail.com\\\";s:6:\\\"alamat\\\";s:3:\\\"tes\\\";s:10:\\\"created_at\\\";s:19:\\\"2024-04-23 11:14:37\\\";s:15:\\\"pesan_pengaduan\\\";s:3:\\\"tes\\\";s:15:\\\"judul_pengaduan\\\";s:3:\\\"tes\\\";s:8:\\\"kategori\\\";i:1;s:10:\\\"is_respond\\\";i:1;}s:8:\\\"\\u0000*\\u0000casts\\\";a:0:{}s:8:\\\"\\u0000*\\u0000dates\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:9:\\\"\\u0000*\\u0000events\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:9:\\\"\\u0000*\\u0000hidden\\\";a:0:{}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:0:{}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}}}s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;}\"}}', 0, NULL, 1720456811, 1720456811),
(13, 'default', '{\"displayName\":\"App\\\\Jobs\\\\EmailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\EmailJob\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\EmailJob\\\":5:{s:4:\\\"data\\\";a:5:{s:6:\\\"ticket\\\";s:12:\\\"1114006099XK\\\";s:4:\\\"nama\\\";s:4:\\\"coba\\\";s:5:\\\"email\\\";s:14:\\\"coba@gmail.com\\\";s:15:\\\"judul_pengaduan\\\";s:4:\\\"coba\\\";s:15:\\\"pesan_pengaduan\\\";s:4:\\\"coba\\\";}s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;}\"}}', 0, NULL, 1721614007, 1721614007),
(14, 'default', '{\"uuid\":\"846ef7e7-dd4e-4ba3-9ef5-524d8673b894\",\"displayName\":\"App\\\\Jobs\\\\EmailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\EmailJob\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\EmailJob\\\":1:{s:4:\\\"data\\\";a:5:{s:6:\\\"ticket\\\";s:12:\\\"4797292JQO5U\\\";s:4:\\\"nama\\\";s:18:\\\"Dyah Lusiyanti SST\\\";s:5:\\\"email\\\";s:24:\\\"dyah.lusiyanti@bps.go.id\\\";s:15:\\\"judul_pengaduan\\\";s:8:\\\"jjjkkkks\\\";s:15:\\\"pesan_pengaduan\\\";s:11:\\\"sfsafkjasfa\\\";}}\"}}', 0, NULL, 1722997293, 1722997293),
(15, 'default', '{\"uuid\":\"99ecba77-0366-4816-939a-161b9d622d02\",\"displayName\":\"App\\\\Jobs\\\\EmailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\EmailJob\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\EmailJob\\\":1:{s:4:\\\"data\\\";a:5:{s:6:\\\"ticket\\\";s:12:\\\"Y198007BH4X9\\\";s:4:\\\"nama\\\";s:7:\\\"asdasaf\\\";s:5:\\\"email\\\";s:18:\\\"asasfask@gmail.com\\\";s:15:\\\"judul_pengaduan\\\";s:9:\\\"sfsfsgsdg\\\";s:15:\\\"pesan_pengaduan\\\";s:10:\\\"sfsgsdgsdg\\\";}}\"}}', 0, NULL, 1722998008, 1722998008),
(16, 'default', '{\"uuid\":\"ab21ebf3-b9ed-4aea-96c6-160e19b844dd\",\"displayName\":\"App\\\\Jobs\\\\EmailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\EmailJob\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\EmailJob\\\":1:{s:4:\\\"data\\\";a:5:{s:6:\\\"ticket\\\";s:12:\\\"BT045064D4TO\\\";s:4:\\\"nama\\\";s:4:\\\"adas\\\";s:5:\\\"email\\\";s:13:\\\"asd@gmail.com\\\";s:15:\\\"judul_pengaduan\\\";s:4:\\\"sfsf\\\";s:15:\\\"pesan_pengaduan\\\";s:7:\\\"sfsfsdf\\\";}}\"}}', 0, NULL, 1723704507, 1723704507),
(17, 'default', '{\"uuid\":\"124ba507-9122-431b-9a6d-61930d2aad99\",\"displayName\":\"App\\\\Jobs\\\\EmailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\EmailJob\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\EmailJob\\\":1:{s:4:\\\"data\\\";a:5:{s:6:\\\"ticket\\\";s:12:\\\"ZE04517WYJE6\\\";s:4:\\\"nama\\\";s:4:\\\"adas\\\";s:5:\\\"email\\\";s:13:\\\"asd@gmail.com\\\";s:15:\\\"judul_pengaduan\\\";s:5:\\\"asfas\\\";s:15:\\\"pesan_pengaduan\\\";s:8:\\\"afasfasf\\\";}}\"}}', 0, NULL, 1723704517, 1723704517);

-- --------------------------------------------------------

--
-- Table structure for table `kategori_pengaduan`
--

CREATE TABLE `kategori_pengaduan` (
  `id` int(11) NOT NULL,
  `kategori` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `kategori_pengaduan`
--

INSERT INTO `kategori_pengaduan` (`id`, `kategori`, `is_active`) VALUES
(1, 'Peraturan', 1),
(2, 'Pelayanan Terpadu', 1),
(3, 'Pegawai', 1),
(4, 'Birokrasi', 1),
(5, 'Fasilitas', 1),
(8, 'Fraud / kecurangan', 1),
(9, 'Pelayanan umum', 1),
(10, 'Gratifikasi', 1),
(11, 'Benturan kepentingan', 1),
(12, 'Lainnya', 1);

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
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1);

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `progres_pengaduan`
--

CREATE TABLE `progres_pengaduan` (
  `id` int(11) NOT NULL,
  `no_ticket` varchar(100) NOT NULL,
  `updated_at` datetime NOT NULL,
  `tanggapan` mediumtext NOT NULL,
  `pelapor` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `progres_pengaduan`
--

INSERT INTO `progres_pengaduan` (`id`, `no_ticket`, `updated_at`, `tanggapan`, `pelapor`) VALUES
(1, '3T39017IZB55', '2020-08-24 12:07:18', 'Mohon ditunggu ya :)', 'admin'),
(2, 'LD1138991IPZ', '2023-03-27 09:54:53', 'sudah diltindalanjuti', 'admin'),
(3, '9A24219GTZT7', '2024-03-05 15:57:24', 'testing respon', 'admin'),
(4, 'FY42077GB7FF', '2024-07-09 00:40:11', 'terima kasih banyak, ujicoba / tes berhasil', 'admin'),
(10, 'KU47010NVCW1', '2025-01-14 10:40:50', 'Terima kasih atas laporan pengaduannya. Laporan ini akan kami sampaikan kepada Tim Pengaduan masyarakat (UPM). \n\nhormat kami, \nAdmin Pengaduan dan WBS', 'admin'),
(11, 'IW364299HGD1', '2025-01-14 21:26:36', 'terima kasih atas laporannya.\nLaporan akan kami teruskan ke tim penanganan pengaduan.\nmohon menunggu.\nhormat kami,\nadmin', 'admin'),
(12, 'VK36536G7CU6', '2025-01-14 21:27:33', 'Terima kasih atas laporannya. Laporan akan kami teruskan ke tim penanganan pengaduan. mohon menunggu. Hormat kami, admin', 'admin'),
(13, 'IW364299HGD1', '2025-01-15 08:40:17', 'Terima kasih sudah menunggu. Laporan sudah disampaikan kepada tim umum, untuk perbaikan akan dilakukan secepatnya menunggu anggaran dan jadwal pemeliharaan kantor.', 'admin'),
(14, '2A99305VP151', '2025-01-15 08:42:31', 'terima kasih atas laporannya. Laporan sudah kami teruskan ke tim penanganan pengaduan dan tim umum. Perbaikan ini akan dilakukan secepatnya menunggu anggaran dan Jadwal pemeliharaan kantor. Terima kasih.', 'admin'),
(15, 'VK36536G7CU6', '2025-01-15 08:44:02', 'Terima kasih sudah menunggu. Laporan sudah disampaikan kepada tim umum, untuk perbaikan akan dilakukan secepatnya menunggu anggaran dan jadwal pemeliharaan kantor.', 'admin'),
(16, 'KD19082M713F', '2025-01-15 13:45:20', 'Terima kasih atas laporannya. Laporan pengaduan telah kami sampaikan kepada tim penanganan pengaduan. Tim pengaduan dan Tim Umum sudah melakukan pengecekan. Kondisi atap bukan jebol, tapi memang sedang dibuka karena mencek kebocoran. Akan segera dilakukan pemasang. Terima kasih banyak.', 'admin'),
(17, '0D3003336PF6', '2025-01-15 16:54:25', 'terima kasih atas laporannya. sudah kami sampaikan kepada tim penanganan pengaduan untuk ditindaklanjuti. terima kasih banyak.', 'admin'),
(18, 'LJ3022248UHA', '2025-01-16 16:17:07', 'terima kasih atas laporannya. sudah ditindak lanjuti oleh tim penanganan pengaduan, dan disampaikan ke tim bagian umum. segera diatasipermasalahan ini. terima kasih banyak.', 'admin'),
(19, 'PD99686SDTHP', '2025-01-31 13:14:02', 'terima kasih banyak atas laporannya. laporan sudah disampaikan kepada tim penanganan pengaduan dan diteruskan kepada tim umum. akan segera ditindaklanjuti. \nterima kasih. \nhormat kami \nadmin', 'admin'),
(20, 'I927411G11SO', '2025-03-07 09:10:50', 'Terima kasih atas laporannya. Mohon maaf untuk laporan ini tidak dapat kami tindaklanjuti karena tidak memenuhi keriteria kelengkapan isian laporan. Mohon untuk membuat laporan kembali dengan memuat deskripsi 5W+1H. Terima kasih banyak.', 'admin'),
(21, 'KU47010NVCW1', '2025-01-15 09:13:47', 'Terima kasih banyak sudah menunggu, tim penanganan pengaduan sudah menindaklanjuti bersama tim bagian umum. Mudah-mudahan kebocoran ini tidak terjadi lagi. terima kasih banyak.', 'admin'),
(22, 'PD99686SDTHP', '2025-02-03 09:09:17', 'Selamat pagi, setelah dilakukan pengecekan oleh tim, Terkait ini sebelumnya sudah dipasangkan perekat, namun karena dinding ini hanya gybsum bukan dinding beton sehigga terlepas kembali. Tim akan mencoba untuk memasang kabel DUCT untuk pengamanan, Untuk erbaikan permanennya memerlukan tenaga teknisi dari luar, dan akan dijadwalkan sesuai dengan anggaran perbaikan kantor. terima kasih banyak.', 'admin'),
(23, 'KD19082M713F', '2025-01-16 09:14:25', 'Selamat pagi, tim sudah melakukan pemasangan. terima kasih atas laporan dan partisipasi aktifnya.', 'admin'),
(24, 'ZT39135IHIUF', '2025-03-13 12:41:51', 'Terima kasih SAHABAT DATA atas laporan pengaduannya. Data yang SAHABAT DATA minta dapat diakses pada website kalsel.bps.go.id pada Menu Produk-Berita Resmi Statistik :  Luas Panen dan Produksi Padi 2024 (Angka Tetap) Provinsi Kalimantan Selatan. atau diakses pada link https://kalsel.bps.go.id/id/pressrelease/2025/03/03/1996/luas-panen-dan-produksi-padi-2024--angka-tetap--provinsi-kalimantan-selatan.html pada bagian Lampiran. Jika ingin menerima layanan terbaik kami berkaitan dengan data statistik, SAHABAT DATA bisa memanfaatkan aplikasi meteor pada link : https://kalsel.web.bps.go.id/meteor/ . Terima kasih.', 'admin'),
(25, 'ZT39135IHIUF', '2025-03-13 14:37:27', 'Sahabat Data, ada kabar gembira, data ini juga dapat diakses pada tabel dinamis yaitu di link : https://kalsel.bps.go.id/id/statistics-table/2/MzQ0IzI=/luas-panen-dan-produksi-padi.html\nsemoga ini bisa membantu. terima kasih banyak', 'admin'),
(26, 'CT74370XASOW', '2025-04-08 09:16:11', 'terima kasih atas penyampaian laporan pengaduannya. Laporan sudah kami sampaikan kepada tim penanganan pengaduan, akan segera ditindaklanjuti. \nhormat kami, admin', 'admin'),
(27, '5F54999VBC4M', '2025-09-11 15:52:41', 'terima kasih telah menghubungi pelayanan pengaduan. Mohon maaf aduan tidak dapat kami tindak lanjut karena aduan tidak jelas. terima kasih.', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tujuan_pengaduan`
--

CREATE TABLE `tujuan_pengaduan` (
  `id` int(11) NOT NULL,
  `tujuan` varchar(255) NOT NULL,
  `pic` varchar(255) NOT NULL,
  `is_active` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tujuan_pengaduan`
--

INSERT INTO `tujuan_pengaduan` (`id`, `tujuan`, `pic`, `is_active`) VALUES
(1, 'Kepala Bagian Umum', 'Ahmad Mudzakkir', 1),
(2, 'Ketua Tim SE2026 dan Statistik Distribusi', 'Abdurrahman', 1),
(3, 'Ketua Tim Analisis dan Pengembangan Statistik, Ketahanan Sosial dan Penyiapan Materi Pimpinan', 'Ahmadi Murjani', 1),
(4, 'Ketua Tim Penilai Kinerja', 'BPS Provinsi Kalimantan Selatan', 1),
(5, 'Ketua Tim Statistik Harga, Keuangan, Teknologi Informasi, dan Pariwisata', 'Fachri Ubadiyah', 1),
(6, 'Ketua Tim Diseminasi Statistik', 'Hari Rinawan', 1),
(7, 'Ketua Tim Statistik Neraca Pengeluaran dan Susenas', 'Hasbi Nuryadin', 1),
(8, 'Ketua Tim Statistik Industri, PEK, Peternakan, Perikanan, dan Kehutanan', 'M. Surianata', 1),
(9, 'Ketua Tim Penyelenggaraan Sistem Statistik Nasional (SSN) dan Metadata Statistik', 'Najwa Dauli', 1),
(10, 'Ketua Tim Statistik Pertanian Tanaman Pangan, Hortikultura dan Perkebunan', 'Nurul Sabah', 1),
(11, 'Ketua Tim Sakernas dan Pendataan Podes', 'Raplihadi', 1),
(12, 'Ketua Tim Pengembangan Metodologi Sensus dan Survei,dan Sistem Informasi Statistik', 'Taufik Akbar', 1),
(13, 'Ketua Tim Penyusunan Disagregasi PMTB dan Neraca Produksi', 'Tita Rosy', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `email`, `phone`) VALUES
(1, 'admin6300', '21232f297a57a5a743894a0e4a801fc3', 'ipds6300@gmail.com', NULL),
(2, 'dyah.lusiyanti', '21232f297a57a5a743894a0e4a801fc3', 'dyah.lusiyanti@bps.go.id', ''),
(3, 'nurli', '21232f297a57a5a743894a0e4a801fc3', '', '0895340731588');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_pengaduan`
--
ALTER TABLE `data_pengaduan`
  ADD PRIMARY KEY (`no_ticket`),
  ADD KEY `no_ticket` (`no_ticket`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori_pengaduan`
--
ALTER TABLE `kategori_pengaduan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `progres_pengaduan`
--
ALTER TABLE `progres_pengaduan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tujuan_pengaduan`
--
ALTER TABLE `tujuan_pengaduan`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `kategori_pengaduan`
--
ALTER TABLE `kategori_pengaduan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `progres_pengaduan`
--
ALTER TABLE `progres_pengaduan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tujuan_pengaduan`
--
ALTER TABLE `tujuan_pengaduan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
