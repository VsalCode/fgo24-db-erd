CREATE TABLE petugas (
    id_petugas VARCHAR(255) PRIMARY KEY,
    nama_petugas VARCHAR(20)
);

CREATE TABLE rak_buku (
    id_rak_buku VARCHAR(255) PRIMARY KEY,
    kapasitas INTEGER,
    nomor_rak INTEGER
);

CREATE TABLE kategori (
    id_kategori VARCHAR(255) PRIMARY KEY,
    nama_kategori VARCHAR(20)
);

CREATE TABLE buku (
    id_buku VARCHAR(255) PRIMARY KEY,
    judul VARCHAR(100),
    isbn BIGINT,
    penulis VARCHAR(20),
    penerbit VARCHAR(20),
    cetakan INTEGER,
    halaman INTEGER,
    sinopsis VARCHAR(1000),
    tanggal_rilis VARCHAR(100),
    id_kategori VARCHAR(255) REFERENCES kategori(id_kategori),
    id_rak_buku VARCHAR(255) REFERENCES rak_buku(id_rak_buku),
    id_petugas VARCHAR(255) REFERENCES petugas(id_petugas)
);

CREATE TABLE peminjam (
    id_peminjam VARCHAR(255) PRIMARY KEY,
    nama_peminjam VARCHAR(20),
    nomor_hp INTEGER,
    alamat VARCHAR(150)
);

CREATE TABLE transaksi (
    id_transaksi VARCHAR(255) PRIMARY KEY,
    id_peminjam VARCHAR(255) REFERENCES peminjam(id_peminjam),
    id_buku VARCHAR(255) REFERENCES buku(id_buku)
);

ALTER TABLE buku ALTER COLUMN tanggal_rilis TYPE VARCHAR(100);
ALTER TABLE buku ALTER COLUMN sinopsis TYPE VARCHAR(1000);
ALTER TABLE buku ALTER COLUMN isbn TYPE BIGINT;
ALTER TABLE peminjam ALTER COLUMN nomor_hp TYPE BIGINT;
ALTER TABLE "petugas" ALTER COLUMN "nama_petugas" TYPE varchar(50);

INSERT INTO petugas (id_petugas, nama_petugas)
VALUES
    ('136189asiuadopqwe', 'Bahlil Lahadalia'),
    ('23171asdkvads', 'Luhut Binsar Panjaitan'),
    ('ad9332131gad', 'Ridwan Kamil'),
    ('qeyqyewiad32', 'Dedi Mulyadi'),
    ('p1x2y3z4qwe', 'Ahmad Yani'),
    ('p2a3b4c5rty', 'Siti Aminah'),
    ('p3m4n5k6uio', 'Budi Santoso'),
    ('p4j5h6g7asd', 'Rina Wulandari'),
    ('p5k6l7m8zxc', 'Eko Prasetyo'),
    ('p6n7b8v9qwe', 'Dewi Lestari');

INSERT INTO rak_buku (id_rak_buku, kapasitas, nomor_rak)
VALUES
    ('sda8yt2d222r9fb', 10, 1901),
    ('qweyqy123hasdads', 15, 1902),
    ('qwteiqvah236sda', 7, 1903),
    ('rb1a2s3d4f5', 12, 1904),
    ('rb2z3x4c5v6', 8, 1905),
    ('rb3q4w5e6r7', 10, 1906),
    ('rb4t5y6u7i8', 15, 1907),
    ('rb5o6p7a8s9', 9, 1908),
    ('rb6d7f8g9h0', 11, 1909),
    ('rb7j8k9l0z1', 13, 1910);

INSERT INTO kategori (id_kategori, nama_kategori)
VALUES
    ('12638136gqwgeuquwgdqu', 'flora & fauna'),
    ('2639saadsf21830adi', 'Ekonomi'),
    ('327502hsafjsk9243', 'Technology'),
    ('4f1k211lm14h', 'Fiksi Ilmiah'),
    ('k1p2o3i4u5y', 'Sejarah'),
    ('k2a3s4d5f6g', 'Sastra'),
    ('k3z4x5c6v7b', 'Bisnis'),
    ('k4q5w6e7r8t', 'Pendidikan'),
    ('k5y6u7i8o9p', 'Kesehatan'),
    ('k6a7s8d9f0g', 'Agama');

