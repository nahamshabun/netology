insert into artist values(default,'Metallica');
insert into artist values(default,'Megadeth');
insert into artist values(default,'Anthrax');
insert into artist values(default,'Eric Clapton');
insert into artist values(default,'ZZ Top');
insert into artist values(default,'Van Halen');
insert into artist values(default,'Lynyrd Skynyrd');
insert into artist values(default,'AC/DC');

insert into genre values(default,'rock');
insert into genre values(default,'metal');
insert into genre values(default,'blues');
insert into genre values(default,'pop');
insert into genre values(default,'pop-rock');

insert into artist_genre values(1, 1);
insert into artist_genre values(1, 2);
insert into artist_genre values(2, 1);
insert into artist_genre values(2, 2);
insert into artist_genre values(3, 1);
insert into artist_genre values(4, 1);
insert into artist_genre values(4, 3);
insert into artist_genre values(5, 1);
insert into artist_genre values(6, 2);
insert into artist_genre values(7, 1);
insert into artist_genre values(8, 1);

insert into album values(default, '...And Justice For All',1988);
insert into album values(default, 'Black Album',1991);
insert into album values(default, 'Master of Puppets',1986);
insert into album values(default, 'Endgame',2018);
insert into album values(default, 'Peace Sells',1986);
insert into album values(default, 'The Greater of 2 Evils',2004);
insert into album values(default, 'Reptile',2001);
insert into album values(default, 'Riding with the King',2000);
insert into album values(default, 'Greatest Hits',1992);
insert into album values(default, 'Greatest Hits',2004);
insert into album values(default, 'All-Time Greatest Hits',1975);
insert into album values(default, 'Greatest Hits',2003);
insert into album values(default, 'Sgt. Pepper''s Lonely Hearts Club Band', 1967);

insert into artist_album values(1, 1);
insert into artist_album values(1, 2);
insert into artist_album values(1, 3);
insert into artist_album values(2, 4);
insert into artist_album values(2, 5);
insert into artist_album values(3, 6);
insert into artist_album values(4, 7);
insert into artist_album values(4, 8);
insert into artist_album values(5, 9);
insert into artist_album values(6, 10);
insert into artist_album values(7, 11);
insert into artist_album values(8, 12);

insert into track values(default, 1, 'One', 432);
insert into track values(default, 1, 'Blackened', 390);
insert into track values(default, 2, 'Enter Sandman', 314);
insert into track values(default, 2, 'Sad But True', 322);
insert into track values(default, 3, 'Master of Puppets', 511);
insert into track values(default, 3, 'Battery My', 311);
insert into track values(default, 4, 'Dialectic Chaos', 135);
insert into track values(default, 4, 'Endgamy', 334);
insert into track values(default, 5, 'Peace Sells', 245);
insert into track values(default, 5, 'The Conjuring', 305);
insert into track values(default, 6, 'Madhouse', 267);
insert into track values(default, 6, 'I am the Law', 362);
insert into track values(default, 7, 'мой Reptile', 209);
insert into track values(default, 7, 'Modern Girl', 269);
insert into track values(default, 8, 'Riding with the King', 233);
insert into track values(default, 8, 'Key to the Highway', 201);
insert into track values(default, 9, 'Sharp Dressed Man', 428);
insert into track values(default, 9, 'my Legs', 267);
insert into track values(default, 10, 'Eruption', 87);
insert into track values(default, 10, 'Hot For Teacher', 265);
insert into track values(default, 11, 'Sweet Home Alabama', 264);
insert into track values(default, 11, 'Free Bird', 853);
insert into track values(default, 12, 'Thunderstruck', 271);
insert into track values(default, 12, 'T.N.T', 202);

insert into compilation_album values(default, 'The best of vol.1', 2011);
insert into compilation_album values(default, 'The best of vol.2', 2012);
insert into compilation_album values(default, 'The best of vol.3', 2013);
insert into compilation_album values(default, 'The best of vol.4', 2014);
insert into compilation_album values(default, 'The best of vol.5', 2015);
insert into compilation_album values(default, 'The best of vol.6', 2016);
insert into compilation_album values(default, 'The best of vol.7', 2017);
insert into compilation_album values(default, 'The best of vol.8', 2018);

insert into compilation_album_track values(1, 1);
insert into compilation_album_track values(3, 1);
insert into compilation_album_track values(5, 1);
insert into compilation_album_track values(2, 2);
insert into compilation_album_track values(3, 2);
insert into compilation_album_track values(4, 2);
insert into compilation_album_track values(7, 3);
insert into compilation_album_track values(9, 3);
insert into compilation_album_track values(11, 3);
insert into compilation_album_track values(5, 4);
insert into compilation_album_track values(6, 4);
insert into compilation_album_track values(7, 4);
insert into compilation_album_track values(13, 5);
insert into compilation_album_track values(15, 5);
insert into compilation_album_track values(17, 5);
insert into compilation_album_track values(8, 6);
insert into compilation_album_track values(9, 6);
insert into compilation_album_track values(10, 6);
insert into compilation_album_track values(19, 7);
insert into compilation_album_track values(21, 7);
insert into compilation_album_track values(23, 7);
insert into compilation_album_track values(11, 8);
insert into compilation_album_track values(12, 8);
insert into compilation_album_track values(13, 8);