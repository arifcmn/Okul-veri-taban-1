
SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `okul`
--

-- --------------------------------------------------------

--
-- Table structure for table `bolum`
--

CREATE TABLE IF NOT EXISTS `bolum` (
  `bid` int(5) NOT NULL,
  `badi` varchar(30) CHARACTER SET utf8 NOT NULL,
  `aciklama` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `eposta` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `bolum`
--

INSERT INTO `bolum` (`bid`, `badi`, `aciklama`, `eposta`) VALUES
(1, 'Bil. Müh.', 'Bilgisayar Mühendisliği Bölümü', 'ceng@fatih.edu.tr'),
(2, 'Elo. Müh.', 'Bilgisayar Teknolojisi Bölümü', 'ee@fatih.edu.tr'),
(3, 'Çev. Müh.', 'Çevre Mühendisliği Bölümü', 'env@fatih.edu.tr'),
(4, 'End. Müh.', 'Endüstri Mühendisliği Bölümü', 'ie@fatih.edu.tr');

-- --------------------------------------------------------

--
-- Table structure for table `ders`
--

CREATE TABLE IF NOT EXISTS `ders` (
  `did` int(5) NOT NULL,
  `dadi` varchar(30) CHARACTER SET utf8 NOT NULL,
  `dkodu` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `kredi` int(2) DEFAULT NULL,
  `bid` int(5) DEFAULT NULL,
  PRIMARY KEY (`did`),
  KEY `bid` (`bid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `ders`
--

INSERT INTO `ders` (`did`, `dadi`, `dkodu`, `kredi`, `bid`) VALUES
(1, 'Veritabanı', 'CENG 351', 3, 1),
(2, 'İşletim Sistemleri', 'CENG 341', 3, 1),
(3, 'Programlamaya Giriş', 'CENG 101', 4, 1),
(4, 'Elektroniğe Giriş', 'EE 101', 2, 2),
(5, 'İstatistik', 'IE 301', 4, 4),
(6, 'Devre Teorisi', 'EE 202', 3, 2),
(7, 'Çevre Bilgisi', 'ENV 102', 3, 3),
(8, 'Yöneylem Araştırması', 'IE 208', 3, 4),
(9, 'Yaz Stajı', 'IE 299', 2, 4),
(10, 'Yaz Stajı', 'ENV 299', 3, 3),
(11, 'Yaz Stajı', 'CENG 299', 3, 1),
(12, 'Yaz Stajı', 'EE 299', 3, 2),
(13, 'Test Course', 'TEST 101', 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ogrenci`
--

CREATE TABLE IF NOT EXISTS `ogrenci` (
  `ono` int(5) NOT NULL,
  `adi` varchar(30) CHARACTER SET utf8 NOT NULL,
  `soyadi` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `dyeri` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `bid` int(5) DEFAULT NULL,
  PRIMARY KEY (`ono`),
  KEY `bid` (`bid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `ogrenci`
--

INSERT INTO `ogrenci` (`ono`, `adi`, `soyadi`, `dyeri`, `bid`) VALUES
(1, 'Arif', 'Çimen', 'İstanbul', 1),
(2, 'Aslan', 'Akbey', 'Ankara', 1),
(3, 'Hadise', 'Şahin', 'İzmir', 1),
(4, 'Gökhan', 'Töre', 'Manisa', 2),
(5, 'Aziz', 'Sancar', 'İstanbul', 2),
(6, 'Mouro', 'İcardi', 'Paris', 3),
(7, 'Kamuran', 'Kece', 'Adana', 3),
(8, 'Murat', 'Yavaş', 'Bursa', 4),
(9, 'Öznur', 'Güneş', 'Bolu', 2),
(10, 'Perihan', 'Büyü', 'İzmir', 4),
(11, 'Savaş', 'Tan', 'İzmir', 4);

-- --------------------------------------------------------

--
-- Table structure for table `ogrenci_ders`
--

CREATE TABLE IF NOT EXISTS `ogrenci_ders` (
  `ono` int(5) NOT NULL,
  `did` int(5) NOT NULL,
  `not` float DEFAULT NULL,
  PRIMARY KEY (`ono`,`did`),
  KEY `did` (`did`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `ogrenci_ders`
--

INSERT INTO `ogrenci_ders` (`ono`, `did`, `not`) VALUES
(1, 1, 3),
(1, 3, 2.5),
(1, 4, 3.5),
(1, 6, 3),
(1, 9, 4),
(1, 10, 3),
(2, 1, 4),
(2, 2, 4),
(2, 3, 4),
(2, 4, 4),
(2, 5, 4),
(2, 6, 4),
(2, 7, 4),
(2, 8, 4),
(2, 9, 4),
(2, 10, 3),
(2, 11, 4),
(3, 1, 4),
(3, 2, 4),
(3, 3, 4),
(3, 4, 4),
(3, 5, 4),
(3, 6, 4),
(3, 7, 4),
(3, 8, 4),
(3, 9, 4),
(3, 10, 3),
(3, 11, 3.5),
(4, 1, 2.5),
(4, 5, 1.5),
(5, 1, 3),
(5, 2, NULL),
(5, 3, NULL),
(5, 5, 1.5),
(5, 11, 3.5),
(5, 13, NULL),
(6, 2, 4),
(7, 1, 2.5),
(7, 2, 3),
(7, 5, 1.5),
(7, 8, 1.5),
(8, 2, 3.5),
(8, 7, 1.5),
(9, 1, NULL),
(10, 2, 4),
(10, 8, 3),
(11, 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ogretmen`
--

CREATE TABLE IF NOT EXISTS `ogretmen` (
  `oid` int(5) NOT NULL,
  `adi` varchar(30) CHARACTER SET utf8 NOT NULL,
  `soyadi` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `dyeri` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `bid` int(5) DEFAULT NULL,
  PRIMARY KEY (`oid`),
  KEY `bid` (`bid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `ogretmen`
--

INSERT INTO `ogretmen` (`oid`, `adi`, `soyadi`, `dyeri`, `bid`) VALUES
(1, 'Selami', 'Şahin', 'Amasya', 1),
(2, 'Cengiz', 'Kurtoğlu', 'İstanbul', 1),
(3, 'Ece', 'Seçkin', 'Mersin', 1),
(4, 'Doğan', 'Kabak', 'İstanbul', 2),
(5, 'Ayten', 'Kahraman', 'İstanbul', 3),
(6, 'Gökhan', 'Merdan', 'İzmir', 4),
(7, 'Selçuk', 'Ozan', 'Amasya', 4);

-- --------------------------------------------------------

--
-- Table structure for table `ogretmen_ders`
--

CREATE TABLE IF NOT EXISTS `ogretmen_ders` (
  `oid` int(5) NOT NULL,
  `did` int(5) NOT NULL,
  PRIMARY KEY (`oid`,`did`),
  KEY `did` (`did`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `ogretmen_ders`
--

INSERT INTO `ogretmen_ders` (`oid`, `did`) VALUES
(1, 1),
(3, 2),
(2, 3),
(4, 4),
(7, 5),
(4, 6),
(5, 7),
(6, 8),
(7, 9),
(5, 10),
(1, 11),
(4, 12);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ders`
--
ALTER TABLE `ders`
  ADD CONSTRAINT `ders_ibfk_1` FOREIGN KEY (`bid`) REFERENCES `bolum` (`bid`);

--
-- Constraints for table `ogrenci`
--
ALTER TABLE `ogrenci`
  ADD CONSTRAINT `ogrenci_ibfk_1` FOREIGN KEY (`bid`) REFERENCES `bolum` (`bid`);

--
-- Constraints for table `ogrenci_ders`
--
ALTER TABLE `ogrenci_ders`
  ADD CONSTRAINT `ogrenci_ders_ibfk_1` FOREIGN KEY (`ono`) REFERENCES `ogrenci` (`ono`),
  ADD CONSTRAINT `ogrenci_ders_ibfk_2` FOREIGN KEY (`did`) REFERENCES `ders` (`did`);

--
-- Constraints for table `ogretmen`
--
ALTER TABLE `ogretmen`
  ADD CONSTRAINT `ogretmen_ibfk_1` FOREIGN KEY (`bid`) REFERENCES `bolum` (`bid`);

--
-- Constraints for table `ogretmen_ders`
--
ALTER TABLE `ogretmen_ders`
  ADD CONSTRAINT `ogretmen_ders_ibfk_1` FOREIGN KEY (`oid`) REFERENCES `ogretmen` (`oid`),
  ADD CONSTRAINT `ogretmen_ders_ibfk_2` FOREIGN KEY (`did`) REFERENCES `ders` (`did`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