INSERT INTO buku (id_buku, judul, isbn, penulis, penerbit, cetakan, halaman, sinopsis, tanggal_rilis, id_kategori, id_rak_buku, id_petugas)
VALUES
    (
        'asdia2916jkas0dadhasdbuqweg',
        'Pedoman Sukses Budi Daya Ikan Lele', 
        978979071, 
        'Hadi Tribowo', 
        'Yrama Widya', 
        23, 
        154, 
        'Kesuksesan budidaya ikan lele setidaknya dipengaruhi oleh bibit, tempat pemeliharaan, pakan, serta pencegahan dan penanggulangan penyakit. Bibit ikan lele yang ditebar harus yang kualitasnya baik dan varietasnya sesuai dengan tempat pemeliharaannya. Tempat pemeliharaan ikan lele dapat berupa kolam, keramba, maupun sawah dengan sistem minapadi. Jenis, kualitas, kuantitas, dan intensitas pakan juga perlu diperhatikan untuk mengoptimalkan pertumbuhan ikan berkumis tersebut. Faktor lain yang tidak kalah pentingnya adalah cara mencegah dan menanggulangi penyakit yang mungkin menyerang ikan lele yang sedang dibudidayakan', 
        '16 Desember 2022',
        '12638136gqwgeuquwgdqu',
        'sda8yt2d222r9fb',
        '136189asiuadopqwe'
    ), 
    (
        'yuqweqv913bkjadoaodjbqe9u002',
        'Untung Dari Bisnis Domba & Kambing Ala Mt Farm',
        9789790066212,
        'Mitra Tani Farm',
        'Kawah Media',
        20,
        149,
        'Melalui buku ini, MT Farm mencoba berbagi pengalamannya kepada para peternak atau siapapun yang ingin memulai usaha ternak kambing dan domba. Dengan harapan informasi yang dibukukan ini menjadi inspirasi agar para peternak dapat terus berinovasi dalam menghadapi persaingan usaha.',
        '31 Juli 2020',
        '12638136gqwgeuquwgdqu',
        'sda8yt2d222r9fb',
        '136189asiuadopqwe'
    ),
    (
        'hun43454m32',
        'Hunger Games',
        9789792250756,
        'Mitra Tani Farm',
        'Gramedia Pustaka Utama',
        540000,
        408,
        'Dua puluh empat peserta. Hanya satu pemenang yang selamat. Amerika Utara musnah sudah. Kini di bekasnya berdiri negara Panem, dengan Capitol sebagai pusat kota yang dikelilingi dua belas distrik. Katniss, gadis  pipes, tinggal bersama adik perempuan dan ibunya di distrik termiskin di Distrik12. Karena pemberontakan di masa lalu terhadap Capitol, setiap tahun masing-masing Distrik harus mengirim seorang anak perempuan dan anak lelaki untuk bertarung sampai mati dan ditayangkan secara langsung di acara televisi The Hunger Games. Hanya ada satu pemenang setiap tahun. Tujuannya adalah membunuh atau dibunuh. Ketika adik perempuannya terpilih mengikuti The Hunger Games, Katniss mengajukan diri untuk menggantikannya. Dan dimulailah pertarungan yang takkan pernah dilupakan Capitol.',
        '3 Maret 2025',
        '4f1k211lm14h',
        'qweyqy123hasdads',
        '23171asdkvads'
    ),
    (
        'b1q2w3e4r5t',
        'Ekonomi Digital di Indonesia',
        9786020332116,
        'Budi Raharjo',
        'Gramedia',
        1,
        200,
        'Buku ini membahas perkembangan ekonomi digital di Indonesia, termasuk tantangan dan peluang di era industri 4.0.',
        '10 Januari 2023',
        '2639saadsf21830adi',
        'rb1a2s3d4f5',
        'p1x2y3z4qwe'
    ),
    (
        'b2a3s4d5f6g',
        'Pengantar Teknologi Informasi',
        9789790765432,
        'Andi Susilo',
        'Erlangga',
        2,
        250,
        'Buku ini memberikan gambaran umum tentang teknologi informasi, termasuk perkembangan AI dan IoT.',
        '15 Mei 2022',
        '327502hsafjsk9243',
        'rb2z3x4c5v6',
        'p2a3b4c5rty'
    ),
    (
        'b3z4x5c6v7b',
        'Dune',
        9786020321448,
        'Frank Herbert',
        'Gramedia Pustaka Utama',
        5,
        600,
        'Kisah epik tentang Paul Atreides yang berjuang di planet gurun Arrakis untuk menguasai rempah-rempah berharga.',
        '20 Agustus 2021',
        '4f1k211lm14h',
        'rb3q4w5e6r7',
        'p3m4n5k6uio'
    ),
    (
        'b4q5w6e7r8t',
        'Sejarah Dunia Modern',
        9789791234567,
        'John Doe',
        'Pustaka Jaya',
        3,
        320,
        'Buku ini menguraikan peristiwa penting dalam sejarah dunia dari abad ke-15 hingga abad ke-21.',
        '5 Februari 2024',
        'k1p2o3i4u5y',
        'rb4t5y6u7i8',
        'p4j5h6g7asd'
    ),
    (
        'b5y6u7i8o9p',
        'Sastra Indonesia Modern',
        9786029876543,
        'Sastra Wijaya',
        'Balai Pustaka',
        4,
        280,
        'Kompilasi karya sastra Indonesia modern yang mencerminkan dinamika sosial dan budaya.',
        '12 November 2023',
        'k2a3s4d5f6g',
        'rb5o6p7a8s9',
        'p5k6l7m8zxc'
    ),
    (
        'b6a7s8d9f0g',
        'Manajemen Bisnis Kecil',
        9789795432109,
        'Rina Sari',
        'Kawah Media',
        2,
        180,
        'Panduan praktis untuk memulai dan mengelola bisnis kecil dengan strategi efektif.',
        '25 Juni 2022',
        'k3z4x5c6v7b',
        'rb6d7f8g9h0',
        'p6n7b8v9qwe'
    ),
    (
        'b7h8j9k0l1z',
        'Gizi Seimbang untuk Kesehatan',
        9786027654321,
        'Dr. Ani Lestari',
        'Penerbit Kesehatan',
        1,
        220,
        'Buku ini menjelaskan pentingnya gizi seimbang untuk menjaga kesehatan tubuh dan pikiran.',
        '30 April 2024',
        'k5y6u7i8o9p',
        'rb7j8k9l0z1',
        'ad9332131gad'
    );

