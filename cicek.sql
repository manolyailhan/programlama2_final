-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost
-- Üretim Zamanı: 21 Ağu 2020, 10:10:00
-- Sunucu sürümü: 8.0.17
-- PHP Sürümü: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `progfinal`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cicek`
--

CREATE TABLE `cicek` (
  `id` int(11) NOT NULL,
  `cicek_ad` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `cicek_fiyat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `cicek`
--

INSERT INTO `cicek` (`id`, `cicek_ad`, `cicek_fiyat`) VALUES
(121, 'Paşabahçe Akvaryum Vazoda 7 Kırmızı Gül', 49),
(122, '20\'li Kırmızı Gül - Paşabahçe Vazoda', 64),
(123, 'Premium Kutuda 9\'lu Kırmızı Gül', 69),
(124, '11\'li Kırmızı Gül Çiçek Buketi', 49),
(125, 'Sevgi Bahçesi 11 Kırmızı Gül - Paşabahçe Vazoda', 64),
(126, '15\'li Kırmızı Gül - Paşabahçe Vazoda', 59),
(127, '60 Kırmızı Gül ile Aşkların En Büyüğü', 149),
(128, 'Vazoda 40 Kırmızı Gül', 109),
(129, '11\'li Kırmızı Gül - Paşabahçe Vazoda', 49),
(130, '25\'li Kırmızı Gül - Paşabahçe Vazoda', 69),
(131, 'Kişiye Özel Sevimli Kutuda Kırmızı Gül Harf Aranjmanı', 109),
(132, 'Kar Beyaz Gül ve Lilyum', 109),
(133, 'Kutuda 16 Kırmızı Gül Amor', 69),
(134, '5\'li Kırmızı Gül - Paşabahçe Vazoda', 39),
(135, 'Paşabahçe Akvaryum Vazoda 4 Kırmızı ve 5 Beyaz Gül', 59),
(136, 'Yeni Umutlar Gerbera ve Beyaz Gül Aranjmanı', 79),
(137, '100 Kırmızı Gül Çiçek Demeti', 209),
(138, 'Tatlı Bahar Mor Lisyantus Aranjmanı - Kalipso Siyah Vazo', 64),
(139, 'Mutluluk Kutusu', 49),
(140, 'İncili Pembe Kutuda 20\'li Kırmızı Gül', 89),
(141, 'Seni Seviyorum Aşkı 11\'li Gül Buketi', 99),
(142, '21\'li Kırmızı Gül - Paşabahçe Vazoda', 49),
(143, 'Biricik Aşkıma 15 Kırmızı Gül Buketi', 66),
(144, 'Premium Kutuda 12\'li Kırmızı Gül', 59),
(145, 'Blooming Love 20 Kırmızı Gül', 79),
(146, '7\'li Kırmızı Gül - Paşabahçe Vazoda', 89),
(147, 'Sonsuz Sevgi 19 Beyaz Gül', 42),
(148, 'Kütükte Çiçek Bahçesi', 99),
(149, 'Aşk Sembolü 13 Kırmızı Gül Buketi', 59),
(150, 'Premium Vazoda Sevgi Dolu 11 Kırmızı Gül', 52),
(151, 'Vazoda 50 Kırmızı Gül', 59),
(152, 'Bu Kalp Senin 20 Kırmızı Güller', 129),
(153, '9\'lu Kırmızı Gül - Paşabahçe Vazoda', 69),
(154, 'Biricik Sevgilime 7 Kırmızı Gül', 47),
(155, 'Sade Güzel 12 Beyaz Gül ve Lilyum', 49),
(156, '50 Kırmızı Gül Çiçek Demeti', 89),
(157, 'Sevgi Bahçesi 11 Beyaz Gül - Paşabahçe Vazoda', 129),
(158, 'Kişiye Özel Aşkın Baş Harfi Kırmızı Gül Aranjmanı', 69),
(159, '16 Aşk Kırmızısı Kutuda Gül', 129),
(160, 'Aşkın Simgesi Kırmızı Güller ve Beyaz Papatyalar Çiçek Buketi', 89),
(161, 'Turuncu Güller Çiçek Buketi', 69),
(162, 'Red Marvelous 5 Kırmızı Gül Aranjmanı', 69),
(163, 'Puantiyeli Vazoda 20\'li Kırmızı Gül Aranjmanı', 34),
(164, 'Biricik Aşkıma 15 Kırmızı Gül Buketi', 89),
(165, 'Özel Kutusunda 7\'li Kırmızı Gül Aranjmanı', 59),
(166, 'Kırmızı Güllerden Hazırlanmış Ferforje Aranjmanı', 69),
(167, 'Kişiye Özel İncili Pembe Kutuda Lila Gül Harf Aranjmanı', 249),
(168, 'Özür Dilerim Vazolu 3 Kırmızı Gül ve Papatya Aranjmanı', 139),
(169, 'Porto', 69),
(170, 'Estetik Güzel Beyaz Lilyum ve Kırmızı Gül Aranjmanı', 139),
(171, 'Su Perisi Orkide  Lilyum ve 3 Beyaz Gül  Aranjmanı', 79),
(172, 'Seni Seviyorum Aşkı 11\'li Gül Buketi', 119),
(173, 'Kişiye Özel Vazoda Beyaz Lilyum ve Beyaz Gül Aranjmanı', 49),
(174, 'Beyaz Papatyalar ve Turuncu Güller Çiçek Buketi', 119),
(175, 'Paşabahçe Akvaryum Vazoda 5\'li Kırmızı Gül', 59),
(176, 'Yaz Rüyası Beyaz Lisyantus Aranjmanı', 49),
(177, 'Hayatımın Aşkına 7\'li Gül Buketi', 54),
(178, '9\'lu Kırmızı Gül Çiçek Buketi', 49),
(179, 'Rose Elegance 10 Kırmızı ve 10 Beyaz Gül', 42),
(180, 'Hayatımın Aşkına 7\'li Gül Buketi', 44);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `cicek`
--
ALTER TABLE `cicek`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `cicek`
--
ALTER TABLE `cicek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
