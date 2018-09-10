-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 10 Sep 2018 pada 06.42
-- Versi Server: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pelatih`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(6) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `gender` int(1) NOT NULL,
  `photo_path` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `last_login` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `email`, `gender`, `photo_path`, `address`, `phone`, `last_login`) VALUES
(1, 'moxspoy', 'moxspoy', 'moxspoy@moxspoy.com', 1, 'moxspoy.png', 'Jalan Sunan Giri', '085920039600', '2018-05-10 04:14:13.257460'),
(2, 'admin', '21232F297A57A5A743894A0E4A801FC3', 'admin@gmail.com', 1, 'admin.png', NULL, NULL, '2018-05-08 03:08:09.087103');

-- --------------------------------------------------------

--
-- Struktur dari tabel `art_type`
--

CREATE TABLE `art_type` (
  `id` int(10) NOT NULL,
  `type` varchar(100) NOT NULL,
  `min_age` int(2) NOT NULL DEFAULT '5',
  `price` int(6) NOT NULL,
  `time_per_hour` int(2) NOT NULL,
  `trainer_id` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `art_type`
--

INSERT INTO `art_type` (`id`, `type`, `min_age`, `price`, `time_per_hour`, `trainer_id`) VALUES
(1, 'Keyboard', 2, 230000, 2, 1),
(2, 'Modern Dance', 2, 200000, 2, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer`
--

