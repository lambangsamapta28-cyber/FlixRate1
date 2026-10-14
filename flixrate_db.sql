-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Jan 2026 pada 16.05
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flixrate_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `movies`
--
-- Pembuatan: 22 Jan 2026 pada 14.14
-- Pembaruan terakhir: 22 Jan 2026 pada 14.49
--

CREATE TABLE `movies` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `genre` varchar(50) DEFAULT NULL,
  `release_year` int(4) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `director` varchar(100) DEFAULT NULL,
  `producer` varchar(100) DEFAULT NULL,
  `actors` text DEFAULT NULL,
  `poster` varchar(255) DEFAULT NULL,
  `avg_rating` decimal(3,1) DEFAULT 0.0,
  `trailer_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `movies`
--

INSERT INTO `movies` (`id`, `title`, `genre`, `release_year`, `country`, `description`, `director`, `producer`, `actors`, `poster`, `avg_rating`, `trailer_url`) VALUES(1, 'The Shawshank Redemption', 'Drama', 1994, 'Amerika Serikat', 'Andy Dufresne, seorang bankir sukses, dijatuhi hukuman seumur hidup di penjara Shawshank atas pembunuhan yang tidak dilakukannya. Di sana, ia menjalin persahabatan tak terduga dengan Red dan menemukan harapan di tengah keputusasaan.', 'Frank Darabont', 'Niki Marvin', 'Tim Robbins, Morgan Freeman', 'https://image.tmdb.org/t/p/w500/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg', 4.9, 'https://www.youtube.com/embed/PLl99DlL6b4');
INSERT INTO `movies` (`id`, `title`, `genre`, `release_year`, `country`, `description`, `director`, `producer`, `actors`, `poster`, `avg_rating`, `trailer_url`) VALUES(2, 'Inception', 'Sci-Fi', 2010, 'Amerika Serikat', 'Dom Cobb adalah pencuri ahli yang mencuri rahasia berharga dari alam bawah sadar saat korbannya bermimpi. Ia ditawari kesempatan untuk menghapus catatan kriminalnya asalkan ia bisa melakukan hal yang mustahil: menanamkan ide ke pikiran seseorang.', 'Christopher Nolan', 'Christopher Nolan, Emma Thomas, Charles Roven', 'Christian Bale, Heath Ledger, Aaron Eckhart', 'https://m.media-amazon.com/images/M/MV5BMjAxMzY3NjcxNF5BMl5BanBnXkFtZTcwNTI5OTM0Mw@@._V1_FMjpg_UX1000_.jpg', 4.8, 'https://www.youtube.com/embed/YoHD9XEInc0');
INSERT INTO `movies` (`id`, `title`, `genre`, `release_year`, `country`, `description`, `director`, `producer`, `actors`, `poster`, `avg_rating`, `trailer_url`) VALUES(6, 'The Dark Knight', 'Action', 2008, 'Amerika Serikat', 'The Dark Knight perjuangan Batman (Christian Bale) di Gotham City yang dilanda kejahatan, bekerja sama dengan Komisaris Gordon (Gary Oldman) dan Jaksa Wilayah Harvey Dent (Aaron Eckhart) untuk menumpas kejahatan terorganisir, namun menghadapi tantangan besar dari psikopat anarkis bernama Joker (Heath Ledger) yang ingin menciptakan kekacauan total, memaksa Batman menghadapi dilema moral ekstrem dan pilihan sulit antara keadilan dan kekacauan, bahkan harus berkorban demi menjaga citra pahlawan Gotham dan Dent sebagai harapan baru kota.', 'Christopher Nolan', 'Christopher Nolan, Emma Thomas, Charles Roven', 'Christian Bale, Heath Ledger, Aaron Eckhart', 'https://image.tmdb.org/t/p/w500/qJ2tW6WMUDux911r6m7haRef0WH.jpg', 4.9, 'https://www.youtube.com/embed/EXeTwQWrcwY');
INSERT INTO `movies` (`id`, `title`, `genre`, `release_year`, `country`, `description`, `director`, `producer`, `actors`, `poster`, `avg_rating`, `trailer_url`) VALUES(7, 'Avengers: Endgame', 'Action', 2019, 'Amerika Serikat', 'Endgame melanjutkan kekacauan setelah Thanos memusnahkan setengah alam semesta di Infinity War, memaksa sisa Avengers (Captain America, Iron Man, Thor, Black Widow, Hulk, Hawkeye, Captain Marvel, dll.) berkumpul kembali untuk membatalkan jentikan Thanos dengan melakukan perjalanan waktu untuk mengumpulkan Infinity Stones, yang berujung pada pertempuran epik melawan Thanos dari masa lalu, dan diakhiri dengan pengorbanan besar Iron Man serta perubahan besar pada tim dan status pahlawan, seperti Steve Rogers yang pensiun dan menyerahkan perisainya, seperti yang diceritakan', 'Anthony Russo & Joe Russo', 'Kevin Feige', 'Robert Downey Jr., Chris Evans, Mark Ruffalo, Chris Hemsworth, Scarlett Johansson, Jeremy Renner', 'https://image.tmdb.org/t/p/w500/ulzhLuWrPK07P1YkdWQLZnQh1JL.jpg', 4.7, 'https://www.youtube.com/embed/TcMBFSGVi1c');
INSERT INTO `movies` (`id`, `title`, `genre`, `release_year`, `country`, `description`, `director`, `producer`, `actors`, `poster`, `avg_rating`, `trailer_url`) VALUES(8, 'Spider-Man: No Way Home', 'Action', 2021, 'Amerika Serikat', 'Peter Parker (Tom Holland) yang identitasnya sebagai Spider-Man terbongkar, membuat hidupnya dan orang terdekatnya kacau, sehingga ia meminta bantuan Doctor Strange untuk membuat dunia lupa, tetapi mantra tersebut gagal dan membuka gerbang multiverse, mendatangkan penjahat dan Spider-Man dari semesta lain, memaksa mereka bersatu untuk memperbaiki kekacauan dan menghadapi takdir.', 'Jon Watts', 'Kevin Feige, Amy Pascal\r\n', 'Tom Holland, Zendaya, Benedict Cumberbatch', 'https://www.vidio.com/blog/wp-content/uploads/sites/2/2025/07/Spider-Man-No-Way-Home-Apple-Artwork-16_9-Cover-Art-scaled.png', 4.6, 'https://www.youtube.com/embed/JfVOs4VSpmA');
INSERT INTO `movies` (`id`, `title`, `genre`, `release_year`, `country`, `description`, `director`, `producer`, `actors`, `poster`, `avg_rating`, `trailer_url`) VALUES(9, 'Interstellar', 'Sci-Fi', 2014, 'Amerika Serikat', 'masa depan ketika Bumi sekarat akibat badai debu dan wabah penyakit, memaksa manusia mencari planet baru; mantan pilot NASA, Cooper, direkrut untuk memimpin misi melintasi lubang cacing dekat Saturnus, meninggalkan anak-anaknya, terutama putrinya Murph, dalam perjalanan epik yang penuh dilema emosional dan ilmiah tentang cinta, waktu, dan kelangsungan hidup spesies manusia.', 'Christopher Nolan', 'Christopher Nolan, Emma Thomas, Lynda Obst', 'Matthew McConaughey, Anne Hathaway, Jessica Chastain\r\n', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0zt0lp-O3XdL8zzdrEvyzmcl6kOwfgbv4xQ&s', 4.8, 'https://www.youtube.com/embed/zSWdZVtXT7E');
INSERT INTO `movies` (`id`, `title`, `genre`, `release_year`, `country`, `description`, `director`, `producer`, `actors`, `poster`, `avg_rating`, `trailer_url`) VALUES(10, 'Titanic', 'Romance', 1997, 'Amerika Serikat', 'Titanic adalah film drama romantis karya James Cameron yang mengisahkan cinta terlarang antara Jack, pemuda miskin yang bebas, dan Rose, wanita bangsawan yang terikat kehidupan elit, yang bertemu di kapal mewah RMS Titanic dalam pelayaran perdananya. Kisah cinta mereka berkembang di tengah perbedaan kelas sosial, namun berubah menjadi tragedi saat kapal menabrak gunung es dan tenggelam, memaksa keduanya menghadapi pilihan sulit, pengorbanan, dan perjuangan hidup di tengah bencana besar yang mengukir salah satu kisah paling emosional dalam sejarah perfilman.', 'James Cameron\r\n', 'James Cameron, Jon Landau', 'Leonardo DiCaprio, Kate Winslet', 'https://image.tmdb.org/t/p/w500/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg', 4.5, 'https://www.youtube.com/embed/kVrqfYjkTdQ');
INSERT INTO `movies` (`id`, `title`, `genre`, `release_year`, `country`, `description`, `director`, `producer`, `actors`, `poster`, `avg_rating`, `trailer_url`) VALUES(11, 'Joker', 'Drama', 2019, 'Amerika Serikat', 'Joker adalah film drama psikologis yang mengisahkan Arthur Fleck, seorang pria dengan gangguan mental yang hidup terpinggirkan di Kota Gotham. Bekerja sebagai badut sewaan dan bercita-cita menjadi komedian, Arthur terus mengalami penolakan, kekerasan, dan ketidakadilan sosial. Tekanan hidup yang menumpuk perlahan mengubah kepribadiannya, hingga ia kehilangan kendali dan bertransformasi menjadi sosok Joker, simbol kekacauan dan perlawanan terhadap sistem yang menindas. Film ini menyoroti sisi gelap manusia, kesenjangan sosial, serta dampak pengabaian terhadap kesehatan mental.', 'Todd Phillips', 'Todd Phillips, Bradley Cooper, Emma Tillinger Koskoff', 'Joaquin Phoenix', 'https://image.tmdb.org/t/p/w500/udDclJoHjfjb8Ekgsd4FDteOkCU.jpg', 4.4, 'https://www.youtube.com/embed/zAGVQLHvwOY');
INSERT INTO `movies` (`id`, `title`, `genre`, `release_year`, `country`, `description`, `director`, `producer`, `actors`, `poster`, `avg_rating`, `trailer_url`) VALUES(12, 'Coco', 'Animation', 2017, 'Amerika Serikat', 'bercerita tentang Miguel, seorang anak laki-laki yang bercita-cita menjadi musisi, meskipun keluarganya melarang musik karena masa lalu yang kelam. Secara tidak sengaja, Miguel masuk ke Dunia Arwah dan bertemu dengan leluhur keluarganya. Dalam petualangannya, Miguel berusaha menemukan jati diri, memahami arti keluarga, serta mengungkap rahasia besar tentang asal-usul keluarganya. Film ini sarat dengan pesan tentang keluarga, ingatan, dan mengejar mimpi.', 'Lee Unkrich', 'Darla K. Anderson', 'Anthony Gonzalez, Gael García Bernal, Benjamin Bratt', 'https://image.tmdb.org/t/p/w500/gGEsBPAijhVUFoiNpgZXqRVWJt2.jpg', 4.7, 'https://www.youtube.com/embed/Rvr68u6k5sI');
INSERT INTO `movies` (`id`, `title`, `genre`, `release_year`, `country`, `description`, `director`, `producer`, `actors`, `poster`, `avg_rating`, `trailer_url`) VALUES(13, 'Parasite', 'Thriller', 2019, 'Korea Selatan', 'Keluarga Kim yang miskin perlahan-lahan menyusup ke dalam kehidupan keluarga Park yang kaya raya. Namun, hubungan simbiosis yang rapuh ini terancam hancur ketika sebuah insiden tak terduga menyingkap rahasia gelap di ruang bawah tanah rumah tersebut.', 'Bong Joon-ho', 'Kwak Sin-ae, Moon Yang-kwon', 'Song Kang-ho, Lee Sun-kyun, Cho Yeo-jeong', 'https://image.tmdb.org/t/p/w500/7IiTTgloJzvGI1TAYymCfbfl3vT.jpg', 4.6, 'https://www.youtube.com/embed/5xH0HfJHsaY');
INSERT INTO `movies` (`id`, `title`, `genre`, `release_year`, `country`, `description`, `director`, `producer`, `actors`, `poster`, `avg_rating`, `trailer_url`) VALUES(14, 'The Matrix', 'Sci-Fi', 1999, 'Amerika Serikat', 'seorang programmer komputer yang menemukan kenyataan mengejutkan bahwa dunia yang ia tinggali hanyalah simulasi buatan mesin. Manusia sebenarnya diperbudak dan dijadikan sumber energi oleh mesin, sementara pikiran mereka terperangkap di dunia virtual bernama Matrix. Bersama Morpheus dan Trinity, Neo berjuang melawan sistem tersebut dan mencari kebenaran tentang jati dirinya sebagai harapan terakhir umat manusia. Film ini mengangkat tema realitas, kebebasan, dan identitas.', 'Lana Wachowski, Lilly Wachowski', 'Joel Silver', 'Keanu Reeves, Laurence Fishburne, Carrie-Anne Moss', 'https://image.tmdb.org/t/p/w500/f89U3ADr1oiB1s9GkdPOEpXUk5H.jpg', 4.7, NULL);
INSERT INTO `movies` (`id`, `title`, `genre`, `release_year`, `country`, `description`, `director`, `producer`, `actors`, `poster`, `avg_rating`, `trailer_url`) VALUES(15, 'Spirited Away', 'Animation', 2001, 'Jepang', 'animasi Jepang karya Hayao Miyazaki yang mengikuti perjalanan seorang gadis kecil bernama Chihiro. Ia secara tidak sengaja masuk ke dunia roh setelah orang tuanya berubah menjadi babi. Untuk menyelamatkan orang tuanya dan kembali ke dunia manusia, Chihiro harus bekerja di pemandian roh milik penyihir Yubaba. Dalam prosesnya, Chihiro belajar tentang keberanian, tanggung jawab, dan jati diri. Film ini penuh dengan imajinasi, simbolisme, dan nilai kehidupan.', 'Hayao Miyazaki', 'Toshio Suzuki', 'Rumi Hiiragi, Miyu Irino, Mari Natsuki', 'https://m.media-amazon.com/images/M/MV5BNTEyNmEwOWUtYzkyOC00ZTQ4LTllZmUtMjk0Y2YwOGUzYjRiXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg', 4.8, NULL);
INSERT INTO `movies` (`id`, `title`, `genre`, `release_year`, `country`, `description`, `director`, `producer`, `actors`, `poster`, `avg_rating`, `trailer_url`) VALUES(16, 'Peaky Blinders', 'Historical Drama', 2013, 'Inggris', 'keluarga gangster Shelby, terutama Thomas Shelby, pemimpin cerdas dan ambisius geng Peaky Blinders. Dengan strategi licik dan kekuatan politik, Thomas berusaha memperluas kekuasaan bisnis ilegal dan legal keluarganya. Serial ini menampilkan konflik kekuasaan, trauma perang, serta ambisi dalam dunia kriminal yang kejam.', 'Otto Bathurst, Tom Harper, Colm McCarthy', 'Caryn Mandabach, Steven Knight', 'Cillian Murphy, Paul Anderson, Helen McCrory', 'https://m.media-amazon.com/images/S/pv-target-images/5c3e0d6b9ad0460aa7e63bb1e1d56c4b75722a98f467f5aa8d22650c27a71e1b.jpg', 4.8, NULL);
INSERT INTO `movies` (`id`, `title`, `genre`, `release_year`, `country`, `description`, `director`, `producer`, `actors`, `poster`, `avg_rating`, `trailer_url`) VALUES(17, 'The Hunger Games', 'Action', 2012, 'Amerika Serikat', 'The Hunger Games bercerita tentang Panem, negara distopia pasca-apokaliptik, di mana Capitol memaksa 12 distriknya mengirim 2 remaja (satu laki-laki, satu perempuan) setiap tahun untuk bertarung sampai mati di acara televisi tahunan bernama Hunger Games, sebagai hukuman atas pemberontakan masa lalu. Di Distrik 12 yang miskin, Katniss Everdeen (Jennifer Lawrence) dengan berani mengajukan diri menjadi \"upeti\" (peserta) untuk menggantikan adiknya, Primrose, dan dipasangkan dengan Peeta Mellark (Josh Hutcherson). Keduanya harus bertahan hidup di arena berbahaya sambil menghadapi tekanan publik dan Capitol, yang menuntut mereka menjadi musuh bebuyutan namun pada akhirnya mengembangkan hubungan rumit demi bertahan hidup, bahkan melanggar aturan untuk bisa menang bersama.', 'Gary Ross', 'Nina Jacobson, Jon Kilik', 'Jennifer Lawrence, Josh Hutcherson, Liam Hemswort', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRVGW5kJI_vbSXjlE2lhgJbr7t83-PrvQTQpw&s', 4.9, 'https://youtu.be/mfmrPu43DF8');
INSERT INTO `movies` (`id`, `title`, `genre`, `release_year`, `country`, `description`, `director`, `producer`, `actors`, `poster`, `avg_rating`, `trailer_url`) VALUES(18, 'Mencuri Raden Saleh', 'Action', 2022, 'Indonesia', 'sekelompok mahasiswa yang membentuk tim untuk mencuri lukisan berharga \"Penangkapan Pangeran Diponegoro\" karya Raden Saleh dari Istana Negara demi uang, dipimpin oleh Piko (The Forger) yang butuh dana membebaskan ayahnya, Ucup (The Hacker), Fella (The Negotiator), Gofar (The Handyman), Sarah (The Brute), dan Tuktuk (The Driver). Mereka menghadapi rintangan besar, persahabatan diuji, dan rencana yang disusun penuh drama saat berhadapan dengan sistem keamanan ketat istana dan jebakan dari klien misterius mereka, seorang mantan presiden.', 'Angga Dwimas Sasongko', 'Cristian Imanuell', 'Iqbaal Ramadhan, Angga Yunanda, Rachel Amanda', 'https://cdn.grid.id/crop/0x0:0x0/filters:format(webp):quality(100)/photo/2023/01/05/mencuri-raden-salehjpg-20230105035154.jpg', 4.9, 'https://youtu.be/DN3sRz_veBU');
INSERT INTO `movies` (`id`, `title`, `genre`, `release_year`, `country`, `description`, `director`, `producer`, `actors`, `poster`, `avg_rating`, `trailer_url`) VALUES(19, 'Godzilla x Kong: The New Empire', 'Action', 2024, 'Amerika Serikat', 'melanjutkan kisah dua Titan legendaris, Godzilla dan Kong, yang kali ini tidak hanya saling berhadapan, tetapi juga harus bekerja sama menghadapi ancaman baru yang jauh lebih berbahaya. Ancaman tersebut berasal dari dunia tersembunyi Hollow Earth, tempat munculnya kekuatan kuno yang mengancam keseimbangan alam dan keberlangsungan umat manusia.', 'Adam Wingard', 'Thomas Tull, Jon Jashni, Brian Rogers\r\n', 'Rebecca Hall, Brian Tyree Henry, Dan Stevens', 'https://m.media-amazon.com/images/M/MV5BMTY0N2MzODctY2ExYy00OWYxLTkyNDItMTVhZGIxZjliZjU5XkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg', 4.9, 'https://youtu.be/lV1OOlGwExM');
INSERT INTO `movies` (`id`, `title`, `genre`, `release_year`, `country`, `description`, `director`, `producer`, `actors`, `poster`, `avg_rating`, `trailer_url`) VALUES(20, 'F1 The Movie', 'Sports Drama', 2025, 'Amerika Serikat', 'Sonny Hayes (Brad Pitt), mantan pembalap F1 era 90-an yang kariernya hancur akibat kecelakaan, kembali ke arena sebagai mentor dan rekan setim pembalap muda berbakat Joshua Pearce (Damson Idris) di tim medioker Apex Grand Prix (APXGP), menghadapi trauma masa lalu, dinamika tim, dan persaingan ketat untuk menyelamatkan tim dan dirinya sendiri, dengan kemunculan pembalap F1 asli untuk menambah realisme balapan.', 'Joseph Kosinski', 'Jerry Bruckheimer, Brad Pitt, Lewis Hamilton', 'Brad Pitt, Damson Idris, Javier Bardem', 'https://artofthemovies.co.uk/cdn/shop/files/IMG_9779.jpg?v=1750696693', 4.9, 'https://youtu.be/8yh9BPUBbbQ');
INSERT INTO `movies` (`id`, `title`, `genre`, `release_year`, `country`, `description`, `director`, `producer`, `actors`, `poster`, `avg_rating`, `trailer_url`) VALUES(21, 'All Quiet on the Western Front', 'Drama', 2022, 'Jerman', 'menggambarkan kengerian Perang Dunia I dari sudut pandang prajurit muda Jerman, Paul Bäumer, dan kawan-kawannya, menunjukkan realitas brutal, trauma psikologis, dan kehancuran kehidupan sipil, jauh dari gambaran romantis kepahlawanan perang.', 'Edward Berger', 'Malte Grunert', 'Felix Kammerer sebagai Paul Bäumer, Daniel Brühl, Albrecht Schuch, Sebastian Hülk, Aaron Hilmer, Edin Hasanovic, Devid Striesow', 'https://asyikasyik.com/wp-content/uploads/2023/05/IMG_20230502_091912.png', 4.9, 'https://youtu.be/xl4A2fJG4ws?si=XrfCPdRtB55MgMd5\');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ratings`
--
-- Pembuatan: 06 Jan 2026 pada 13.16
--

CREATE TABLE `ratings` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `movie_id` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `ratings`
--

INSERT INTO `ratings` (`id`, `user_id`, `movie_id`, `rating`, `created_at`) VALUES(1, 1, 11, 5, '2026-01-14 13:48:26');
INSERT INTO `ratings` (`id`, `user_id`, `movie_id`, `rating`, `created_at`) VALUES(2, 1, 1, 3, '2026-01-14 13:50:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--
-- Pembuatan: 06 Jan 2026 pada 13.16
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','user') DEFAULT 'user',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`, `created_at`) VALUES(1, 'admin', 'admin', 'admin', '2026-01-06 13:16:27');
INSERT INTO `users` (`id`, `username`, `password`, `role`, `created_at`) VALUES(2, 'kevin', '123', 'user', '2026-01-06 13:25:06');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `movie_id` (`movie_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `ratings_ibfk_2` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`);
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
