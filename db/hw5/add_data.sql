insert into artist 
values 
	(default,'Metallica'),
	(default,'Megadeth'),
	(default,'Anthrax'),
	(default,'Eric Clapton'),
	(default,'ZZ Top'),
	(default,'Van Halen'),
	(default,'Lynyrd Skynyrd'),
	(default,'AC/DC');

insert into genre 
values
	(default,'rock'),
	(default,'metal'),
	(default,'blues'),
	(default,'pop'),
	(default,'pop-rock');

insert into artist_genre
values
	(1, 1),
	(1, 2),
	(2, 1),
	(2, 2),
	(3, 1),
	(4, 1),
	(4, 3),
	(5, 1),
	(6, 2),
	(7, 1),
	(8, 1);

insert into album 
values
	(default, '...And Justice For All',1988),
	(default, 'Black Album',1991),
	(default, 'Master of Puppets',1986),
	(default, 'Endgame',2018),
	(default, 'Peace Sells',2020),
	(default, 'The Greater of 2 Evils',2004),
	(default, 'Reptile',2020),
	(default, 'Riding with the King',2000),
	(default, 'Greatest Hits',2019),
	(default, 'Greatest Hits',2004),
	(default, 'All-Time Greatest Hits',2020),
	(default, 'Greatest Hits',2003),
	(default, 'Sgt. Pepper''s Lonely Hearts Club Band', 1967);

insert into artist_album
values
	(1, 1),
	(1, 2),
	(1, 3),
	(2, 4),
	(2, 5),
	(3, 6),
	(4, 7),
	(4, 8),
	(5, 9),
	(6, 10),
	(7, 11),
	(8, 12);

insert into track 
values
	(default, 1, 'One', 432),
	(default, 1, 'Blackened', 390),
	(default, 2, 'Enter Sandman', 314),
	(default, 2, 'Sad But True', 322),
	(default, 3, 'Master of Puppets', 511),
	(default, 3, 'Battery My', 311),
	(default, 4, 'Dialectic Chaos', 135),
	(default, 4, 'Endgamy', 334),
	(default, 5, 'Peace Sells', 245),
	(default, 5, 'The Conjuring', 305),
	(default, 6, 'Madhouse', 267),
	(default, 6, 'I am the Law', 362),
	(default, 7, 'мой Reptile', 209),
	(default, 7, 'Modern Girl', 87),
	(default, 8, 'Riding with the King', 233),
	(default, 8, 'Key to the Highway', 201),
	(default, 9, 'Sharp Dressed Man', 428),
	(default, 9, 'my Legs', 267),
	(default, 10, 'Eruption', 87),
	(default, 10, 'Hot For Teacher', 265),
	(default, 11, 'Sweet Home Alabama', 264),
	(default, 11, 'Free Bird', 853),
	(default, 12, 'Thunderstruck', 271),
	(default, 12, 'T.N.T', 202);

insert into compilation_album
values
	(default, 'The best of vol.1', 2011),
	(default, 'The best of vol.2', 2012),
	(default, 'The best of vol.3', 2013),
	(default, 'The best of vol.4', 2014),
	(default, 'The best of vol.5', 2015),
	(default, 'The best of vol.6', 2016),
	(default, 'The best of vol.7', 2017),
	(default, 'The best of vol.8', 2018);

insert into compilation_album_track
values
	(1, 1),
	(3, 1),
	(5, 1),
	(2, 2),
	(3, 2),
	(4, 2),
	(7, 3),
	(9, 3),
	(11, 3),
	(5, 4),
	(6, 4),
	(7, 4),
	(13, 5),
	(15, 5),
	(17, 5),
	(8, 6),
	(9, 6),
	(10, 6),
	(19, 7),
	(21, 7),
	(23, 7),
	(11, 8),
	(12, 8),
	(13, 8);