CREATE TABLE `customer` (
  `id` int(6) NOT NULL,
  `username` varchar(20) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `birth_date` date NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `gender` int(1) NOT NULL,
  `photo_path` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(100) NOT NULL,
  `signup_date` datetime(6) NOT NULL,
  `last_login` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `customer`
--

INSERT INTO `customer` (`id`, `username`, `fullname`, `birth_date`, `password`, `email`, `gender`, `photo_path`, `address`, `phone`, `signup_date`, `last_login`) VALUES
(1, 'moxspoy', 'M Nurilman Baehaqi', '1997-05-07', 'B47650104F0EB84ECC2AA046D642A8A5', 'mnurilmanbaehaqi@gmail.com', 1, NULL, 'Jalan Sunan Giri No 1 Rawamangun', '085920039600', '2018-05-13 05:12:16.118187', '2018-05-13 08:04:00.000259');

-- --------------------------------------------------------

--
-- Struktur dari tabel `language_type`
--

CREATE TABLE `language_type` (
  `id` int(10) NOT NULL,
  `type` varchar(100) NOT NULL,
  `min_age` int(2) NOT NULL DEFAULT '5',
  `price` int(6) NOT NULL,
  `time_per_hour` int(2) NOT NULL,
  `trainer_id` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `language_type`
--

INSERT INTO `language_type` (`id`, `type`, `min_age`, `price`, `time_per_hour`, `trainer_id`) VALUES
(1, 'Mandarin', 2, 150000, 2, 4),
(2, 'Korea', 2, 160000, 2, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `order_status`
--

CREATE TABLE `order_status` (
  `id` int(6) NOT NULL,
  `status` int(2) NOT NULL,
  `isPaymentPaid` int(2) NOT NULL,
  `schedule_id` int(6) NOT NULL,
  `order_time` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `religion_type`
--

CREATE TABLE `religion_type` (
  `id` int(10) NOT NULL,
  `type` varchar(100) NOT NULL,
  `min_age` int(2) NOT NULL DEFAULT '5',
  `price` int(6) NOT NULL,
  `time_per_hour` int(2) NOT NULL,
  `trainer_id` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `religion_type`
--

INSERT INTO `religion_type` (`id`, `type`, `min_age`, `price`, `time_per_hour`, `trainer_id`) VALUES
(1, 'Quran', 1, 140000, 2, 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `schedule`
--

CREATE TABLE `schedule` (
  `id` int(6) NOT NULL,
  `user_id` int(3) NOT NULL,
  `trainer_user` int(3) NOT NULL,
  `date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `service`
--

CREATE TABLE `service` (
  `id` int(10) NOT NULL,
  `type` varchar(100) NOT NULL,
  `min_age` int(2) NOT NULL DEFAULT '5',
  `isHomeAllowed` int(1) NOT NULL,
  `price` int(6) NOT NULL,
  `time_per_hour` int(2) NOT NULL,
  `trainer_id` int(6) NOT NULL,
  `service_type_id` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `service`
--

INSERT INTO `service` (`id`, `type`, `min_age`, `isHomeAllowed`, `price`, `time_per_hour`, `trainer_id`, `service_type_id`) VALUES
(1, 'Senam Aerobik', 5, 1, 100000, 2, 1, 1),
(2, 'Yoga', 5, 1, 200000, 2, 2, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `service_type`
--

CREATE TABLE `service_type` (
  `id` int(10) NOT NULL,
  `type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `service_type`
--

INSERT INTO `service_type` (`id`, `type`) VALUES
(1, 'Sport'),
(2, 'Technology and Information'),
(3, 'Art'),
(4, 'Language'),
(5, 'Religion');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sport_type`
--

CREATE TABLE `sport_type` (
  `id` int(10) NOT NULL,
  `type` varchar(100) NOT NULL,
  `min_age` int(2) NOT NULL DEFAULT '5',
  `isHomeAllowed` int(1) NOT NULL,
  `price` int(6) NOT NULL,
  `time_per_hour` int(2) NOT NULL,
  `trainer_id` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sport_type`
--

INSERT INTO `sport_type` (`id`, `type`, `min_age`, `isHomeAllowed`, `price`, `time_per_hour`, `trainer_id`) VALUES
(1, 'Senam Aerobik', 5, 1, 100000, 2, 0),
(2, 'Yoga', 5, 1, 200000, 2, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tech_type`
--

CREATE TABLE `tech_type` (
  `id` int(10) NOT NULL,
  `type` varchar(100) NOT NULL,
  `min_age` int(2) NOT NULL DEFAULT '5',
  `price` int(6) NOT NULL,
  `time_per_hour` int(2) NOT NULL,
  `trainer_id` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tech_type`
--

INSERT INTO `tech_type` (`id`, `type`, `min_age`, `price`, `time_per_hour`, `trainer_id`) VALUES
(1, 'Android', 10, 230000, 2, 6),
(2, 'Video Editor', 5, 210000, 2, 8);

-- --------------------------------------------------------

--
-- Struktur dari tabel `trainer`
--

CREATE TABLE `trainer` (
  `id` int(6) NOT NULL,
  `username` varchar(20) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `birth_date` varchar(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `gender` int(1) NOT NULL,
  `photo_path` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(100) NOT NULL,
  `service_type` int(5) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `certification` varchar(255) DEFAULT NULL,
  `prestasi` varchar(255) DEFAULT NULL,
  `signup_date` datetime(6) NOT NULL,
  `last_login` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `trainer`
--

INSERT INTO `trainer` (`id`, `username`, `fullname`, `birth_date`, `password`, `email`, `gender`, `photo_path`, `address`, `phone`, `service_type`, `description`, `certification`, `prestasi`, `signup_date`, `last_login`) VALUES
(2, 'yoga', 'Yoga Pratama', '1997-07-07', 'B47650104F0EB84ECC2AA046D642A8A5', 'yoga@gmail.com', 1, NULL, NULL, '08592383373', 1, 'ini adalah deskripsi saya', 'Certified of Bla Bla', '1st Winner at ASIAN GAMES 2018', '2018-05-15 00:05:11.110124', '2018-05-15 00:11:00.000000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `art_type`
--
ALTER TABLE `art_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `language_type`
--
ALTER TABLE `language_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `religion_type`
--
ALTER TABLE `religion_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_type`
--
ALTER TABLE `service_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sport_type`
--
ALTER TABLE `sport_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tech_type`
--
ALTER TABLE `tech_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trainer`
--
ALTER TABLE `trainer`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `art_type`
--
ALTER TABLE `art_type`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `language_type`
--
ALTER TABLE `language_type`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `religion_type`
--
ALTER TABLE `religion_type`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `service_type`
--
ALTER TABLE `service_type`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `sport_type`
--
ALTER TABLE `sport_type`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tech_type`
--
ALTER TABLE `tech_type`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `trainer`
--
ALTER TABLE `trainer`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
