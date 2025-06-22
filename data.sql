-- DUMMY DATA MOVIE TICKETING

INSERT INTO
    users (
        email,
        password,
        first_name,
        last_name,
        phone_number
    )
VALUES (
        'budi.santoso@gmail.com',
        'hashed_password_1',
        'Budi',
        'Santoso',
        '+628123456789'
    ),
    (
        'siti.rahayu@yahoo.com',
        'hashed_password_2',
        'Siti',
        'Rahayu',
        '+628234567890'
    ),
    (
        'ahmad.wijaya@gmail.com',
        'hashed_password_3',
        'Ahmad',
        'Wijaya',
        '+628345678901'
    ),
    (
        'dewi.sari@outlook.com',
        'hashed_password_4',
        'Dewi',
        'Sari',
        '+628456789012'
    ),
    (
        'andi.pratama@gmail.com',
        'hashed_password_5',
        'Andi',
        'Pratama',
        '+628567890123'
    ),
    (
        'maya.indah@gmail.com',
        'hashed_password_6',
        'Maya',
        'Indah',
        '+628678901234'
    ),
    (
        'rudi.hartono@yahoo.com',
        'hashed_password_7',
        'Rudi',
        'Hartono',
        '+628789012345'
    );

INSERT INTO registration_request (user_id) VALUES (1), (3), (5);

INSERT INTO
    session (created_at, user_id)
VALUES ('2024-06-23 10:30:00', 1),
    ('2024-06-23 11:15:00', 2),
    ('2024-06-23 14:45:00', 3),
    ('2024-06-23 16:20:00', 4),
    ('2024-06-23 18:00:00', 5),
    ('2024-06-23 19:30:00', 6),
    ('2024-06-23 20:15:00', 7);

INSERT INTO
    directors (first_name, last_name)
VALUES ('Joko', 'Anwar'),
    ('Timo', 'Tjahjanto'),
    ('Mouly', 'Surya'),
    ('Hanung', 'Bramantyo'),
    ('Riri', 'Riza'),
    ('Christopher', 'Nolan'),
    ('James', 'Cameron'),
    ('Denis', 'Villeneuve');

INSERT INTO
    movies (
        poster_path,
        backdrop_path,
        title,
        overview,
        duration,
        release_date,
        directors_id
    )
VALUES (
        '/posters/pengabdi_setan.jpg',
        '/backdrops/pengabdi_setan.jpg',
        'Pengabdi Setan 2: Communion',
        'Keluarga Suwono harus menghadapi teror yang lebih mengerikan dari iblis yang telah menghantui mereka.',
        119,
        '2022-07-30',
        1
    ),
    (
        '/posters/the_night_comes.jpg',
        '/backdrops/the_night_comes.jpg',
        'The Night Comes for Us',
        'Seorang pembunuh bayaran harus melindungi seorang gadis kecil dari sindikat kejahatan yang brutal.',
        121,
        '2018-10-19',
        2
    ),
    (
        '/posters/marlina.jpg',
        '/backdrops/marlina.jpg',
        'Marlina Si Pembunuh dalam Empat Babak',
        'Seorang janda di Sumba harus berhadapan dengan sekelompok perampok yang mengancam kehidupannya.',
        93,
        '2017-05-18',
        3
    ),
    (
        '/posters/dilan.jpg',
        '/backdrops/dilan.jpg',
        'Dilan 1990',
        'Kisah cinta remaja di Bandung tahun 1990 antara Dilan dan Milea.',
        110,
        '2018-01-25',
        4
    ),
    (
        '/posters/laskar_pelangi.jpg',
        '/backdrops/laskar_pelangi.jpg',
        'Laskar Pelangi',
        'Perjuangan anak-anak Belitung untuk mendapatkan pendidikan yang layak.',
        124,
        '2008-09-25',
        5
    ),
    (
        '/posters/avatar.jpg',
        '/backdrops/avatar.jpg',
        'Avatar: The Way of Water',
        'Jake Sully dan keluarganya harus menghadapi ancaman baru di planet Pandora.',
        192,
        '2022-12-16',
        7
    ),
    (
        '/posters/dune.jpg',
        '/backdrops/dune.jpg',
        'Dune: Part One',
        'Adaptasi novel fiksi ilmiah Frank Herbert tentang pertarungan di planet gurun Arrakis.',
        155,
        '2021-10-22',
        8
    ),
    (
        '/posters/tenet.jpg',
        '/backdrops/tenet.jpg',
        'Tenet',
        'Seorang agen rahasia harus mencegah Perang Dunia III melalui manipulasi waktu.',
        150,
        '2020-08-26',
        6
    );

