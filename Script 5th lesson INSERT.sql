INSERT INTO genre (title)
VALUES 
	('Pop'),
	('Rock'),
	('Hip-hop'),
	('Electronic'),
	('Metal'),
	('R & B');

INSERT INTO artist (name)
VALUES
	('30 Second to Mars'),
	('Aerosmith'),
	('ACDC'),
	('Axwell'),
	('Ingrosso'),
	('Shapov'),
	('Hayley Williams'),
	('B. o. B.'),
	('Eminem'),
	('Bon Jovi'),
	('Five Finger Death Punch'),
	('David Guetta'),
	('Sia'),
	('Post Malone'),
	('Kanye West'),
	('BTS'), 
	('Dua Lipa'), 
	('The Weekend');

INSERT INTO artistgenre 
VALUES
	(4, 12),
	(4, 13),
	(1, 13),
	(2, 11),
	(5, 11),
	(2, 10),
	(3, 9),
	(3, 8),
	(1, 7),
	(2, 7),
	(4, 6),
	(4, 5),
	(4, 4),
	(2, 3),
	(5, 3),
	(2, 2),
	(2, 1),
	(3, 14),
	(3, 15),
	(6, 18), 
	(1, 18), 
	(1, 16), 
	(1, 17);

INSERT INTO album (title, release_year)
VALUES 
	('This Is War', 2009),
	('A Beautiful Lie', 2005),
	('Permanent Vacation', 1987),
	('Aerosmith', 1973),
	('Highway to Hell', 1979),
	('Belong', 2016),
	('More Than You Know', 2017),
	('B.o.B Presents: The Adventures of Bobby Ray', 2010),
	('Crush', 2000),
	('Listen', 2004),
	('Recovery', 2010),
	('The Wrong Side of Heaven and the Righteous Side of Hell', 2013),
	('Beerbongs & Bentleys', 2018),
	('ye', 2018),
	('BE', 2020), 
	('Future Nostalgia', 2020), 
	('After Hours', 2020);

INSERT INTO artistalbum 
VALUES 
	(1, 1),
	(1, 2),
	(2, 3),
	(2, 4),
	(3, 5),
	(4, 6),
	(6, 6),
	(5, 7),
	(4, 7),
	(7, 8),
	(8, 8),
	(9, 8),
	(10, 9),
	(12, 10),
	(13, 10),
	(9, 11),
	(11, 12),
	(14, 13),
	(15, 14),
	(16, 15), 
	(17, 16), 
	(18, 17);

INSERT INTO song (title, duration, album_id)
VALUES
	('Closer To The Edge', 273, 1),
	('Attack', 189, 2),
	('Hurricane', 372, 1),
	('The Kill', 228, 2),
	('Highway To Hell', 208, 5),
	('Angel', 307, 3),
	('Dream On', 277, 4),
	('Belong', 217, 6),
	('More Than You Know', 203, 7),
	('Airplanes', 319, 8),
	('It`s My Life', 224, 9),
	('Bang My Head', 233, 10),
	('Not Afraid', 248, 11),
	('Space Bound', 278, 11),
	('Wrong Side of Heaven', 271, 12),
	('Better Now', 232, 13),
	('Dynamite', 199, 15), 
	('Levitating', 203, 16), 
	('Save Your Tears', 215, 17), 
	('Blinding Lights', 200, 17);

INSERT INTO collection (title, release_year)
VALUES 
	('All time top 10 songs', 2000),
	('Best Eminem songs', 2012),
	('Top 10 rock songs', 2005),
	('Dance music', 2018),
	('Road music playlist', 2021),
	('Top songs 70s', 1980),
	('All time top 10 songs', 2021),
	('Top 10 30 seconds to mars songs', 2006);

INSERT INTO songcollection 
VALUES
	(2, 8),
	(4, 8),
	(11, 7),
	(6, 7),
	(5, 7),
	(5, 6),
	(7, 6),
	(5, 5),
	(6, 5),
	(7, 5),
	(9, 5),
	(11, 5),
	(12, 5),
	(8, 4),
	(9, 4),
	(12, 4),
	(5, 3),
	(6, 3),
	(11, 3),
	(13, 2),
	(14, 2),
	(5, 1),
	(6, 1),
	(11, 1),
	(16, 5),
	(19, 5), 
	(20, 5);

INSERT INTO songartist
VALUES
	(1, 1),
	(2, 1),
	(3, 1),
	(4, 1),
	(5, 3),
	(6, 2),
	(7, 2),
	(8, 4),
	(8, 6),
	(9, 4),
	(9, 5),
	(10, 7),
	(10, 8),
	(10, 9),
	(11, 10),
	(12, 12),
	(12, 13),
	(13, 9),
	(14, 9),
	(15, 11),
	(16, 14),
	(17, 16), 
	(18, 17), 
	(19, 18), 
	(20, 18);
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	