-- phpMyAdmin SQL Dump
-- version 2.9.0.1
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Jan 12, 2007 at 12:14 PM
-- Server version: 5.0.24
-- PHP Version: 5.1.6
-- 
-- Database: `animepo5i`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `material`
-- 

DROP TABLE IF EXISTS `material`;
CREATE TABLE IF NOT EXISTS `material` (
  `id` int(11) NOT NULL auto_increment,
  `nombre` text NOT NULL,
  `tipo` varchar(100) NOT NULL default '',
  `duracion` varchar(100) NOT NULL default '',
  `almacenamiento` varchar(100) NOT NULL default '',
  `lenguaje` varchar(100) NOT NULL default '',
  `subtitulos` varchar(100) NOT NULL default '',
  `calidad` varchar(10) NOT NULL default '',
  `formato` varchar(100) NOT NULL default '',
  `genero` varchar(200) NOT NULL default '',
  `fansub` varchar(200) NOT NULL default '',
  `autor` varchar(100) NOT NULL default '',
  `calificacion` int(2) NOT NULL default '0',
  `screenshot` varchar(100) NOT NULL default '',
  `incompleto` char(2) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=231 ;

-- 
-- Dumping data for table `material`
-- 

INSERT INTO `material` VALUES (1, 'Gunbuster 2 ~ Aim for the Top! 2', 'ova', '5', '1 DVD', 'japones', 'ingles', 'HQ', 'MPEG-4', 'Shonen', 'AniXtasis', 'Gainax', 9, 'gunbuster2.jpg', 'si');
INSERT INTO `material` VALUES (2, 'Naruto', 'serie', '189', '6 DVD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shonen', '', 'Kishimoto Masashi', 10, 'naruto.jpg', 'si');
INSERT INTO `material` VALUES (3, 'Yakitate Japan', 'serie', '35', '2 DVD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Comedia', 'Spanishare', 'Takashi Hashiguchi', 0, 'yakitate.jpg', 'si');
INSERT INTO `material` VALUES (4, 'Rockman EXE ', 'serie', '39', '2 DVD', 'japones', 'ingles', 'HQ', 'MPEG-4', 'Shonen', 'Wolfpack productions', '', 7, 'rockmanexe.jpg', 'si');
INSERT INTO `material` VALUES (5, 'Card Captor Sakura', 'serie', '70', '8 DVD', 'japones/ingles', 'ingles', 'HQ', 'DVD', 'Shojo', 'HK', 'CLAMP', 10, 'dvd_ccs.jpg', '');
INSERT INTO `material` VALUES (6, 'Rurouni Kenshin The Movie', 'pelicula', '1', '1 DVD', 'japones/ingles', 'espanol', 'HQ', 'DVD', 'Shonen', 'Selecta Vision', 'Hatsuki Tsuji', 7, 'dvd_samuraix.jpg', '');
INSERT INTO `material` VALUES (7, 'Ninja Scroll', 'pelicula', '1', '1 DVD', 'japones/espanol', 'espanol', 'HQ', 'DVD', 'Shonen', 'ADV', 'Yoshiaki Kawajiri', 7, 'dvd_ninjascroll.jpg', '');
INSERT INTO `material` VALUES (8, 'Captain Tsubasa (vol.1 y vol.2)', 'pelicula', '4', '2 DVD', 'japones/espanol', 'espanol', 'HQ', 'DVD', 'Shonen', 'Jonu Media', 'Yoichi Takahashi', 8, 'dvd_tsubasa1.jpg', '');
INSERT INTO `material` VALUES (9, 'FLCL', 'ova', '6', '3 DVD', 'japones/espanol', 'espanol', 'HQ', 'DVD', 'Shonen', 'Selecta Vision', 'Gainax', 10, 'dvd_flcl.jpg', '');
INSERT INTO `material` VALUES (10, 'Rurouni Kenshin - Trust & Betrayal (Director''s Cut)', 'ova', '4', '1 DVD', 'japones/ingles', 'ingles', 'HQ', 'DVD', 'Shonen', 'ADV', 'Kazuhiro Furuhashi', 10, 'dvd_kenshinTB.jpg', '');
INSERT INTO `material` VALUES (11, 'Rurouni Kenshin - Reflection ', 'ova', '2', '1 DVD', 'japones/ingles', 'ingles', 'HQ', 'DVD', 'Shonen', 'ADV', 'Kazuhiro Furuhashi', 10, 'dvd_kenshinREFLEX.jpg', '');
INSERT INTO `material` VALUES (12, 'Hellsing ', 'serie', '13', '3 DVD', 'japones', 'espanol', 'HQ', 'DVD', 'Shonen', 'Dash', 'Kouta Hirano', 10, 'dvd_hellsing.jpg', '');
INSERT INTO `material` VALUES (13, 'Gantz', 'manga', '', '1 DVD', 'espanol/ingles', '', 'HQ', 'Imagen', 'Shonen / Ecchi', '', 'Hiroya Oku', 10, 'gantz.jpg', 'si');
INSERT INTO `material` VALUES (14, 'Hikaru no go', 'manga', '189 + 2 extras + 3 omake', '1 CD', 'ingles', '', 'HQ', 'Imagen', 'Shonen', '', 'Yumi Hotta', 0, 'hikarunogo.jpg', '');
INSERT INTO `material` VALUES (15, 'Rurouni Kenshin + 2 especiales', 'manga', '255', '2 CD', 'ingles', '', 'HQ', 'Imagen', 'Shonen', '', 'Nobuhiro Watsuki', 0, 'kenshin.jpg', '');
INSERT INTO `material` VALUES (16, 'Naruto', 'manga', '', '', 'ingles', '', '', 'Imagen', 'Shonen', '', 'Masashi Kishimoto', 0, 'naruto.jpg', 'si');
INSERT INTO `material` VALUES (17, 'Mahou Sensei NegiMA! ', 'manga', '', '', 'ingles', '', '', 'Imagen', 'Shojo / Ecchi', '', 'Ken Akamatsu', 0, 'msn.jpg', 'si');
INSERT INTO `material` VALUES (18, 'I''''s', 'manga', '15', '360 MB', 'espanol', '', 'HQ', 'Imagen', 'Shojo / Ecchi', '', 'Masakazu Katsura', 0, 'is.jpg', '');
INSERT INTO `material` VALUES (19, 'M', 'manga', '1', '4 MB', 'espanol', '', 'HQ', 'Imagen', 'Hentai', '', 'Masakazu Katsura', 0, 'm.jpg', '');
INSERT INTO `material` VALUES (20, 'Dragonball ', 'manga', '42', '245 MB', 'espanol', '', 'HQ', 'Imagen', 'Shonen', '', 'Akira Toriyama', 0, 'dbmanga.jpg', '');
INSERT INTO `material` VALUES (21, 'Itsudatte My Santa', 'manga', '1', '12 MB', 'ingles', '', 'HQ', 'Imagen', 'Shojo / Ecchi', '', 'Ken Akamatsu', 0, 'mysanta.jpg', '');
INSERT INTO `material` VALUES (22, 'Saint Seiya - Hades Chapter ', 'manga', '19 al 28', '200 MB', 'espanol', '', 'HQ', 'Imagen', 'Shonen', '', 'Masami Kurumada', 0, 'seiyaHades.jpg', '');
INSERT INTO `material` VALUES (23, 'Saint Seiya G ', 'manga', '1', '', 'espanol', '', 'HQ', 'Imagen', 'Shonen', '', 'Masami Kurumada', 0, 'seiyaG.jpg', 'si');
INSERT INTO `material` VALUES (24, 'Card Captor Sakura ', 'manga', '12', '200 MB', 'ingles', '', 'HQ', 'Imagen', 'Shojo', '', 'CLAMP', 0, 'ccs.jpg', '');
INSERT INTO `material` VALUES (25, 'Love Hina ', 'manga', '14', '238 MB', 'ingles', '', 'HQ', 'Imagen', 'Shojo', '', 'Ken Akamatsu', 0, 'lovehina.jpg', '');
INSERT INTO `material` VALUES (26, 'The Legend of Zelda - A Link to the Past ', 'manga', '12', '', 'ingles', '', 'HQ', 'Imagen', 'Shonen', '', 'Akira Himekawa', 0, 'zelda_link2past.jpg', '');
INSERT INTO `material` VALUES (27, 'The Legend of Zelda - Ocarina of Time', 'manga', '18', '', 'ingles', '', 'HQ', 'Imagen', 'Shonen', '', 'Akira Himekawa', 0, 'zelda_ocarina.jpg', '');
INSERT INTO `material` VALUES (28, 'The Legend of Zelda - Majora''s Mask ', 'manga', '10', '', 'ingles', '', 'HQ', 'Imagen', 'Shonen', '', 'Akira Himekawa', 0, 'zelda_majora.jpg', '');
INSERT INTO `material` VALUES (29, 'The Legend of Zelda - Oracle of Sasons', 'manga', '8', '', 'ingles', '', 'HQ', 'Imagen', 'Shonen', '', 'Akira Himekawa', 0, 'zelda_seasons.jpg', 'si');
INSERT INTO `material` VALUES (30, 'Zato Ichi', 'noanime', '1', '1 DVD', 'japones', 'espanol/ingles', 'HQ', 'DVD', 'Pelicula Japonesa', '', '', 9, 'zatoichi.jpg', '');
INSERT INTO `material` VALUES (31, '7 Samurai', 'noanime', '1', '1 DVD', 'japones', 'espanol', 'HQ', 'DVD', 'Pelicula Japonesa', '', 'Akira Kurosawa', 10, '7samurai.jpg', '');
INSERT INTO `material` VALUES (32, 'Star Wars', 'noanime', '6', '6 DVD', 'ingles/espanol', 'ingles', 'HQ', 'DVD', 'Pelicula Gringa', '', 'Geroge Lucas', 10, 'starwars.jpg', '');
INSERT INTO `material` VALUES (33, 'Kung Fu Hustle', 'noanime', '1', '1 DVD', 'chino', 'espanol', 'HQ', 'DVD', 'Pelicula China', '', 'Stephen Chow', 7, 'hustle.jpg', '');
INSERT INTO `material` VALUES (34, 'The Twilight Samurai', 'noanime', '1', '1 CD', 'japones', 'espanol', 'HQ', 'MPEG', 'Pelicula Japonesa', '', '', 7, 'twilight.jpg', '');
INSERT INTO `material` VALUES (35, 'Mibu Gishiden', 'noanime', '1', '1 CD', 'japones', 'espanol', 'HQ', 'MPEG', 'Pelicula Japonesa', '', '', 0, 'mibu.jpg', '');
INSERT INTO `material` VALUES (36, 'Shaolin Soccer', 'noanime', '1', '1 DVD', 'chino', 'espanol', 'HQ', 'DVD', 'Pelicula China', '', 'Stephen Chow', 9, 'shaolin.jpg', '');
INSERT INTO `material` VALUES (37, 'South Park - Bigger, Longer and Uncut', 'noanime', '1', '1 CD', 'ingles', 'espanol', 'HQ', 'MPEG-4', 'Pelicula Gringa', '', '', 10, 'southparkmv.jpg', '');
INSERT INTO `material` VALUES (38, 'South Park', 'noanime', '33', '1 DVD', 'ingles', '', 'HQ', 'MPEG-4', 'Serie Gringa', '', '', 10, 'southpark_episodes.jpg', 'si');
INSERT INTO `material` VALUES (39, 'The Legend of Zelda [1989] ', 'noanime', '13', '3 CD', 'ingles', '', 'LQ', 'MPEG', 'Shonen', '', '', 6, 'zeldatv.jpg', 'si');
INSERT INTO `material` VALUES (40, 'Naruto - ¡El Gran Enfrentamiento! Las ruinas fantasmas de las profundidades de la Tierra', 'pelicula', '1', '1.32 GB', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shonen', 'Xtasy', '', 0, 'narutomovie2.jpg', '');
INSERT INTO `material` VALUES (41, 'xxxHOLiC - El sueño de una noche de verano', 'pelicula', '1', '1 CD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Magia', 'Tenshi no Tsubasa - Friki no Fansub', 'CLAMP', 0, 'xxxholicmovie.jpg', '');
INSERT INTO `material` VALUES (42, 'Tsubasa Chronicles - La Princesa del País de las Jaulas de Pájaro', 'pelicula', '1', '', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shojo', 'Tenshi no Tsubasa - Friki no Fansub', 'CLAMP', 0, 'tsubasacmovie.jpg', '');
INSERT INTO `material` VALUES (43, 'Rockman EXE The Movie', 'pelicula', '1', '352 MB', 'japones', 'ingles', 'HQ', 'MPEG-4', 'Shonen', 'WolfPackProductions', '', 0, 'rockmanexemovie.jpg', '');
INSERT INTO `material` VALUES (44, 'Fullmetal Alchemist ~ The Conqueror of Shambala', 'pelicula', '1', '1.5 GB', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shonen', '', 'Seiji Mizushima', 8, 'fma_movie.jpg', '');
INSERT INTO `material` VALUES (45, 'Mi Vecino Totoro', 'pelicula', '1', '1 CD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Todo Publico', 'AAF', 'Hayao Miyazaki', 10, 'totoro.jpg', '');
INSERT INTO `material` VALUES (46, 'Munto', 'pelicula', '1', '1 CD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shonen', 'mNF', '', 0, 'munto.jpg', '');
INSERT INTO `material` VALUES (47, 'Más allá de las Nubes, El lugar prometido<br>(Kumo no Mukou Yakusoku no Basho)', 'pelicula', '1', '1,35 GB', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shojo', 'Anime Underground', '', 7, 'kumonomukou.jpg', '');
INSERT INTO `material` VALUES (48, 'Naruto: la gran misión! El rescate de la princesa de la nieve!', 'pelicula', '1', '1 CD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shonen', 'Xtasy', '', 7, 'narutomv.jpg', '');
INSERT INTO `material` VALUES (49, 'The Renewal of Evangelion: Death', 'pelicula', '1', '1 CD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Todo Publico', 'Athena no Seinto', 'Gainax', 8, 'death.jpg', '');
INSERT INTO `material` VALUES (50, 'The Renewal of Evangelion: The End of Evangelion', 'pelicula', '1', '1 CD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Todo Publico', 'Athena no Seinto', 'Gainax', 8, 'endofeva.jpg', '');
INSERT INTO `material` VALUES (51, 'Akira', 'pelicula', '1', '2 CD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shonen', 'Po5i', 'Katsuhiro Otomo', 9, 'akira.jpg', '');
INSERT INTO `material` VALUES (52, 'Ghost in the Shell - Innocence ', 'pelicula', '1', '1 CD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shonen', 'JK', 'Masamune Shirow', 0, 'gits_innocence.jpg', '');
INSERT INTO `material` VALUES (53, 'Neko no Ongaeshi - El regreso de los gatos ', 'pelicula', '1', '1 CD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Todo Publico', '', 'Hayao Miyazaki', 7, 'neko_no_ongaeshi.jpg', '');
INSERT INTO `material` VALUES (54, 'Sailor Moon R, Sailor Moon S, Sailor Moon super S', 'pelicula', '1', '3 CD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shojo', 'Po5i', 'Naoko Takeuchi', 7, 'sailor_r.jpg', '');
INSERT INTO `material` VALUES (55, 'X 1999', 'pelicula', '1', '1 CD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shonen', 'Po5i', 'CLAMP', 8, 'x1999.jpg', '');
INSERT INTO `material` VALUES (56, 'Mazinkaiser VS General Negro', 'pelicula', '1', '1 CD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Mecha', 'Po5i', 'Go Nagai', 7, 'mzkvsgn.jpg', '');
INSERT INTO `material` VALUES (57, 'The Animatrix', 'pelicula', '1', '2 CD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Todo Publico', 'Po5i', '', 8, 'animatrixdvd.jpg', '');
INSERT INTO `material` VALUES (58, 'Digimon Tamers - Movie 6: Locomon ', 'pelicula', '1', '300 MB', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shonen', 'Athena no Seinto', '', 5, 'digimon_mv6.jpg', '');
INSERT INTO `material` VALUES (59, 'Digimon 02 - Movie 4: Diaboromon Strikes Back', 'pelicula', '1', '179 MB', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shonen', 'UTA', '', 5, 'digimon4.jpg', '');
INSERT INTO `material` VALUES (60, 'Spirited Away', 'pelicula', '1', '2 CD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Todo Publico', 'Po5i', 'Hayao Miyazaki', 10, 'spiritedaway.jpg', '');
INSERT INTO `material` VALUES (61, 'Oh! My Goddes - The Movie', 'pelicula', '1', '1 CD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shojo', 'Papacha', '', 8, 'ahmegami_movie.jpg', '');
INSERT INTO `material` VALUES (62, 'Spriggan', 'pelicula', '1', '1 CD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shonen', 'Zhentarim', '', 9, 'spriggan.jpg', '');
INSERT INTO `material` VALUES (63, 'Card Captor Sakura - The Movie', 'pelicula', '1', '1 CD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shojo', 'Anime Zone', 'CLAMP', 9, 'ccsmovie1.jpg', '');
INSERT INTO `material` VALUES (64, 'Card Captor Sakura - The sealed card', 'pelicula', '1', '1 CD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shojo', 'Papacha', 'CLAMP', 10, 'ccsmv2.jpg', '');
INSERT INTO `material` VALUES (65, 'Fatal Fury - The Motion Picture', 'pelicula', '1', '1 CD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shonen', 'Po5i', '', 5, 'fatalfurymv.jpg', '');
INSERT INTO `material` VALUES (66, 'Mononoke Hime', 'pelicula', '1', '1 GB', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Todo Publico', 'Po5i', 'Hayao Miyazaki', 7, 'mononoke_hime.jpg', '');
INSERT INTO `material` VALUES (67, 'Slayers Premium', 'pelicula', '1', '300 GB', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Magia', 'Tatakae no Fansub', '', 0, 'slayerspremium.jpg', '');
INSERT INTO `material` VALUES (68, 'Vampire Hunter D [1985]', 'pelicula', '1', '1 CD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shonen', '', 'Hideyuki Kikuchi', 0, 'vampirehd.jpg', '');
INSERT INTO `material` VALUES (69, 'Vampire Hunter D - Bloodlust', 'pelicula', '1', '1 CD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shonen', 'Po5i', 'Hideyuki Kikuchi', 7, 'vhdbloodlust.jpg', '');
INSERT INTO `material` VALUES (70, 'Street Fighter II - The animated movie', 'pelicula', '1', '1 CD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shonen', 'Po5i', '', 7, 'sf2.jpg', '');
INSERT INTO `material` VALUES (71, 'Street Fighter ALPHA', 'pelicula', '1', '1 CD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shonen', 'Po5i', '', 8, 'sfalpha.jpg', '');
INSERT INTO `material` VALUES (72, 'BLOOD The last Vampire', 'pelicula', '1', '1 CD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shonen', '', 'Hiroyuki Kitakubo', 8, 'blood.jpg', '');
INSERT INTO `material` VALUES (73, 'Saint Seiya:[Tenkai hen ~Overture~]<br>Introduccion a la saga del Cielo', 'pelicula', '1', '2 CD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shonen', 'Anime Rakuen', '', 9, 'tenkai.jpg', '');
INSERT INTO `material` VALUES (74, 'Saint Seiya:[Gekijôban]<br>La Manzana de Oro (Eris)', 'pelicula', '1', '3 CD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shonen', 'Athena no Seinto', '', 6, 'sseris.jpg', '');
INSERT INTO `material` VALUES (75, 'Saint Seiya:[Kamigami no Atsuki Tatakai]<br>La Batalla de los Dioses', 'pelicula', '1', '4 CD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shonen', 'Athena no Seinto', '', 6, 'ssdioses.jpg', '');
INSERT INTO `material` VALUES (76, 'Saint Seiya:[Shinkô no Shonen Densetsu]<br>La Leyenda de los Santos Escarlata (Abel) ', 'pelicula', '1', '5 CD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shonen', '#SaintSeiya', '', 6, 'ssabel.jpg', '');
INSERT INTO `material` VALUES (77, 'Saint Seiya:[Saishûseisen no Senshitachi]<br>El Guerrero del Armagedon (Lucifer) ', 'pelicula', '1', '6 CD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shonen', '#SaintSeiya', '', 6, 'sslucifer.jpg', '');
INSERT INTO `material` VALUES (78, 'Saint Seiya Antology', 'pelicula', '1', '300 MB', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shonen', 'Mundo Anime', '', 9, 'precuela.jpg', '');
INSERT INTO `material` VALUES (79, 'Cowboy Bebop Knocking on Heaven''s Door', 'pelicula', '1', '1 CD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shonen', 'Mangalords', 'Shinchiro Watanabe', 9, 'bebopmovie.jpg', '');
INSERT INTO `material` VALUES (80, 'Rurouni Kenshin Memorial', 'pelicula', '1', '2 CD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shonen', 'Sugoi', 'Nobuhiro Watsuki', 10, 'memorial.jpg', '');
INSERT INTO `material` VALUES (81, 'Rurouni Kenshin Ishinshishi no requiem', 'pelicula', '1', '1 CD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shonen', '', 'Hatsuki Tsuji', 7, 'rkrequiem.jpg', '');
INSERT INTO `material` VALUES (82, 'Samurai Shodown 2', 'ova', '2', '1 CD', 'japones', 'espanol', 'MQ', 'MPEG-4', 'Shonen', 'Nanikano', '', 0, 'samuraishodown.jpg', '');
INSERT INTO `material` VALUES (83, 'Full Metal Alchemist', 'ova', '4', '190 MB', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shonen', 'XnF', 'Seiji Mizushima', 8, 'fmaova.jpg', '');
INSERT INTO `material` VALUES (84, 'Boku wa Imouto ni Koi wo Suru', 'ova', '1', '400 MB', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Soft Hentai', 'Hikari', '', 0, 'bokuwa_ova.jpg', '');
INSERT INTO `material` VALUES (85, 'Street Fighter Alpha "Generations"', 'ova', '1', '139 MB', 'japones', 'espanol', 'MQ', 'MPEG-4', 'Shonen', 'zerox7', '', 0, 'sfgenerations.jpg', '');
INSERT INTO `material` VALUES (86, 'Saint Seiya Meiou Hades ~ Meikai-hen Zenshô ~ Chapter Inferno', 'ova', '6', '1 GB', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shonen', '', 'Masami Kurumada', 10, 'meikai.jpg', '');
INSERT INTO `material` VALUES (87, 'Saint Seiya Meiou Hades ~ Juuni Kyuu Hen ~ Chapter Sanctuary ', 'ova', '13', '1 DVD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shonen', '', 'Masami Kurumada', 10, 'hades.jpg', '');
INSERT INTO `material` VALUES (88, 'Jojo no Kimiyona Bouken', 'ova', '7', '1 DVD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shonen', 'Frozen Layer & AU', '', 0, 'jojo2.jpg', '');
INSERT INTO `material` VALUES (89, 'Kujibiki Unbalance', 'ova', '3', '1 CD', 'japones', 'espanol', 'HQ', 'MPEG-4', '', 'AU', '', 0, 'kujibiki.jpg', '');
INSERT INTO `material` VALUES (90, 'Shamanic Princess', 'ova', '6', '2 CD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Magia', 'Avalon', '', 6, 'shamanic.jpg', '');
INSERT INTO `material` VALUES (91, 'Darling Page', 'ova', '3', '1 CD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shojo', 'AnimeSkyScraper', '', 6, 'darlingpage.jpg', '');
INSERT INTO `material` VALUES (92, 'Cosplay Complex', 'ova', '3', '1 CD', 'japones', 'espanol', 'HQ', 'MPEG-4', '', 'Jiseday no Fansub', '', 7, 'cosplaycomplex.jpg', '');
INSERT INTO `material` VALUES (93, 'Inuyasha: Una triste historia de amor ~El inicio~', 'ova', '1', '1 CD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shojo', '', 'Rumiko Takahashi', 6, 'inuyasha_ova.jpg', '');
INSERT INTO `material` VALUES (94, 'Dragon Ball Z Gaiden El plan para destruir a los Saiyajins', 'ova', '2', '1 CD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shonen', 'Anime-Element & Anime-Keys', 'Akira Toriyama', 8, 'dbzgaiden.jpg', '');
INSERT INTO `material` VALUES (95, 'Ruin Explorers', 'ova', '4', '2 CD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Magia', 'Frozen-Layer', '', 7, 'ruinexplorers.jpg', '');
INSERT INTO `material` VALUES (96, 'Phantom The Animation ', 'ova', '3', '1 CD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shonen', 'Mundo Anime', '', 8, 'phantom.jpg', '');
INSERT INTO `material` VALUES (97, 'Miyuki-chan in Wonderland & Miyuki-chan in Mirrorland', 'ova', '2', '300 MB', 'japones', 'ingles', 'LQ', 'MPEG', 'Shojo', '', 'CLAMP', 6, 'miyuki_chan.jpg', '');
INSERT INTO `material` VALUES (98, 'Triangle Heart ~Sweet Songs Forever~', 'ova', '4', '1 CD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shojo', 'Tai Rei', '', 8, 'triangle.jpg', '');
INSERT INTO `material` VALUES (99, 'Suika', 'ova', '3', '1 CD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Hentai', 'YnF', '', 0, 'suika.jpg', '');
INSERT INTO `material` VALUES (100, 'Golden Boy', 'ova', '6', '3 CD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Ecchi', '', '', 7, 'goldenboy.jpg', '');
INSERT INTO `material` VALUES (101, 'Magic Knight Rayearth', 'ova', '2', '2 CD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shojo', 'Forever Clamp', 'CLAMP', 8, 'rayearthova1.jpg', '');
INSERT INTO `material` VALUES (102, 'Labyrinth of Flames', 'ova', '2', '1 CD', 'japones', 'ingles', 'HQ', 'MPEG-4', 'Ecchi', '', '', 7, 'labyrinth.jpg', '');
INSERT INTO `material` VALUES (103, 'Mahou Tsukai Tai ', 'ova', '6', '2 CD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Magia', 'Sugoi', '', 7, 'mahoutsukaitai.jpg', '');
INSERT INTO `material` VALUES (104, 'Slayers Excellent ', 'ova', '3', '1 CD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Magia', '', '', 0, 'slayers_excellent.jpg', '');
INSERT INTO `material` VALUES (105, 'Interstella 5555', 'ova', '1', '1 CD', 'japones', 'espanol/ingles', 'HQ', 'MPEG-4', 'Musica', 'TodoAnime', 'Daft Punk / Leiji Matsumoto', 10, 'interstella.jpg', '');
INSERT INTO `material` VALUES (106, 'Amazing Nurse Nanako', 'ova', '6', '2 CD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Ecchi', 'Mangalords', '', 7, 'amazing_nurse_nanako.jpg', '');
INSERT INTO `material` VALUES (107, 'Video Girl Ai ', 'ova', '6', '2 CD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shojo', 'Po5i', 'Masakazu Katsura', 7, 'vgai.jpg', '');
INSERT INTO `material` VALUES (108, '.hack//GIFT', 'ova', '1', '200 MB', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Todo Publico', 'Youkai', '', 0, 'hack_gift.jpg', '');
INSERT INTO `material` VALUES (109, 'Babel II', 'ova', '4', '1 CD', 'espanol', '', 'HQ', 'MPEG-4', 'Shonen', '', '', 0, 'babel2do.jpg', '');
INSERT INTO `material` VALUES (110, 'Futari H', 'ova', '4', '2 CD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Hentai', 'Youkai', '', 7, 'futari_h.jpg', '');
INSERT INTO `material` VALUES (111, 'i   wish you where here (Zaion)', 'ova', '6', '2 CD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Mecha', 'EOL', '', 6, 'iwhishuwherehere.jpg', '');
INSERT INTO `material` VALUES (112, 'Happy World ', 'ova', '3', '1 CD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shojo', 'Kamikaze no Gakkou', '', 7, 'happyworld.jpg', '');
INSERT INTO `material` VALUES (113, 'Mezzo Forte', 'ova', '2', '1 CD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Hentai', 'Avalon', '', 0, 'mezzo_forte.jpg', '');
INSERT INTO `material` VALUES (114, 'Green Green', 'ova', '1', '176 MB', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Ecchi', 'TaiRei', '', 6, 'green_green.jpg', '');
INSERT INTO `material` VALUES (115, 'Maze', 'ova', '2', '1 CD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Ecchi', 'Tatakae no Fansub', '', 6, 'maze_ova.jpg', '');
INSERT INTO `material` VALUES (116, 'AMON: The Apocalypse of Devilman', 'ova', '1', '1 CD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shonen', 'El lado oscuro', 'Go Nagai', 5, 'amon.jpg', '');
INSERT INTO `material` VALUES (117, 'Puni Puni Poemi', 'ova', '2', '1 CD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Comedia', 'Gokuraku', 'Shinchiro Watanabe', 10, 'punipunipoemi.jpg', '');
INSERT INTO `material` VALUES (118, 'Leave it to chocola', 'ova', '1', '65 MB', 'japones', 'ingles', 'LQ', 'MPEG-4', 'Comedia', 'Gokuraku', '', 1, 'chocola.jpg', '');
INSERT INTO `material` VALUES (119, 'Otaku no Video', 'ova', '2', '1 CD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Todo Publico', 'Otaku no Power', 'Gainax', 6, 'otakunovideo.jpg', '');
INSERT INTO `material` VALUES (120, 'Love Hina Again ', 'ova', '3', '1 CD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Ecchi', 'Ishin-Anime Digital', 'Ken Akamatsu', 8, 'lhagain.jpg', '');
INSERT INTO `material` VALUES (121, 'Gunnm - Battle Angel Alita', 'ova', '2', '1 CD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shonen', '', '', 7, 'alita.jpg', '');
INSERT INTO `material` VALUES (122, '.hack//LIMINALITY', 'ova', '4', '2 CD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shonen', 'Youkai', '', 7, 'hackliminality.jpg', '');
INSERT INTO `material` VALUES (123, 'Ninja Resurrection (Jubei''s Revenge & Hell Spawn)', 'ova', '2', '300 MB', 'ingles', '', 'HQ', 'MPEG-4', 'Shonen', 'SMR', 'Futaro Yamada', 6, 'ninjares.jpg', '');
INSERT INTO `material` VALUES (124, 'Read Or Die (R.O.D.) ', 'ova', '3', '2 CD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Todo Publico', 'Mangalords', 'Hideyuki Kurata', 10, 'rod.jpg', '');
INSERT INTO `material` VALUES (125, 'Kite', 'ova', '1', '200 MB', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shonen', 'Avalon', '', 7, 'kite.jpg', '');
INSERT INTO `material` VALUES (126, 'Oh! My Goddes', 'ova', '5', '1 CD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shojo', 'AU', '', 8, 'ahmegamisasaovas.jpg', '');
INSERT INTO `material` VALUES (127, 'Shin Captain Tsubasa ', 'ova', '13', '1 DVD', 'japones', 'espanol', 'MQ', 'MPEG-4', 'Shonen', '', 'Yoichi Takahashi', 8, 'shintsubasa.jpg', '');
INSERT INTO `material` VALUES (128, 'Zone of Enders (ZOE) - I DOLO', 'ova', '1', '323 MB', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Mecha', 'Sekai', 'Hideo Kojima', 9, 'zoe_idolo.jpg', '');
INSERT INTO `material` VALUES (129, 'Card Captor Sakura: Action Video Diary & Kero-chan Special ', 'ova', '4', '143 MB', 'japones', 'ingles', 'LQ', 'MPEG-4', 'Shojo', 'Zaruel / Papacha', 'CLAMP', 8, 'ccsdiary1.jpg', '');
INSERT INTO `material` VALUES (130, 'Macross Zero ', 'ova', '5', '3 CD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Mecha', '', 'Shoji Kawamori', 8, 'macrosszero1.jpg', '');
INSERT INTO `material` VALUES (131, 'Slayers ', 'ova', '3', '358 MB', 'japones', 'ingles', 'LQ', 'MPEG-4', 'Magia', '', '', 0, 'slayers3ovas.jpg', '');
INSERT INTO `material` VALUES (132, 'Hoshi no Koe - The voice of a distant star ', 'ova', '1', '400 MB', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shojo', 'AniXtasis', '', 7, 'hoshinokoe.jpg', '');
INSERT INTO `material` VALUES (133, 'Furi Kuri', 'ova', '6', '1 CD', 'japones', 'espanol', 'LQ', 'MPEG-4', 'Comedia', 'Papacha', 'Gainax', 10, 'flclm.jpg', '');
INSERT INTO `material` VALUES (134, 'Angel Sanctuary ', 'ova', '3', '1 CD', 'japones', 'ingles', 'MQ', 'MPEG-4', 'Shojo', '', '', 7, 'angelsanct.jpg', '');
INSERT INTO `material` VALUES (135, 'Mazinkaiser ', 'ova', '7', '2 CD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Mecha', 'Garada', 'Go Nagai', 8, 'kaiser.jpg', '');
INSERT INTO `material` VALUES (136, 'Rurouni Kenshin - Tsuioku Hen (Trust & Betrayal) ', 'ova', '4', '2 CD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shonen', 'Po5i', 'Kazuhiro Furuhashi', 10, 'rk4ovas.jpg', '');
INSERT INTO `material` VALUES (137, 'Rurouni Kenshin - Seisou Hen (Reflection) ', 'ova', '2', '1 CD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shonen', 'Mangalords', 'Kazuhiro Furuhashi', 10, 'seisouhen.jpg', '');
INSERT INTO `material` VALUES (138, 'Rurouni Kenshin Episodio 95', 'ova', '1', '84 MB', 'japones', 'ingles', 'LQ', 'MPEG-4', 'Shojo', 'Soyokaze', 'Kazuhiro Furuhashi', 8, 'kenshin95.jpg', '');
INSERT INTO `material` VALUES (139, 'Akira Kurosawa''s Samurai 7', 'serie', '26', '1 DVD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shonen', 'MCF - El mejor anime', 'Toshifumi Takizawa', 0, 'samurai7.jpg', '');
INSERT INTO `material` VALUES (140, 'School Rumble', 'serie', '26 + 2 ova', '1 DVD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shojo', '', 'Jin Kobayashi', 10, 'schoolrumble.jpg', '');
INSERT INTO `material` VALUES (141, 'Rozen Maiden & Rozen Maiden Traumend', 'serie', '25', '1 DVD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shojo', 'Anime Rakuen & Spanishare & Dark', 'PEACH-PIT', 8, 'rozenmaiden.jpg', '');
INSERT INTO `material` VALUES (142, 'Hikaru no Go', 'serie', '75 + 3 especiales', '4 DVD', 'japones', 'ingles', 'HQ', 'MPEG-4', 'Todo Publico', 'Real Fansubbers', 'Yumi Hotta', 8, 'hikarunogo.jpg', '');
INSERT INTO `material` VALUES (143, 'Fullmetal Panic! The Second Raid', 'serie', '13', '1/2 DVD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shonen', 'SD', 'Shouji Gatou', 9, 'fmp2rage.jpg', '');
INSERT INTO `material` VALUES (144, 'Tsubasa Chronicles', 'serie', '26', '1 DVD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shojo', '', 'CLAMP', 9, 'tsubasachronicles.jpg', 'si');
INSERT INTO `material` VALUES (145, 'Buzzer Beater', 'serie', '13', '1/2 DVD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shonen', 'Anime Underground', '', 7, 'buzzer.jpg', '');
INSERT INTO `material` VALUES (146, 'Genshiken (The Society for the Study of Modern Visual Culture)', 'serie', '12', '1/2 DVD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Todo Publico', 'Anime Underground', 'Kio Shimoku', 7, 'genshiken.jpg', '');
INSERT INTO `material` VALUES (147, 'Zone of Enders (ZOE) - Dolores, i', 'serie', '26', '1 DVD', 'japones', 'espanol', 'HQ', 'MPEG-5', 'Mecha', '', 'Hideo Kojima', 0, 'zoe_dolores.jpg', '');
INSERT INTO `material` VALUES (148, 'Beck', 'serie', '26', '1 DVD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Todo Publico', 'Anime Underground', 'Harold Sakuishi', 10, 'beck.jpg', '');
INSERT INTO `material` VALUES (149, 'Air TV', 'serie', '13', '1/2 DVD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shojo', 'Athena no Seinto', '', 7, 'airtv.jpg', '');
INSERT INTO `material` VALUES (150, 'Now and Then, Here and There', 'serie', '13', '1/2 DVD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Todo Publico', 'F&G', '', 7, 'nowandthen.jpg', '');
INSERT INTO `material` VALUES (151, 'Oruchuban Ebichu', 'serie', '24', '1 DVD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Hentai', 'EOL - Tatakae', 'Gainax', 9, 'ebichu.jpg', '');
INSERT INTO `material` VALUES (152, 'Ah! Megamisama ', 'serie', '24', '1 DVD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shojo', 'Kujaku Corp.- Frozen-Layer', '', 0, 'megamisama.jpg', '');
INSERT INTO `material` VALUES (153, 'R.O.D. TV ', 'serie', '26', '1 DVD', 'japones', 'ingles', 'HQ', 'MPEG-4', 'Shonen', 'Anime Station', 'Hideyuki Kurata', 10, 'rod_tv.jpg', '');
INSERT INTO `material` VALUES (154, 'Jinki:Extend', 'serie', '13', '1/2 DVD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shonen', 'Rakuen - MA', '', 8, 'jinkiextend.jpg', '');
INSERT INTO `material` VALUES (155, 'Samurai Champloo', 'serie', '26', '1 DVD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shonen', 'Meiji - FL', 'Shinchiro Watanabe', 10, 'champloo.jpg', '');
INSERT INTO `material` VALUES (156, 'Samurai Deeper Kyo', 'serie', '26', '1 DVD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shonen', 'Mangalords', '', 7, 'samuraideeper.jpg', '');
INSERT INTO `material` VALUES (157, 'Narue no Sekai', 'serie', '12', '1/2 DVD', 'japones', 'espanol', 'HQ', 'OGM', 'Shojo', 'Kamonohashi no Fansub', '', 0, 'narue.jpg', '');
INSERT INTO `material` VALUES (158, 'If I see you in my dreams (Yume de aeterea)', 'serie', '16', '1/2 DVD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Suspenso', 'Otaku no Power', '', 0, 'yumedeaeterea.jpg', '');
INSERT INTO `material` VALUES (159, 'Smash Hit!', 'serie', '8', '1/2 DVD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Todo Publico', 'Anime Underground & Spanishare', '', 7, 'smashhit.jpg', '');
INSERT INTO `material` VALUES (160, 'Angelic Layer', 'serie', '26', '1 DVD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shojo', 'Mundo Anime', 'CLAMP', 8, 'angeliclayer.jpg', '');
INSERT INTO `material` VALUES (161, 'Gantz', 'serie', '26', '1 DVD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shonen', 'Gokuraku', 'Hiroya Oku', 10, 'gantz.jpg', '');
INSERT INTO `material` VALUES (162, 'Gungrave', 'serie', '26', '1 DVD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shonen', 'Frozen Layer', '', 9, 'gungrave.jpg', '');
INSERT INTO `material` VALUES (163, '2x2=Shinobuden', 'serie', '12', '1/2 DVD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Ecchi', 'Anime Underground', '', 7, 'shinobuden.jpg', '');
INSERT INTO `material` VALUES (164, 'King of bandits Jing', 'serie', '13 + 3 ova', '1 DVD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shonen', 'Mangalords / Rakuen', '', 9, 'jing.jpg', '');
INSERT INTO `material` VALUES (165, 'Peace Maker Kurogane ', 'serie', '24', '1 DVD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shonen', 'Athena no Seinto', '', 8, 'peacemaker.jpg', '');
INSERT INTO `material` VALUES (166, 'Getbackers', 'serie', '49', '2 DVD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shonen', 'Gokuraku', '', 0, 'getbackers.jpg', '');
INSERT INTO `material` VALUES (167, 'Tenjho Tenge', 'serie', '26', '1 DVD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shonen', '', 'Oh! great', 10, 'tenjoutenge.jpg', '');
INSERT INTO `material` VALUES (168, 'Samurai girl: Real bout high school', 'serie', '13', '1/2 DVD', 'japones', 'ingles', 'HQ', 'MPEG-4', 'Shonen?', '', '', 6, 'samuraigirl.jpg', '');
INSERT INTO `material` VALUES (169, 'Sexy commando gaiden: Sugoiyo! Masaru-san', 'serie', '30', '1/2 DVD', 'japones', 'ingles', 'HQ', 'MPEG-4', 'Comedia', '', '', 6, 'sexycomando.jpg', 'si');
INSERT INTO `material` VALUES (170, 'The Renewal of Evangelion', 'serie', '26', '1 DVD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shonen', 'Athena no Seinto', 'Gainax', 10, 'renewalofeva.jpg', '');
INSERT INTO `material` VALUES (171, 'Fullmetal Alchemist ', 'serie', '51', '2 DVD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shonen', 'AniXtasis', 'Hiromu Arakawa', 10, 'fullmetalalchemist.jpg', '');
INSERT INTO `material` VALUES (172, 'Ghost in the Shell - Standalone Complex', 'serie', '26', '1 DVD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shonen', 'E.O.L.+ AniXtasis', 'Masamune Shirow', 0, 'gits_standalone.jpg', '');
INSERT INTO `material` VALUES (173, 'Elfen Lied ', 'serie', '14', '1/2 DVD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shojo?', 'Rakuen', '', 10, 'elfenlied.jpg', '');
INSERT INTO `material` VALUES (174, 'Happy Lesson & Happy Lesson Advance ', 'serie', '24', '1 DVD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shojo', 'A & C + Meiji no Fansub', '', 8, 'happylesson_adv.jpg', '');
INSERT INTO `material` VALUES (175, 'Colorful', 'serie', '16', '1/2 DVD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Comedia', 'Kamonohashi no Fansub', '', 7, 'colorful.jpg', '');
INSERT INTO `material` VALUES (176, 'Jungle wa Itsumo Hale Nochi Guu', 'serie', '26 + 13 ova', '2 DVD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Comedia', 'Frozen Layer', 'Renjuro Kindaichi', 10, 'jungle.jpg', '');
INSERT INTO `material` VALUES (177, 'Last Exile ', 'serie', '26', '1 DVD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Todo Publico', 'AniXtasis', '', 0, 'lastexile.jpg', '');
INSERT INTO `material` VALUES (178, 'This Ugly and Beautiful World (Kono Minikuku mo Utsukushii Sekai)', 'serie', '12', '1/2 DVD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shojo', 'AniXtasis', 'Gainax', 7, 'Ugly_Beautiful.jpg', '');
INSERT INTO `material` VALUES (179, 'Hanaukyo Maids Tai ~ LaVerite ', 'serie', '12', '1/2 DVD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shojo', 'Frozen Layer - Meiji no Fansub', '', 7, 'HMT_verite.jpg', '');
INSERT INTO `material` VALUES (180, 'Yami to Boushi to Hon no Tabibito', 'serie', '13', '1/2 DVD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shojo', 'AniXtasis', '', 5, 'yamitabi.jpg', '');
INSERT INTO `material` VALUES (181, 'Comic Party ,Comic Party Revolution, Comic Party Specials ', 'serie', '13 + 2 ova + 4 especiales', '1 DVD', 'japones', 'ingles', 'MQ', 'MPEG-4', 'Todo Publico', 'Elite', '', 5, 'comicparty.jpg', '');
INSERT INTO `material` VALUES (182, 'Star Ocean EX ', 'serie', '26', '1 DVD', 'japones', 'ingles', 'MQ', 'MPEG-4', 'Shonen', 'Soldats - BakaMX', '', 0, 'starocean_ex.jpg', '');
INSERT INTO `material` VALUES (183, 'Kiddi Grade', 'serie', '24', '1 DVD', 'japones', 'ingles', 'HQ', 'MPEG-4', 'Mecha', 'ANBY & Animekeep', '', 0, 'kiddy.jpg', '');
INSERT INTO `material` VALUES (184, 'Yumeria', 'serie', '12', '1/2 DVD', 'japones', 'ingles', 'HQ', 'MPEG-4', 'Shojo', 'Anime Junkies', '', 4, 'yumeria.jpg', '');
INSERT INTO `material` VALUES (185, 'Midori no Hibi ', 'serie', '13', '1/2 DVD', 'japones', 'ingles', 'HQ', 'MPEG-4', 'Shojo', 'Seichi', '', 6, 'midorinohibi.jpg', '');
INSERT INTO `material` VALUES (186, 'Fruits Basket ', 'serie', '26', '1 DVD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shojo', 'Mangalords', '', 7, 'fruitsbasket.jpg', '');
INSERT INTO `material` VALUES (187, 'Chrno Crusade ', 'serie', '24', '1 DVD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shojo?', 'Vago', 'Daisuke Moriyama', 9, 'chrno.jpg', '');
INSERT INTO `material` VALUES (188, 'Onegai Twins ', 'serie', '12 + 1 ova', '1/2 DVD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shojo', 'Gokuraku', '', 8, 'onegaitwins.jpg', '');
INSERT INTO `material` VALUES (189, 'Gunslinger Girl', 'serie', '13', '1/2 DVD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shojo?', 'Meiji', '', 7, 'gunslinger.jpg', '');
INSERT INTO `material` VALUES (190, 'Hand Maid May ', 'serie', '11 + 1 ova', '1 DVD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Ecchi', 'Po5i - Kaworu', '', 7, 'handmaidmay.jpg', '');
INSERT INTO `material` VALUES (191, 'Shingetsutan Tsukihime - Moon Princess', 'serie', '12 + 1 especial', '1/2 DVD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Todo Publico', 'Frozen Layer', '', 0, 'tsukihime.jpg', '');
INSERT INTO `material` VALUES (192, 'G.T.O. - Great Teacher Onizuka ', 'serie', '43', '2 DVD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Comedia', 'Anime Underground', 'Tohru Fujisawa', 10, 'gto.jpg', '');
INSERT INTO `material` VALUES (193, 'Maburaho', 'serie', '24', '1 DVD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shojo', 'Anime Underground', '', 7, 'maburaho.jpg', '');
INSERT INTO `material` VALUES (194, 'Popotan', 'serie', '12', '1/2 DVD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shojo', 'Mundo Anime', '', 8, 'popotan.jpg', '');
INSERT INTO `material` VALUES (195, 'G-on Riders ', 'serie', '13', '1/2 DVD', 'japones', 'ingles', 'HQ', 'MPEG-4', 'Shojo', 'Mugen Anime', '', 6, 'g_on.jpg', '');
INSERT INTO `material` VALUES (196, 'Kare Kano ', 'serie', '26', '1 DVD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shojo', 'Xavisubs - Kaworu', 'Gainax', 6, 'karekano.jpg', '');
INSERT INTO `material` VALUES (197, 'Chikyu Shojo Arjuna (Director''s Cut) ', 'serie', '13', '1 DVD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Todo Publico', 'Gokuraku', '', 8, 'arjuna.jpg', '');
INSERT INTO `material` VALUES (198, 'Haibane Renmei - Charcoal Feathers Federation', 'serie', '13', '1/2 DVD', 'japones', 'ingles', 'HQ', 'MPEG-4', 'Todo Publico', 'Wizzu', '', 8, 'haibane.jpg', '');
INSERT INTO `material` VALUES (199, 'Ufo Princess Valkyure ', 'serie', '12', '1/2 DVD', 'japones', 'ingles', 'HQ', 'MPEG-4', 'Shojo', 'Anime Empire', '', 0, 'ufo_p.jpg', '');
INSERT INTO `material` VALUES (200, 'Witch Hunter Robin ', 'serie', '26', '1 DVD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Todo Publico', 'Mangalords', '', 7, 'robin.jpg', '');
INSERT INTO `material` VALUES (201, 'Fullmetal Panic? Fumoffu', 'serie', '16', '1/2 DVD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Comedia', 'Gokuraku', 'Shouji Gatou', 10, 'fumoffu.jpg', '');
INSERT INTO `material` VALUES (202, 'Abenobashi Mahou Shotengai ', 'serie', '13', '1/2 DVD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Comedia', 'Rice Box', 'Gainax', 9, 'abenobashi.jpg', '');
INSERT INTO `material` VALUES (203, '.hack//DUSK - Legend of Twilight''s bracelet ', 'serie', '12', '1/2 DVD', 'japones', 'ingles', 'HQ', 'MPEG-4', 'Shonen', 'Junkies', '', 0, 'hackdusk.jpg', '');
INSERT INTO `material` VALUES (204, 'Noir ', 'serie', '26', '1 DVD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shojo?', 'Otaku no Power', '', 10, 'noir.jpg', '');
INSERT INTO `material` VALUES (205, 'Onegai Teacher', 'serie', '12 + 1 ova', '1/2 DVD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shojo', 'Supein Go', '', 8, 'onegaiteacher.jpg', '');
INSERT INTO `material` VALUES (206, 'Mahou Tsukai Ni Taisetsu Na Koto, Someday''s Dreamers', 'serie', '12', '1/2 DVD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Todo Publico', 'Royal', '', 9, 'mahou.jpg', '');
INSERT INTO `material` VALUES (207, 'Hanaukyo Maid Tai ', 'serie', '15', '1/2 DVD', 'japones', 'espanol', 'MQ', 'MPEG-4', 'Comedia', 'Mangalords', '', 8, 'hanaukyo_maid_tai.jpg', '');
INSERT INTO `material` VALUES (208, 'Saikano - Mi novia el arma definitiva ', 'serie', '13', '1/2 DVD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shojo', 'Mangalords', '', 0, 'saikano.jpg', '');
INSERT INTO `material` VALUES (209, 'Azumanga Daioh', 'serie', '130 (26) + 2 peliculas', '1 DVD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Comedia', 'Mangalords', 'Kiyohiko Azuma', 8, 'azumanga_daioh.jpg', '');
INSERT INTO `material` VALUES (210, 'Ninja Scroll Tv series ', 'serie', '13', '1/2 DVD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shonen', 'MA & AU', 'Tatsuo Sato', 0, 'ninjatv.jpg', '');
INSERT INTO `material` VALUES (211, 'Mahoromatic ~ Automatic Maiden & Mahoromatic ~ Motto Utsukushii Mono ', 'serie', '26 + 2 especiales', '1+ DVD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shojo', 'Mangalords', 'Gainax', 9, 'mahoromatic.jpg', '');
INSERT INTO `material` VALUES (212, 'Heppoko Jikken Anime: Excel Saga ', 'serie', '26', '1 DVD', 'japones', 'ingles', 'LQ', 'MPEG-4', 'Comedia', 'Slow as hell', 'Koushi Rikudou', 10, 'excelsaga.jpg', '');
INSERT INTO `material` VALUES (213, 'D.N.Angel ', 'serie', '26', '1 DVD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shojo', 'Gokuraku', '', 9, 'dnangel.jpg', '');
INSERT INTO `material` VALUES (214, 'Final Fantasy Unlimited ', 'serie', '25', '1 DVD', 'japones', 'ingles', 'MQ', 'MPEG-4', 'Shonen', 'Soldats', '', 0, 'ffu.jpg', '');
INSERT INTO `material` VALUES (215, 'DNA² ', 'serie', '13 + 3 ova', '1 DVD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shojo', 'Tatakae no Fansub', 'Masakazu Katsura', 8, 'dna2.jpg', '');
INSERT INTO `material` VALUES (216, 'Pet Shop of Horrors ', 'serie', '4', '1/2 DVD', 'japones', 'ingles', 'HQ', 'MPEG-4', 'Shonen', '', '', 0, 'petshopof.jpg', '');
INSERT INTO `material` VALUES (217, 'Agent Aika', 'serie', '7', '1/2 DVD', 'japones', 'ingles', 'MQ', 'MPEG-4', 'Ecchi', '', '', 7, 'agentaika.jpg', '');
INSERT INTO `material` VALUES (218, 'Ikiteru Furari', 'serie', '16', '1/2 DVD', 'japones', 'espanol', 'LQ', 'MPEG-4', 'Ecchi', 'Otaku no Power', '', 7, 'ikiteru.jpg', '');
INSERT INTO `material` VALUES (219, 'Chobits ', 'serie', '26 + 2 especiales', '1+ DVD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shojo', 'Mangalords', 'CLAMP', 8, 'chobits.jpg', '');
INSERT INTO `material` VALUES (220, 'Love Hina ', 'serie', '25', '1 DVD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Ecchi', 'Xavisubs', 'Ken Akamatsu', 8, 'lovehina.jpg', '');
INSERT INTO `material` VALUES (221, 'Love Hina Specials', 'serie', '3', '1/2 DVD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Ecchi', 'Xavisubs', 'Ken Akamatsu', 8, 'lhfinalselection.jpg', '');
INSERT INTO `material` VALUES (222, 'Vandread ', 'serie', '13 + 1 ova', '1/2 DVD', 'japones', 'espanol', 'MQ', 'MPEG-4', 'Ecchi', 'Sekai', '', 7, 'vandread.jpg', '');
INSERT INTO `material` VALUES (223, 'Vandread The Second Stage ', 'serie', '13', '1/2 DVD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Ecchi', 'Supein Go', '', 0, 'vandread2.jpg', '');
INSERT INTO `material` VALUES (224, 'Full Metal Panic ', 'serie', '24', '1 DVD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shonen', 'Gokuraku', 'Shouji Gatou', 9, 'fullmetalpanic.jpg', '');
INSERT INTO `material` VALUES (225, 'RahXephon', 'serie', '26', '1 DVD', 'japones', 'ingles', 'HQ', 'MPEG-4', 'Shonen', '', '', 0, 'rahxephon.jpg', '');
INSERT INTO `material` VALUES (226, 'Wolf''s Rain ', 'serie', '30', '1+ DVD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shonen', 'Gokuraku', '', 0, 'wolfsrain.jpg', '');
INSERT INTO `material` VALUES (227, 'X ', 'serie', '24 + 1 ova', '1 DVD', 'japones', 'espanol', 'HQ', 'MPEG-4', 'Shojo', 'Mangalords', 'CLAMP', 8, 'xclamptv.jpg', '');
INSERT INTO `material` VALUES (228, 'Serial Experiments Lain', 'serie', '13', '1/2 DVD', 'japones', 'ingles', 'MQ', 'MPEG-4', 'Todo Publico', '', 'Chiaki J. Konaka', 7, 'lain.jpg', '');
INSERT INTO `material` VALUES (229, 'Hellsing', 'serie', '13', '1/2 DVD', 'japones', 'ingles', 'HQ', 'MPEG-4', 'Shonen', 'Junkies - Soldats', 'Kouta Hirano', 10, 'hellsing.jpg', '');
INSERT INTO `material` VALUES (230, 'Trigun ', 'serie', '26', '1 DVD', 'japones', 'ingles', 'MQ', 'MPEG-4', 'Shonen', '', '', 0, 'trigun.jpg', '');