INSERT INTO
    actors (first_name, last_name)
VALUES ('Tara', 'Basro'),
    ('Bront', 'Palarae'),
    ('Endy', 'Arfian'),
    ('Marsha', 'Timothy'),
    ('Iqbaal', 'Ramadhan'),
    ('Vanesha', 'Prescilla'),
    ('Reza', 'Rahadian'),
    ('Dian', 'Sastrowardoyo'),
    ('Joe', 'Taslim'),
    ('Iko', 'Uwais'),
    ('Cut', 'Mini'),
    ('Zara', 'JKT48'),
    ('Ario', 'Bayu'),
    ('Luna', 'Maya'),
    ('John David', 'Washington'),
    ('Robert', 'Pattinson');

INSERT INTO
    movies_cast (movie_id, actor_id)
VALUES
    -- Pengabdi Setan 2 cast
    (1, 1), -- Tara Basro
    (1, 2), -- Bront Palarae
    (1, 3), -- Endy Arfian
    -- The Night Comes for Us cast
    (2, 9), -- Joe Taslim
    (2, 10), -- Iko Uwais
    -- Marlina cast
    (3, 4), -- Marsha Timothy
    (3, 13), -- Ario Bayu
    -- Dilan 1990 cast
    (4, 5), -- Iqbaal Ramadhan
    (4, 6), -- Vanesha Prescilla
    -- Laskar Pelangi cast
    (5, 11), -- Cut Mini
    (5, 12), -- Zara JKT48
    -- Avatar cast
    (6, 7), -- Reza Rahadian (Indonesian dub)
    (6, 8), -- Dian Sastrowardoyo (Indonesian dub)
    -- Dune cast
    (7, 14), -- Luna Maya (Indonesian dub)
    -- Tenet cast
    (8, 15), -- John David Washington
    (8, 16);
-- Robert Pattinson

INSERT INTO
    movies_genres (movie_id, genre)
VALUES (1, 'Horror'),
    (1, 'Thriller'),
    (2, 'Action'),
    (2, 'Crime'),
    (3, 'Drama'),
    (3, 'Western'),
    (4, 'Romance'),
    (4, 'Drama'),
    (5, 'Drama'),
    (5, 'Family'),
    (6, 'Sci-Fi'),
    (6, 'Adventure'),
    (7, 'Sci-Fi'),
    (7, 'Adventure'),
    (8, 'Sci-Fi'),
    (8, 'Action');

INSERT INTO
    payment_method (name)
VALUES ('GoPay'),
    ('OVO'),
    ('DANA'),
    ('ShopeePay'),
    ('Bank BCA'),
    ('Bank Mandiri'),
    ('Bank BRI'),
    ('Kartu Kredit'),
    ('Cash/Tunai');

INSERT INTO
    transactions (
        email,
        full_name,
        phone_number,
        total_seats,
        amount,
        is_paid,
        created_at,
        due_time,
        created_by,
        payment_id
    )
VALUES (
        'budi.santoso@gmail.com',
        'Budi Santoso',
        '+628123456789',
        2,
        50000.00,
        true,
        '2024-06-23 09:30:00',
        '2024-06-23 10:00:00',
        1,
        1
    ),
    (
        'siti.rahayu@yahoo.com',
        'Siti Rahayu',
        '+628234567890',
        1,
        35000.00,
        true,
        '2024-06-23 10:15:00',
        '2024-06-23 10:45:00',
        2,
        2
    ),
    (
        'hadiah.keluarga@gmail.com',
        'Keluarga Wijaya',
        '+628888888888',
        4,
        140000.00,
        true,
        '2024-06-23 11:00:00',
        '2024-06-23 11:30:00',
        3,
        3
    ),
    (
        'dewi.sari@outlook.com',
        'Dewi Sari',
        '+628456789012',
        2,
        70000.00,
        false,
        '2024-06-23 12:30:00',
        '2024-06-23 13:00:00',
        4,
        4
    ),
    (
        'booking.grup@gmail.com',
        'Komunitas Film Jakarta',
        '+628111222333',
        6,
        210000.00,
        true,
        '2024-06-23 13:45:00',
        '2024-06-23 14:15:00',
        5,
        5
    ),
    (
        'maya.indah@gmail.com',
        'Maya Indah',
        '+628678901234',
        1,
        45000.00,
        true,
        '2024-06-23 15:20:00',
        '2024-06-23 15:50:00',
        6,
        6
    ),
    (
        'rudi.hartono@yahoo.com',
        'Rudi Hartono',
        '+628789012345',
        3,
        105000.00,
        true,
        '2024-06-23 16:30:00',
        '2024-06-23 17:00:00',
        7,
        7
    );