INSERT INTO peminjam (id_peminjam, nama_peminjam, nomor_hp, alamat)
VALUES
    ('pm1q2w3e4r5', 'Andi Pratama', 6281234567890, 'Jl. Merdeka No. 10, Jakarta'),
    ('pm2a3s4d5f6', 'Susi Rahayu', 6289876543210, 'Jl. Sudirman No. 5, Bandung'),
    ('pm3z4x5c6v7', 'Budi Setiawan', 6281122334455, 'Jl. Gatot Subroto, Surabaya'),
    ('pm4q5w6e7r8', 'Rina Amelia', 6289988776655, 'Jl. Diponegoro No. 15, Yogyakarta'),
    ('pm5y6u7i8o9', 'Eko Nugroho', 6281231231234, 'Jl. Pahlawan No. 20, Semarang'),
    ('pm6a7s8d9f0', 'Dewi Sartika', 6285678901234, 'Jl. Veteran No. 25, Medan'),
    ('pm7h8j9k0l1', 'Hendra Wijaya', 6284567890123, 'Jl. Ahmad Yani No. 30, Makassar'),
    ('pm8z9x0c1v2', 'Lina Marlina', 6282345678901, 'Jl. Thamrin No. 12, Jakarta'),
    ('pm9q0w1e2r3', 'Tono Suparno', 6283456789012, 'Jl. Cendrawasih No. 8, Bali'),
    ('pm0t1y2u3i4', 'Maya Sari', 6286789012345, 'Jl. Gajah Mada No. 18, Surabaya');

INSERT INTO transaksi (id_transaksi, id_peminjam, id_buku)
VALUES
    ('tr1a2s3d4f5', 'pm1q2w3e4r5', 'asdia2916jkas0dadhasdbuqweg'),
    ('tr2z3x4c5v6', 'pm2a3s4d5f6', 'yuqweqv913bkjadoaodjbqe9u002'),
    ('tr3q4w5e6r7', 'pm3z4x5c6v7', 'hun43454m32'),
    ('tr4t5y6u7i8', 'pm4q5w6e7r8', 'b1q2w3e4r5t'),
    ('tr5o6p7a8s9', 'pm5y6u7i8o9', 'b2a3s4d5f6g'),
    ('tr6d7f8g9h0', 'pm6a7s8d9f0', 'b3z4x5c6v7b'),
    ('tr7j8k9l0z1', 'pm7h8j9k0l1', 'b4q5w6e7r8t'),
    ('tr8h9j0k1l2', 'pm8z9x0c1v2', 'b5y6u7i8o9p'),
    ('tr9z0x1c2v3', 'pm9q0w1e2r3', 'b6a7s8d9f0g'),
    ('tr0q1w2e3r4', 'pm0t1y2u3i4', 'b7h8j9k0l1z');