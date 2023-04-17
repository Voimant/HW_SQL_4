INSERT INTO executor (nickname)
VALUES
('Unheilig'),
('Korn'),
('White lies'),
('Old Man''s Will'),
('Geezer'),
('The Weeknd'),
('30 seconds to Mars'),
('The Cure'),
('Monoral'),
('Король и шут'),
('Павел Пламенев'),
('Chris Duarte Group'),
('KALEO');

INSERT INTO genres (genre_title)
VALUES
('альтернативный R&B'),
('хоррор-панк'),
('альтернативный рок'),
('пост-панк'),
('готик-рок'),
('блюз-рок'),
('дум-метал'),
('хард-рок'),
('альтернативный метал'),
('готик-поп'),
('индастриал-рок'),
('рок'),
('блюз');

INSERT INTO  album (album_title,year_of_release)
VALUES
('Von Mensch zu Mensch', '2016'),
('Take a look in the Mirror', '2003'),
('See You on the Other Side', '2005'),
('Акустический альбом', '1999'),
('Как в старой сказке', '2001'),
('Pornography', '1982'),
('To Defeat the Great Ones', '2021'),
('Night Before Battle', '2016'),
('Turbulence (International)', '2007'),
('To Lose my Life', '2009'),
('A beautiful Lie', '2007'),
('Gage', '2014'),
('The Highlights', '2021'),
('Hard Times - Troubled Man', '2015'),
('Wish', '1992'),
('Disintegration', '1990'),
('Infinite Energy', '2010'),
('America', '2018'),
('The Nothing', '2019'),
('I Want More/Break My Baby', '2020');

INSERT INTO collection (title, year_of_release)
VALUES
('Greatest Hits Vol.1', '2004'),
('Собрание', '2001'),
('Live and Rare', '2006'),
('Live in Kiev', '2002'),
('90''s Pop Pre - Cleared Comp', '2007'),
('Festival Anthems', '2018'),
('Mixed Up', '1990'),
('Galore: The Singles 1987 - 1997', '1997'),
('The Vow', '2012'),
('Atticus Presents: Volume 1', '2009'),
('After Hours', '2020'),
('Live', '2013');

INSERT INTO tracks  (track_title, duration,album_id)
VALUES
('Egois', '247', 1),
('Legenden', '252', 1),
('Right Now', '189', 2),
('Twisted Transistor', '188', 3),
('Кукла колдуна', '203', 4),
('Воспоминания о былой любви', '295', 5),
('The Figureheas', '375', 6),
('Friday I''m in Love', '216', 15),
('Pictures of You', '401', 16),
('Сокрушить Великих!', '289', 7),
('Ночь перед боем', '240', 8),
('Kiri', '261', 9),
('Death', '301', 10),
('The Kill', '232', 11),
('Attack', '188', 11),
('Ghost Rider Solar Plexus', '397', 12),
('Blinding Lights', '200', 13),
('How Could You Know', '250', 14),
('Easy Rider', '179', 14),
('My Way Down', '276', 17),
('Cross My Heart', '221', 17),
('Rescue Me', '217', 18),
('Break My Baby', '265', 20),
('The Darkness is Revealing', '220', 19),
('This Loss', '281', 19),
('Hard3r', '287', 19),
('Gravity of Discomfort', '214', 19),
('The Ringmaster', '180', 19);

INSERT INTO album_executor (album_id, executor_id)
VALUES
(1, 1),
(2, 2),
(3, 2),
(4, 10),
(5, 10),
(6, 8),
(7, 11),
(8, 11),
(9, 9),
(10, 3),
(11, 7),
(12, 5),
(13, 6),
(14, 4),
(15, 8),
(16, 8),
(17, 12),
(18, 7),
(19, 2),
(20, 13);

INSERT INTO genre_executor (genre_id, executor_id)
VALUES
(1, 6),
(2, 10),
(3, 3),
(3, 7),
(3, 9),
(4, 3),
(4, 8),
(5, 1),
(6, 4),
(6, 13),
(7, 5),
(8, 7),
(9, 2),
(10, 8),
(11, 1),
(12, 11),
(13, 12);

INSERT INTO track_collection (track_id, collection_id)
VALUES
(3, 1),
(5, 2),
(3, 3),
(5, 4),
(8, 5),
(8, 6),
(9, 7),
(8, 8),
(9, 8),
(9, 9),
(14, 10),
(17, 11),
(20, 12);