INSERT INTO
    transactions_details (
        cinema_name,
        time,
        date,
        location,
        seat_number,
        transaction_id,
        movie_id
    )
VALUES
    -- Transaction 1 - Budi nonton Pengabdi Setan 2
    (
        'CGV Grand Indonesia',
        '19:30:00',
        '2024-06-24',
        'Mall Grand Indonesia, Jakarta Pusat',
        'A12',
        1,
        1
    ),
    (
        'CGV Grand Indonesia',
        '19:30:00',
        '2024-06-24',
        'Mall Grand Indonesia, Jakarta Pusat',
        'A13',
        1,
        1
    ),
    -- Transaction 2 - Siti nonton The Night Comes for Us
    (
        'Cinema XXI Plaza Senayan',
        '21:00:00',
        '2024-06-24',
        'Plaza Senayan, Jakarta Selatan',
        'B15',
        2,
        2
    ),
    -- Transaction 3 - Ahmad booking untuk keluarga - Marlina
    (
        'Cinepolis Lippo Mall Puri',
        '15:30:00',
        '2024-06-25',
        'Lippo Mall Puri, Jakarta Barat',
        'C01',
        3,
        3
    ),
    (
        'Cinepolis Lippo Mall Puri',
        '15:30:00',
        '2024-06-25',
        'Lippo Mall Puri, Jakarta Barat',
        'C02',
        3,
        3
    ),
    (
        'Cinepolis Lippo Mall Puri',
        '15:30:00',
        '2024-06-25',
        'Lippo Mall Puri, Jakarta Barat',
        'C03',
        3,
        3
    ),
    (
        'Cinepolis Lippo Mall Puri',
        '15:30:00',
        '2024-06-25',
        'Lippo Mall Puri, Jakarta Barat',
        'C04',
        3,
        3
    ),
    -- Transaction 4 - Dewi booking Dilan 1990 (belum bayar)
    (
        'CGV Blitz Megaplex',
        '18:45:00',
        '2024-06-25',
        'Kuningan City, Jakarta Selatan',
        'D08',
        4,
        4
    ),
    (
        'CGV Blitz Megaplex',
        '18:45:00',
        '2024-06-25',
        'Kuningan City, Jakarta Selatan',
        'D09',
        4,
        4
    ),
    -- Transaction 5 - Andi booking grup untuk Laskar Pelangi
    (
        'Cinema XXI Mal Kelapa Gading',
        '16:00:00',
        '2024-06-26',
        'Mal Kelapa Gading, Jakarta Utara',
        'E01',
        5,
        5
    ),
    (
        'Cinema XXI Mal Kelapa Gading',
        '16:00:00',
        '2024-06-26',
        'Mal Kelapa Gading, Jakarta Utara',
        'E02',
        5,
        5
    ),
    (
        'Cinema XXI Mal Kelapa Gading',
        '16:00:00',
        '2024-06-26',
        'Mal Kelapa Gading, Jakarta Utara',
        'E03',
        5,
        5
    ),
    (
        'Cinema XXI Mal Kelapa Gading',
        '16:00:00',
        '2024-06-26',
        'Mal Kelapa Gading, Jakarta Utara',
        'E04',
        5,
        5
    ),
    (
        'Cinema XXI Mal Kelapa Gading',
        '16:00:00',
        '2024-06-26',
        'Mal Kelapa Gading, Jakarta Utara',
        'E05',
        5,
        5
    ),
    (
        'Cinema XXI Mal Kelapa Gading',
        '16:00:00',
        '2024-06-26',
        'Mal Kelapa Gading, Jakarta Utara',
        'E06',
        5,
        5
    ),
    -- Transaction 6 - Maya nonton Avatar
    (
        'IMAX CGV Grand Indonesia',
        '20:15:00',
        '2024-06-26',
        'Mall Grand Indonesia, Jakarta Pusat',
        'F10',
        6,
        6
    ),
    -- Transaction 7 - Rudi dengan teman-teman nonton Dune
    (
        'Cinema XXI Plaza Indonesia',
        '21:30:00',
        '2024-06-27',
        'Plaza Indonesia, Jakarta Pusat',
        'G05',
        7,
        7
    ),
    (
        'Cinema XXI Plaza Indonesia',
        '21:30:00',
        '2024-06-27',
        'Plaza Indonesia, Jakarta Pusat',
        'G06',
        7,
        7
    ),
    (
        'Cinema XXI Plaza Indonesia',
        '21:30:00',
        '2024-06-27',
        'Plaza Indonesia, Jakarta Pusat',
        'G07',
        7,
        7
    );

