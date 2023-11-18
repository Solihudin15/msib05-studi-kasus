-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 18, 2023 at 07:27 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_handphone`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `kode_brand` varchar(11) NOT NULL,
  `nama_brand` varchar(32) NOT NULL,
  `asal_brand` varchar(32) NOT NULL,
  `website` varchar(32) NOT NULL,
  `logo_brand` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`kode_brand`, `nama_brand`, `asal_brand`, `website`, `logo_brand`) VALUES
('B-001', 'Xiaomi', 'Tiongkok', 'www.mi.co.id', 'xiaomi logo.png'),
('B-002', 'Samsung', 'Korea Selatan', 'www.samsung.com', 'samsung logo.png'),
('B-003', 'Realme', 'Tiongkok', 'www.realme.com', 'realme logo.png'),
('B-004', 'Apple', 'Amerika', 'www.apple.com', 'apple logo.png'),
('B-005', 'Infinix', 'Hong Kong', 'id.infinixmobility.com', 'infinix logo.png'),
('B-006', 'Vivo', 'Tiongkok', 'www.vivo.com', 'vivo logo.png'),
('B-007', 'Asus', 'Taiwan', 'www.asus.com', 'asus logo.png');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `nama_produk` varchar(32) NOT NULL,
  `storage` enum('64GB','128GB','256GB','512GB','1TB') NOT NULL,
  `ram` enum('4GB','6GB','8GB','12GB','16GB') NOT NULL,
  `description` text NOT NULL,
  `price` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `kode_brand` varchar(11) NOT NULL,
  `kode_supplier` varchar(11) NOT NULL,
  `picture` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `storage`, `ram`, `description`, `price`, `stock`, `kode_brand`, `kode_supplier`, `picture`) VALUES
(1, 'Xiaomi Poco X3 Pro', '256GB', '16GB', 'Spesifikasi :\r\n\r\nNetwork: GSM / HSPA / LTE\r\n\r\nDimensions: 165.3 x 76.8 x 9.4 mm (6.51 x 3.02 x 0.37 in)\r\n\r\nWeight: 215 g (7.58 oz)\r\n\r\nBuild: Glass front (Gorilla Glass 6), plastic back\r\n\r\nSIM: Hybrid Dual SIM (Nano-SIM, dual stand-by)\r\n\r\nIP53, dust and splash protection\r\n\r\nDisplay: IPS LCD, 120Hz, HDR10, 450 nits (typ)\r\n\r\nSize: 6.67 inches, 107.4 cm2 (~84.6% screen-to-body ratio)\r\n\r\nResolution: 1080 x 2400 pixels, 20:9 ratio (~395 ppi density)\r\n\r\nProtection: Corning Gorilla Glass 6\r\n\r\nOS: Android 11, MIUI 12 for POCO\r\n\r\nChipset: Qualcomm Snapdragon 860 (7 nm)\r\n\r\nCPU: Octa-core (1x2.96 GHz Kryo 485 Gold & 3x2.42 GHz Kryo 485 Gold & 4x1.78 GHz Kryo 485 Silver)\r\n\r\nGPU: Adreno 640\r\n\r\nCard slot: microSDXC (uses shared SIM slot)\r\n\r\nMain Camera: Quad 48MP + 8MP + 2MP + 2MP\r\n\r\nSelfie Camera: 20MP\r\n\r\nLoudspeaker: Yes, with stereo speakers\r\n\r\n3.5mm jack: Yes\r\n\r\n24-bit/192kHz audio\r\n\r\nWLAN: Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot\r\n\r\nBluetooth: 5.0, A2DP, LE\r\n\r\nGPS: Yes, with A-GPS, GLONASS, GALILEO, BDS\r\n\r\nNFC: Yes (market/region dependent)\r\n\r\nInfrared port: Yes\r\n\r\nRadio: FM radio, recording\r\n\r\nUSB: USB Type-C 2.0, USB On-The-Go\r\n\r\nSensors: Fingerprint (side-mounted), accelerometer, gyro, proximity, compass\r\n\r\nBattery: Li-Po 5160 mAh, non-removable\r\n\r\nCharging: Fast charging 33W, 59% in 30 min, 100% in 59 min', 3799000, 350, 'B-001', 'S-005', 'POCO X3 Pro.jpg'),
(2, 'IPhone 15 Pro Max', '1TB', '8GB', 'Spesifikasi:\r\n- Super Retina XDR display\r\n- 6.7‑inch (diagonal) all‑screen OLED display\r\n- 2796‑by‑1290-pixel resolution at 460 ppi\r\n- Dynamic Island\r\n- Always ON Display\r\n- ProMotion technology with adaptive refresh rates up to 120Hz\r\n- HDR display\r\n- True Tone\r\n- Wide color (P3)\r\n- Haptic Touch\r\n- 2,000,000:1 contrast ratio (typical)\r\n- 1000 nits max brightness (typical); 1600 nits peak brightness (HDR); 2000 nits peak brightness (outdoor)\r\n- Fingerprint-resistant oleophobic coating\r\n- Support for display of multiple languages and characters simultaneously\r\n- A17 Pro chip\r\n- New 6‑core CPU with 2 performance and 4 efficiency cores\r\n- New 6‑core GPU\r\n- New 16‑core Neural Engine', 33999000, 150, 'B-004', 'S-003', 'iphone 15 pro max.jpg'),
(3, 'Infinix Zero 5G 2023', '256GB', '8GB', 'Product Description:\r\n• Dimension : 168.73x76.53x8.9mm\r\n• Weight : 201g\r\n• Processor : MediaTek Dimensity 920\r\n• Operating System : Android 12\r\n• Ram : 8GB\r\n• Rom : 256GB\r\n• Display : 6.78\" FHD+ 120HZ\r\n• Battery : 5000 mAh\r\n• Network : 5G/4G/3G/2G\r\n• Camera AF/FF : 16MP FF /50MP AF +2M FF +2M FF\r\n• Video : 4K@30FPS\r\n\r\n1 Unit Infinix Zero 5G 2023 8/256, 1 x Adaptor Charger, 1 x USB Type C Cable Data, 1 x SIM Ejector, 1 x Case, 1 x Screen Protector, 1 x Warranty Card, 1 x User Guide', 3499000, 200, 'B-005', 'S-001', 'infinix zero5G 2023.jpg'),
(4, 'Samsung Galaxy M31', '128GB', '6GB', 'NETWORK Technology\r\nGSM / HSPA / LTE\r\nLAUNCH Announced 2020, February 25\r\nStatus Available. Released 2020, March 5\r\nBODY Dimensions 159.2 x 75.1 x 8.9 mm (6.27 x 2.96 x 0.35 in)\r\nWeight 191 g (6.74 oz)\r\nBuild Glass front (Gorilla Glass 3), plastic back, plastic frame\r\nSIM Dual SIM (Nano-SIM, dual stand-by)\r\nDISPLAY Type Super AMOLED capacitive touchscreen, 16M colors\r\nSize 6.4 inches, 96.7 cm2 (~80.9% screen-to-body ratio)\r\nResolution 1080 x 2340 pixels, 19.5:9 ratio (~411 ppi density)\r\nProtection Corning Gorilla Glass 3\r\nPLATFORM OS Android 10.0; One UI 2.0\r\nChipset Exynos 9611 (10nm)\r\nCPU Octa-core (4x2.3 GHz Cortex-A73 & 4x1.7 GHz Cortex-A53)\r\nGPU Mali-G72 MP3\r\nMEMORY Card slot microSDXC (dedicated slot)\r\nInternal 64GB 6GB RAM, 128GB 6GB RAM\r\nUFS 2.1\r\nMAIN CAMERA Triple 64 MP, f/1.8, 26mm (wide), 1/1.72\", 0.8µm, PDAF\r\n8 MP, f/2.2, 12mm (ultrawide), 1/4.0\", 1.12µm\r\n5 MP, f/2.4, 25mm (macro), 1/5.0\", 1.12µm\r\n5 MP, f/2.2, (depth)\r\nFeatures LED flash, panorama, HDR\r\nVideo 2160p@30fps, 1080p@30fps, gyro-EIS\r\nSELFIE CAMERA Single 32 MP, f/2.0, 26mm (wide), 1/2.8\", 0.8µm\r\nFeatures HDR\r\nVideo 2160p@30fps, 1080p@30fps\r\nSOUND Loudspeaker Yes\r\n3.5mm jack Yes\r\nCOMMS WLAN Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot\r\nBluetooth 5.0, A2DP, LE\r\nGPS Yes, with A-GPS, GLONASS, GALILEO, BDS\r\nNFC Yes (market/region dependent): SM-M315F/DSN\r\nRadio FM radio, RDS, recording\r\nUSB 2.0, Type-C 1.0 reversible connector\r\nFEATURES Sensors Fingerprint (rear-mounted), accelerometer, gyro, proximity, compass\r\nBATTERY Non-removable Li-Po 6000 mAh battery', 4099000, 100, 'B-002', 'S-005', 'samsung m31.jpg'),
(5, 'Infinix HOT11S NFC', '64GB', '4GB', 'BODY Dimensions 168.9 x 77 x 8.8 mm (6.65 x 3.03 x 0.35 in)\r\nWeight 205 g (7.23 oz)\r\nBuild Glass front, plastic back, plastic frame\r\nSIM Dual SIM (Nano-SIM, dual stand-by)\r\nDISPLAY Type IPS LCD, 90Hz, 500 nits (peak)\r\nSize 6.78 inches, 108.6 cm2 (~83.5% screen-to-body ratio)\r\nResolution 1080 x 2480 pixels (~399 ppi density)\r\nProtection NEG Dinorex T2X-1\r\nPLATFORM OS Android 11, XOS 7.6\r\nChipset MediaTek Helio G88 (12nm)\r\nCPU Octa-core (2x2.0 GHz Cortex-A75 & 6x1.8 GHz Cortex-A55)\r\nGPU Mali-G52 MC2\r\nMEMORY Card slot microSDXC (dedicated slot)\r\nInternal 64GB 4GB RAM, 128GB 4GB RAM, 128GB 6GB RAM\r\neMMC 5.1\r\nMAIN CAMERA Triple 50 MP, f/1.6, (wide), PDAF\r\n2 MP, (depth)\r\nUnspecified camera\r\nFeatures Quad-LED flash, HDR, panorama\r\nVideo 1440p@30fps\r\nSELFIE CAMERA Single 8 MP, f/2.0, (wide)\r\nFeatures Dual-LED flash\r\nVideo 1440p@30fps\r\nSOUND Loudspeaker Yes, with dual speakers\r\n3.5mm jack Yes\r\nCOMMS WLAN Wi-Fi 802.11 a/b/g/n, hotspot\r\nBluetooth 5.0, A2DP, LE\r\nGPS Yes, with A-GPS\r\nNFC YES\r\nRadio FM radio\r\nUSB USB Type-C 2.0, USB On-The-Go\r\nFEATURES Sensors Fingerprint (rear-mounted), accelerometer, gyro, proximity, compass\r\nBATTERY Type Li-Po 5000 mAh, non-removable', 1670000, 350, 'B-005', 'S-005', 'infinix Hot 11s nfc.jpg'),
(6, 'Xiaomi Redmi 12', '128GB', '8GB', 'Processor:\r\n- MediaTek Helio G88\r\n- GPU: Arm Mali-G52\r\n\r\nRAM/Storage:\r\n- 8GB/128GB\r\n- 8GB/256GB\r\n\r\nLayar: 6.79” FHD+ DotDisplay\r\n- Resolution: 2460 x 1080\r\n- Refresh rate : Up to 90Hz\r\n- Reading Mode\r\n\r\nKamera Belakang:\r\n50MP main camera\r\n8MP ultra-wide camera\r\n2MP macro camera\r\nKamera Film\r\nKualitas Video ->\r\n- 1080p 1920 x 1080 | 30fps\r\n- 720p 1280 x 720 | 30fps\r\n\r\nKamera Depan : 8MP (f/2.1)\r\nKualitas Video ->\r\n- 1080p 1920 x 1080 | 30fps\r\n- 720p 1280 x 720 | 30fps\r\n\r\nBaterai & pengisian daya\r\n- 5000mAh (typ)\r\n- 18W turbo charging\r\n\r\nIP53 splash and dust proof protection\r\n\r\nKeamanan :\r\nSensor sidik jari di bagian samping\r\nAI Face Unlock\r\n\r\n\r\nDimensi:\r\nPanjang: 168.60mm\r\nLebar: 76.28mm\r\nKetebalan: 8.17mm\r\nBerat: 198.5g\r\n\r\n*Data disediakan oleh laboratorium internal. Metode pengukuran industri mungkin berbeda, sehingga hasil sebenarnya dapat berbeda.\r\n\r\nKonektivitas:\r\n- SIM1 + Hybrid (SIM or MicroSD)\r\n\r\nJaringan Nirkabel :\r\nBluetooth 5.3\r\n\r\nAudio:\r\n3.5mm headphone jack\r\n\r\nSensor :\r\nAkselerometer | Kompas elektronik\r\n\r\nSistem Operasi : MIUI 14 based on Android 13', 1999000, 150, 'B-001', 'S-004', 'xiaomi redmi12.png'),
(7, 'Xiaomi  Redmi Note 12 Pro', '256GB', '8GB', 'Xiaomi Official Store Garansi Resmi, IMEI Resmi Terdaftar di IMEI KEMENPERIN\r\n\r\nLayar 6,67\" terbuat dari bahan fleksibel canggih, meningkatkan kecerahan dan menampilkan rentang warna yang lebih luas dengan kontras lebih tinggi, dipadukan dengan output yang lebih mulus untuk pengalaman menonton yang lebih hidup.\r\n\r\nRefresh rate tinggi 120Hz, Tampilan halaman web, video, game, dan lainnya yang lebih mulus. Dolby Vision bermitra dengan HDR10+, menghadirkan kualitas gambar yang tak terkalahkan, bersama dengan Dolby Atmos dan speaker ganda, sehingga kamu dapat menikmati teater di telapak tangan Anda di mana saja, kapan saja.\r\n\r\nDilengkapi dengan kamera 50MP kamera utama dengan sensor IMX766 menjadi pilihan unggulan banyak smartphone. Ukuran sensor 1/1,56\"\" yang besar memungkinkan asupan cahaya yang lebih banyak dan All-pixel Auto Focus yang canggih mampu membuat pemfokusan otomatis berkecepatan tinggi menjadi kenyataan. Kamera yang dilengkapi dengan OIS, stabil di segala situasi.\r\n\r\nBaterai berkapasitas tinggi 5000mAh dibangun di dalam bodi setipis 7,99mm ini dan memastikan pengalaman pengguna yang lebih tahan lama dan lebih lancar. Dengan 67W turbo charging, 15 menit menjadi rahasia untuk menangani hampir semua hal. Sekarang dalam genggamanmu.\r\n\r\nEfisiensi jelas dari MediaTek Dimensity 1080 dengan 5G. Chipset proses 6nm yang canggih meningkatkan kecepatan keseluruhan dan mengurangi konsumsi daya, memberikan kinerja yang hebat dalam pembuatan video dan gambar, game, dan konektivitas 5G*. Kombinasi penyimpanan dan RAM yang cepat, Kelancaran yang tinggi dengan memori hingga 8GB. Instal aplikasi favorit kamu dan abadikan momen melalui foto & video dengan penyimpanan hingga 256GB.\r\n\r\n5G bebas hambatan. Kecepatan yang lebih cepat dan pita frekuensi yang lebih banyak memungkinkan kamu dan teman kamu berkomunikasi secara online seolah-olah kamu sedang bertatap muka.\r\n\r\nIsi Kemasan\r\nRedmi Note 12 Pro 5G / Adapter', 4199000, 120, 'B-001', 'S-004', 'xiaomi redmi note 12 pro.png'),
(8, 'Asus ROG Phone 6', '256GB', '8GB', 'Detail Produk\r\nUkuran layar: 6.78 inci, 1080 x 2448 pixels, AMOLED, 1B colors, 165Hz, HDR10+\r\nMemori: RAM 8 GB, ROM 256 GB\r\nSistem operasi: Android 12\r\nCPU: Qualcomm SM8475 Snapdragon 8+ Gen 1 (4 nm) Octa-core\r\nGPU: Adreno 730\r\nKamera: Triple 50 MP, f/1.9, (wide); 13 MP, f/2.2, (ultrawide); 5 MP, (macro), depan 12 MP, 28mm (wide)\r\nSIM: Dual SIM (Nano-SIM)\r\nBaterai: Li-Po 6000 mAh, non-removable\r\nBerat: 239 gram', 8499000, 170, 'B-007', 'S-001', 'ROG Phone 6.jpg'),
(9, 'Xiaomi BLACK SHARK 4 Pro', '256GB', '12GB', 'Jaringan : 2G, 3G, 4G, 5G\r\nSIM Card : Single SIM\r\nDimensi : 163.8 x 76.4 x 9.9 mm\r\nBerat : 220 gram\r\nFitur Lainnya : Tombol fisik gaming triggers\r\nJenis : Super AMOLED\r\nUkuran : 6.67 inci\r\nRefresh Rate : 144 Hz\r\nRasio : 20:9\r\nKerapatan : 395 ppi\r\nFitur Lainnya : Alys-on display, kecerahan puncak 1300 nit, HDR10+\r\nChipset : Qualcomm Snapdragon 888\r\nCPU : Octa-core (1x2.84 GHz Kryo 680 & 3x2.42 GHz Kryo 680 & 4x1.80 GHz Kryo 680\r\nGPU : Adreno 660\r\nRAM : 12 GB\r\nMemori Internal : 256 GB\r\nMemori Eksternal : Tidak Ada\r\nJumlah Kamera : 3\r\n- 64 MP (wide), f/1.8\r\n- 8 MP (ultrawide), f/2.2\r\n- 5 MP (macro), f/2.4\r\nFitur : \"PDAF\",\"panorama\",\"HDR\",\"LED flash\",\"gyro-EIS\",\"Autofocus\",\"Video: Hingga 4K@30/60fps\",\"HDR10+\"]\r\n\r\nKAMERA DEPAN\r\nJumlah Kamera : 1\r\nKonfigurasi : 20 MP (wide),\r\nWLan : Wi-Fi 802.11 a/b/g/n/ac/6, dual-band, Wi-Fi Direct, hotspot\r\nBluetooth : 5.2, A2DP, LE, aptX HD, aptX Adaptive\r\nInfrared : Tidak Ada\r\nNFC : Ada\r\nGPS : GPS, A-GPS, GLONASS, GALILEO, QZSS, BDS\r\nUSB : Tipe-C, 2.0\r\nJenis : Li-Po\r\nFitur : \"Fast Charging 120W\"\r\nOS (Saat Rilis) : Android 11, Joy UI 12.5\r\nSensor : Fingerprint (side)\",\"Accelerometer\",\"Gyro\",\"Proximity\",\"Compass\",\"Barometer\",\"Ambient Light\"]\r\nJack 3.5mm Ada\r\nFitur Lainnya : Speaker stereo, audio resolusi tinggi 24-bit/19kH', 3800000, 70, 'B-001', 'S-004', 'xiaomi black shark 4.jpg'),
(10, 'Vivo Y27 5G', '128GB', '6GB', 'Model Internal : PD2281GF_EX\r\nModel Eksternal : Y27 5G\r\nModel Registrasi Jaringan : V2249\r\nProsesor : MediaTek Dimensity 6020\r\nRAM : 6GB + 6GB Extended RAM\r\nPenyimpanan : 128GB (Memori Eksternal hingga 1TB)\r\nBaterai : 5000 mAh (TYP)\r\nWarna : Satin Purple/ Mystic Black\r\nSistem Operasi : Funtouch OS 13 (Based on Android 13)\r\nDimensi : 164.06mm x 76.17mm x 8.07mm\r\nBerat : 190g\r\nPengisian Daya : 15W\r\nMaterial : 2.5D Plastik Kaca dengan Dynamic Design\r\nLayar : 6.64 inci\r\nResolusi : 2388 × 1080 (FHD+)\r\nTipe : LCD\r\nLayar Sentuh : Multisentuh Kapasitif\r\nSIM Slot Tipe : 1 nano SIM + 1 nano SIM + 1 micro SD\r\nMode Standby : Dual SIM Dual Standby (*NA)\r\nKamera : Depan 8MP / Belakang 50MP + 2MP\r\nApertur : Depan f/2.0 (8MP), Belakang f/1.8 (50MP) + f/2.4 (2MP)\r\nLampu Flash : Lampu Flash Belakang\r\nMode Pemandangan : Photo, Night, Portrait, Video, 50MP, Panorama, Live Photo, Slo-mo, Time-Lapse, Pro, Documents\r\nPemutaran Audio : AAC, WAV, MP3, MP2, MP1, MIDI, Vorbis, APE, FLAC, OPUS\r\nPemutaran Video : AAC, WAV, M4A, MP3, MP2, MP1, MIDI, OGG, APE, FLAC\r\nPerekaman Video : MP4\r\nPerekaman Suara : Didukung\r\nWi-Fi : 2.4 GHz / 5 GHz\r\nBluetooth : Bluetooth 5.0\r\nUSB : Type-C\r\nGPS : Didukung\r\nOTG : Didukung\r\nFM : Didukung\r\nNFC : Didukung\r\nLokasi : GPS, BEIDOU, GLONASS, GALILEO, QZSS\r\nAkselerometer : Didukung\r\nSensor Cahaya Sekitar : Didukung\r\nSensor Jarak : Didukung\r\nKompas Elektronik : Didukung\r\nSensor Sidik Jari : Didukung', 2599000, 120, 'B-006', 'S-001', 'vivo Y27 5G.jpg'),
(17, 'Xiaomi 13T', '256GB', '12GB', 'Prosesor: MediaTek Dimensity 8200-Ultra\r\n\r\nCPU:\r\n1x Arm Cortex-A78, hingga 3,1 GHz\r\n3x Arm Cortex-A78, hingga 3,0 GHz\r\n4x Arm Cortex-A55, hingga 2,0 GHz\r\n\r\nGPU: Mali-G610\r\n\r\nPenyimpanan & RAM: 12 GB + 256 GB\r\nRAM LPDDR5 + Media Penyimpanan UFS 3.1', 4699000, 310, 'B-001', 'S-004', 'xiaomi 13T.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `kode_supplier` varchar(11) NOT NULL,
  `nama_supplier` varchar(32) NOT NULL,
  `telp_supplier` varchar(13) NOT NULL,
  `email_supplier` varchar(64) NOT NULL,
  `alamat_supplier` text NOT NULL,
  `logo_supplier` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`kode_supplier`, `nama_supplier`, `telp_supplier`, `email_supplier`, `alamat_supplier`, `logo_supplier`) VALUES
('S-001', 'Eraspace', '081290777722', 'customercare@erajaya.com', 'Jakarta Utara', 'supplier (1).jpg'),
('S-002', 'Digimap', '081542544587', 'customercare@digimap.com', 'Jakarta Selatan', 'supplier (2).jpg'),
('S-003', 'iBox', '081452486259', 'customercare@erajaya.com', 'Bekasi', 'supplier (3).jpg'),
('S-004', 'Xiaomi Official Store', '021625495485', 'xiaomi.official.id', 'Jakarta', 'supplier (6).jpg'),
('S-005', 'RnR Jaya', '081526594526', 'customercare@rnrjaya.com', 'Depok', 'supplier (5).jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`kode_brand`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`),
  ADD KEY `FK_Brand` (`kode_brand`),
  ADD KEY `FK_Supplier` (`kode_supplier`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`kode_supplier`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `FK_Brand` FOREIGN KEY (`kode_brand`) REFERENCES `brand` (`kode_brand`),
  ADD CONSTRAINT `FK_Supplier` FOREIGN KEY (`kode_supplier`) REFERENCES `supplier` (`kode_supplier`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
