DROP DATABASE IF EXISTS iBook;

CREATE DATABASE iBook;

USE iBook;


CREATE TABLE book ( id INT AUTO_INCREMENT PRIMARY KEY,
isbn VARCHAR(255) NOT NULL,
publisher_name VARCHAR(255),
author_name VARCHAR(255) NOT NULL,
year INT NOT NULL,
title VARCHAR(255) NOT NULL,
price NUMERIC(19,
3) NOT NULL,
user_id INT NOT NULL );

CREATE TABLE user ( 
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(255),
phone VARCHAR(255),
address VARCHAR(255),
email VARCHAR(255)
);

CREATE TABLE cart (
id INT AUTO_INCREMENT PRIMARY KEY,
total_price NUMERIC(19,3) NOT NULL,
date DATETIME NOT NULL
);

CREATE TABLE cart_product (
id INT AUTO_INCREMENT PRIMARY KEY,
cart_id INT NOT NULL,
book_id INT NOT NULL,
buyer_id INT NOT NULL,
seller_id INT NOT NULL,
single_price NUMERIC(19,3) NOT NULL,
quantity INT NOT NULL,
date DATETIME NOT NULL
);

CREATE TABLE discussion (
id INT AUTO_INCREMENT PRIMARY KEY,
post TEXT NOT NULL,
title TEXT NOT NULL,
user_id INT NOT NULL
);

CREATE TABLE reply (
id INT AUTO_INCREMENT PRIMARY KEY,
discussion_id INT NOT NULL,
content TEXT NOT NULL,
user_id INT NOT NULL,
date DATETIME NOT NULL
);

insert into book (isbn, publisher_name, author_name, year, title, price, user_id) values ('419386412-X', 'Brigida Gorry', 'Lucienne Rivenzon', 1988, 'The Stoker', 803.85, 1);
insert into book (isbn, publisher_name, author_name, year, title, price, user_id) values ('849217619-9', 'Ezri Delgardo', 'Delly McCroary', 2003, 'Daddy Long Legs', 577.49, 2);
insert into book (isbn, publisher_name, author_name, year, title, price, user_id) values ('783909305-1', 'Ebonee Verrell', 'Waldemar Corness', 1994, 'Dead, The', 25.33, 3);
insert into book (isbn, publisher_name, author_name, year, title, price, user_id) values ('885596451-8', 'Glynn O''Brian', 'Caesar Frangione', 1994, 'Knights of Bloodsteel', 483.52, 4);
insert into book (isbn, publisher_name, author_name, year, title, price, user_id) values ('684991544-4', 'Sharona Aleevy', 'Ty Krates', 2009, 'Isabelle au bois dormant', 982.63, 5);
insert into book (isbn, publisher_name, author_name, year, title, price, user_id) values ('332776688-6', 'Early Woloschinski', 'Tamara Reinhard', 1996, 'Conversation, The', 37.07, 6);
insert into book (isbn, publisher_name, author_name, year, title, price, user_id) values ('955706419-6', 'Reeva Probbin', 'Antonie Humbert', 2006, 'Affairs of Anatol, The', 663.3, 7);
insert into book (isbn, publisher_name, author_name, year, title, price, user_id) values ('966135979-2', 'Faustina Artharg', 'Robby Over', 2010, 'Summer in Berlin (Sommer vorm Balkon)', 371.09, 8);
insert into book (isbn, publisher_name, author_name, year, title, price, user_id) values ('110702864-7', 'Enos Bossom', 'Valentino Scohier', 2011, 'Not Fade Away', 129.92, 9);
insert into book (isbn, publisher_name, author_name, year, title, price, user_id) values ('628757280-9', 'Althea Oleszcuk', 'Laure Tabary', 2010, 'Support Your Local Sheriff!', 570.66, 10);
insert into book (isbn, publisher_name, author_name, year, title, price, user_id) values ('782031447-8', 'Helena Moreside', 'Tiebold Simnell', 1997, 'Flowers of St. Francis (Francesco, giullare di Dio)', 563.2, 11);
insert into book (isbn, publisher_name, author_name, year, title, price, user_id) values ('077549373-2', 'Malchy Bossom', 'Mattias Zelland', 2008, 'The Dust Bowl', 513.14, 12);
insert into book (isbn, publisher_name, author_name, year, title, price, user_id) values ('779602683-8', 'Rena Bauduin', 'Powell O''Dunneen', 2008, 'Sheep Eaters (Lampaansyöjät)', 531.17, 13);
insert into book (isbn, publisher_name, author_name, year, title, price, user_id) values ('875983397-1', 'Malory Deshorts', 'Harold Claypoole', 2001, 'Goya''s Ghosts', 172.21, 14);
insert into book (isbn, publisher_name, author_name, year, title, price, user_id) values ('621665569-8', 'Julienne Kovacs', 'Terrence Wenderott', 2008, 'Submarine', 468.9, 15);
insert into book (isbn, publisher_name, author_name, year, title, price, user_id) values ('685793673-0', 'Merilee Marlen', 'Annalee Clutram', 2008, 'Burnt Offerings', 30.57, 16);
insert into book (isbn, publisher_name, author_name, year, title, price, user_id) values ('293482461-6', 'Cecelia Burleton', 'Thaddus Winterson', 1994, 'Lakeboat', 528.13, 17);
insert into book (isbn, publisher_name, author_name, year, title, price, user_id) values ('072331606-6', 'Carey Alliott', 'Wayne Ricciardelli', 2009, 'Island', 283.95, 18);
insert into book (isbn, publisher_name, author_name, year, title, price, user_id) values ('441616102-6', 'Marylou Coke', 'Augustus Schusterl', 2006, 'Rumor of Angels, A', 665.81, 19);
insert into book (isbn, publisher_name, author_name, year, title, price, user_id) values ('072563332-8', 'Sib Insley', 'Tabby Hapgood', 2005, 'My Best Fiend (Mein liebster Feind)', 654.18, 20);
insert into book (isbn, publisher_name, author_name, year, title, price, user_id) values ('522264650-5', 'Far Redolfi', 'Olvan Leifer', 1967, 'Black Knight', 683.8, 21);
insert into book (isbn, publisher_name, author_name, year, title, price, user_id) values ('276221490-4', 'Lawrence Dawkins', 'Bryn Morales', 2007, 'Sons of Katie Elder', 840.16, 22);
insert into book (isbn, publisher_name, author_name, year, title, price, user_id) values ('963319765-1', 'Levey O''Heaney', 'Shirleen Garstang', 1998, 'I Bought a Vampire Motorcycle', 814.96, 23);
insert into book (isbn, publisher_name, author_name, year, title, price, user_id) values ('850140182-X', 'Gottfried Mauger', 'Terrijo Bilsland', 2010, 'Imaginary Crimes', 15.46, 24);
insert into book (isbn, publisher_name, author_name, year, title, price, user_id) values ('427338550-3', 'Rowland Scholtz', 'Keen Lewsley', 2009, 'John Doe: Vigilante', 345.13, 25);
insert into book (isbn, publisher_name, author_name, year, title, price, user_id) values ('614974616-X', 'Arne Kilminster', 'Morry Armor', 2009, 'Queen Margot (Reine Margot, La)', 257.18, 26);
insert into book (isbn, publisher_name, author_name, year, title, price, user_id) values ('252796478-8', 'Rubina Meech', 'Nedi Henzley', 2011, 'Story of Us, The', 209.32, 27);
insert into book (isbn, publisher_name, author_name, year, title, price, user_id) values ('983246558-3', 'Prue Houchen', 'Brant Raftery', 2008, 'Of Time and the City', 653.11, 28);
insert into book (isbn, publisher_name, author_name, year, title, price, user_id) values ('955911917-6', 'Ruddie Taberer', 'Cathie Sidworth', 2011, 'Blutzbrüdaz', 381.0, 29);
insert into book (isbn, publisher_name, author_name, year, title, price, user_id) values ('891275255-3', 'Merrielle Burney', 'Joice Edmans', 1994, 'Dodge City', 6.3, 30);
insert into book (isbn, publisher_name, author_name, year, title, price, user_id) values ('188864241-6', 'Bevin Gonthard', 'Ardith Myrtle', 2002, 'Greenwich Village: Music That Defined a Generation ', 711.6, 31);
insert into book (isbn, publisher_name, author_name, year, title, price, user_id) values ('715820510-X', 'Linus Skehens', 'Terrie Teare', 1994, 'Animal Crackers', 137.76, 32);
insert into book (isbn, publisher_name, author_name, year, title, price, user_id) values ('779694964-2', 'Reggie Labat', 'Zia De Simoni', 2005, 'Martín (Hache)', 741.46, 33);
insert into book (isbn, publisher_name, author_name, year, title, price, user_id) values ('040779429-8', 'Ashlin Enriquez', 'Gabi Kuschel', 2004, 'Rio Rita', 817.21, 34);
insert into book (isbn, publisher_name, author_name, year, title, price, user_id) values ('060065700-0', 'Daron Cochern', 'Florette McReedy', 1994, 'Amigo', 104.98, 35);
insert into book (isbn, publisher_name, author_name, year, title, price, user_id) values ('441001901-5', 'Cordula Norton', 'Finley O''Donnelly', 2007, 'Tea and Sympathy', 117.05, 36);
insert into book (isbn, publisher_name, author_name, year, title, price, user_id) values ('767328915-6', 'Skippy Mandrey', 'Ethelyn Griffey', 2006, 'Free Men (Les hommes libres)', 967.18, 37);
insert into book (isbn, publisher_name, author_name, year, title, price, user_id) values ('973432206-0', 'Bethany Rebeiro', 'Taddeusz Gallihawk', 2003, 'Craig Ferguson: I''m Here To Help', 59.39, 38);
insert into book (isbn, publisher_name, author_name, year, title, price, user_id) values ('545758563-8', 'Gabriella Twyford', 'Irina Rihosek', 2009, 'Last Night', 426.3, 39);
insert into book (isbn, publisher_name, author_name, year, title, price, user_id) values ('875941249-6', 'Baron Dimont', 'Tatiania Mitham', 2012, 'Witching and Bitching (Brujas de Zugarramurdi, Las)', 471.0, 40);
insert into book (isbn, publisher_name, author_name, year, title, price, user_id) values ('144078486-8', 'Ariel Cornuau', 'Patrica Thornborrow', 2007, 'Alpha and Omega', 541.03, 41);
insert into book (isbn, publisher_name, author_name, year, title, price, user_id) values ('406432007-7', 'Robinia Jansema', 'Trix Challicum', 2008, 'Hearts of the West', 477.01, 42);
insert into book (isbn, publisher_name, author_name, year, title, price, user_id) values ('709139406-2', 'Ambrosius Alvin', 'Faythe Tremoulet', 2011, 'Dr. T and the Women', 295.75, 43);
insert into book (isbn, publisher_name, author_name, year, title, price, user_id) values ('508522684-4', 'Joanna Gorton', 'Karissa Rijkeseis', 2002, 'St Trinian''s 2: The Legend of Fritton''s Gold', 716.26, 44);
insert into book (isbn, publisher_name, author_name, year, title, price, user_id) values ('596060065-X', 'Bonnie Vasilechko', 'Anna McMonies', 1992, 'Sokkotanssi', 433.78, 45);
insert into book (isbn, publisher_name, author_name, year, title, price, user_id) values ('012843360-4', 'Junia Lanyon', 'Kennan Daily', 2012, 'Welcome to Collinwood', 371.93, 46);
insert into book (isbn, publisher_name, author_name, year, title, price, user_id) values ('588374107-X', 'Jule Weavers', 'Glennis Leupold', 2005, 'Krabat', 389.13, 47);
insert into book (isbn, publisher_name, author_name, year, title, price, user_id) values ('885767900-4', 'Sarge Elloy', 'Gnni Marusic', 2002, 'Mamma Mia!', 250.49, 48);
insert into book (isbn, publisher_name, author_name, year, title, price, user_id) values ('600010616-5', 'Marianna Rasch', 'Percy McGifford', 1993, 'Prince of Pennsylvania, The', 30.23, 49);
insert into book (isbn, publisher_name, author_name, year, title, price, user_id) values ('952424039-4', 'Beniamino Pleming', 'Olivero Tithacott', 1993, 'Dangerous Liaisons', 505.89, 50);

insert into user (name, phone, address, email) values ('Veronike Gobeaux', '123-126-6953', '8795 Sycamore Avenue', 'vgobeaux0@weebly.com');
insert into user (name, phone, address, email) values ('Roseline Terrazzo', '330-958-9700', '2088 Lunder Street', 'rterrazzo1@dion.ne.jp');
insert into user (name, phone, address, email) values ('Bernarr Doumic', '251-641-9001', '48 Hooker Street', 'bdoumic2@bloglines.com');
insert into user (name, phone, address, email) values ('Evangelia Brumpton', '462-472-5901', '0 Browning Pass', 'ebrumpton3@pinterest.com');
insert into user (name, phone, address, email) values ('Gaile Tolcharde', '876-127-2359', '91648 Hooker Lane', 'gtolcharde4@jiathis.com');
insert into user (name, phone, address, email) values ('Hinze Shawyer', '772-774-5241', '5 4th Terrace', 'hshawyer5@blog.com');
insert into user (name, phone, address, email) values ('Ciel Baptie', '299-619-4202', '27301 Hallows Avenue', 'cbaptie6@digg.com');
insert into user (name, phone, address, email) values ('Orville Doohey', '284-325-9763', '20258 Wayridge Place', 'odoohey7@prweb.com');
insert into user (name, phone, address, email) values ('Aubert Simcox', '439-128-6147', '59946 Londonderry Crossing', 'asimcox8@photobucket.com');
insert into user (name, phone, address, email) values ('Brannon Doogan', '323-302-5032', '2682 Kinsman Street', 'bdoogan9@vinaora.com');
insert into user (name, phone, address, email) values ('Mahala Chimienti', '887-804-9047', '760 Dottie Circle', 'mchimientia@cargocollective.com');
insert into user (name, phone, address, email) values ('Hill Eard', '815-992-2296', '37 Oriole Circle', 'heardb@dot.gov');
insert into user (name, phone, address, email) values ('Town Burtt', '780-179-7471', '1560 Longview Way', 'tburttc@mtv.com');
insert into user (name, phone, address, email) values ('Idalina Addington', '633-127-0608', '434 Charing Cross Way', 'iaddingtond@webnode.com');
insert into user (name, phone, address, email) values ('Daphene Sebborn', '110-798-7649', '92 Lakeland Alley', 'dsebborne@thetimes.co.uk');
insert into user (name, phone, address, email) values ('Pat Hamshere', '615-532-3742', '29 Longview Road', 'phamsheref@weibo.com');
insert into user (name, phone, address, email) values ('Ashely Ferrarin', '121-846-8185', '121 Green Center', 'aferraring@geocities.jp');
insert into user (name, phone, address, email) values ('Stella Leadstone', '804-334-9956', '46189 Larry Junction', 'sleadstoneh@de.vu');
insert into user (name, phone, address, email) values ('Briana Kelleher', '684-724-1046', '573 Macpherson Crossing', 'bkelleheri@google.com.br');
insert into user (name, phone, address, email) values ('Indira Armstead', '737-337-2976', '8 Dennis Point', 'iarmsteadj@newyorker.com');
insert into user (name, phone, address, email) values ('Rolf Auston', '234-704-2661', '36 Hudson Court', 'raustonk@irs.gov');
insert into user (name, phone, address, email) values ('Desi Nicol', '652-638-0327', '570 Bayside Avenue', 'dnicoll@acquirethisname.com');
insert into user (name, phone, address, email) values ('Brynna McGillivray', '976-191-0077', '03631 Hoffman Avenue', 'bmcgillivraym@arstechnica.com');
insert into user (name, phone, address, email) values ('Neille Wingate', '804-420-2775', '49971 Armistice Plaza', 'nwingaten@alibaba.com');
insert into user (name, phone, address, email) values ('Anabelle Pavinese', '214-314-4471', '1235 Dixon Place', 'apavineseo@cbsnews.com');
insert into user (name, phone, address, email) values ('Rosemary MacElholm', '430-181-5131', '99605 Golden Leaf Park', 'rmacelholmp@techcrunch.com');
insert into user (name, phone, address, email) values ('Daisie Jaouen', '537-232-1305', '5463 Golf Course Pass', 'djaouenq@hatena.ne.jp');
insert into user (name, phone, address, email) values ('Carmelita Esposito', '132-133-2125', '0 Loftsgordon Road', 'cespositor@addthis.com');
insert into user (name, phone, address, email) values ('Lamond Szymonwicz', '165-446-4129', '1733 Havey Road', 'lszymonwiczs@pen.io');
insert into user (name, phone, address, email) values ('Garth Wyne', '687-111-3615', '5640 Spaight Center', 'gwynet@bigcartel.com');
insert into user (name, phone, address, email) values ('Dolli Chittock', '988-541-6964', '495 Grasskamp Avenue', 'dchittocku@1und1.de');
insert into user (name, phone, address, email) values ('Rafi Alldridge', '539-682-5024', '04 6th Center', 'ralldridgev@hhs.gov');
insert into user (name, phone, address, email) values ('Jacquelynn Sywell', '684-609-6840', '6310 Westend Hill', 'jsywellw@cnbc.com');
insert into user (name, phone, address, email) values ('Celia Mixer', '699-280-0760', '403 Lindbergh Center', 'cmixerx@soup.io');
insert into user (name, phone, address, email) values ('Bryna Becconsall', '916-287-9389', '66 Leroy Lane', 'bbecconsally@springer.com');
insert into user (name, phone, address, email) values ('Belia Wolsey', '230-412-6909', '769 Daystar Parkway', 'bwolseyz@istockphoto.com');
insert into user (name, phone, address, email) values ('Adelaida Ollander', '483-897-4056', '53 Jenifer Road', 'aollander10@addthis.com');
insert into user (name, phone, address, email) values ('Iseabal Lomen', '996-967-4552', '4136 Stone Corner Alley', 'ilomen11@shutterfly.com');
insert into user (name, phone, address, email) values ('Nevsa Silson', '302-375-5879', '91 Crest Line Plaza', 'nsilson12@comcast.net');
insert into user (name, phone, address, email) values ('Amalea Lafayette', '386-259-2307', '86358 Kedzie Center', 'alafayette13@quantcast.com');
insert into user (name, phone, address, email) values ('Federico Trusse', '167-268-8631', '625 Old Shore Court', 'ftrusse14@dot.gov');
insert into user (name, phone, address, email) values ('Rab Farebrother', '752-816-5922', '58409 Stephen Street', 'rfarebrother15@blogs.com');
insert into user (name, phone, address, email) values ('Chrissy Catonnet', '793-214-2648', '035 Waxwing Point', 'ccatonnet16@fema.gov');
insert into user (name, phone, address, email) values ('Kary Finicj', '360-349-8467', '92968 Sugar Center', 'kfinicj17@shareasale.com');
insert into user (name, phone, address, email) values ('Milzie Ellice', '789-683-9182', '4524 Ridgeview Center', 'mellice18@spotify.com');
insert into user (name, phone, address, email) values ('Viviyan Hum', '681-962-3558', '5 Sachtjen Avenue', 'vhum19@walmart.com');
insert into user (name, phone, address, email) values ('Paola Falconbridge', '876-844-4792', '23777 Steensland Parkway', 'pfalconbridge1a@go.com');
insert into user (name, phone, address, email) values ('Armstrong MacIan', '385-513-6917', '8477 Fisk Circle', 'amacian1b@salon.com');
insert into user (name, phone, address, email) values ('Wernher Biesinger', '938-833-7375', '20 Mayfield Crossing', 'wbiesinger1c@blogs.com');
insert into user (name, phone, address, email) values ('Ilyssa McNirlan', '137-403-6718', '56597 Tennyson Park', 'imcnirlan1c@networksolutions.com');


insert into cart (total_price, date) values (16419.14, '2020-01-30 14:53:06');
insert into cart (total_price, date) values (19220.71, '2021-02-19 20:20:15');
insert into cart (total_price, date) values (10475.04, '2021-02-17 20:36:32');
insert into cart (total_price, date) values (10411.86, '2020-06-16 10:24:56');
insert into cart (total_price, date) values (18848.45, '2020-11-09 08:17:20');
insert into cart (total_price, date) values (8198.55, '2020-09-07 15:27:46');
insert into cart (total_price, date) values (5848.14, '2020-02-04 23:20:17');
insert into cart (total_price, date) values (9895.27, '2020-11-12 12:01:09');
insert into cart (total_price, date) values (15126.35, '2019-11-10 19:35:21');
insert into cart (total_price, date) values (5999.76, '2021-01-16 17:41:56');
insert into cart (total_price, date) values (14774.22, '2020-09-24 23:09:32');
insert into cart (total_price, date) values (9230.89, '2019-12-16 08:48:01');
insert into cart (total_price, date) values (6579.82, '2020-08-08 08:54:45');
insert into cart (total_price, date) values (2143.23, '2021-02-26 19:09:08');
insert into cart (total_price, date) values (16726.77, '2020-10-24 23:48:33');
insert into cart (total_price, date) values (16999.69, '2020-02-17 07:11:32');
insert into cart (total_price, date) values (19322.49, '2020-12-30 00:10:56');
insert into cart (total_price, date) values (15232.86, '2020-04-01 14:09:35');
insert into cart (total_price, date) values (11618.06, '2020-08-20 20:50:22');
insert into cart (total_price, date) values (16416.89, '2020-01-13 11:10:36');
insert into cart (total_price, date) values (17232.76, '2020-12-07 02:52:41');
insert into cart (total_price, date) values (17308.35, '2020-09-15 01:42:27');
insert into cart (total_price, date) values (18500.79, '2019-11-14 15:29:10');
insert into cart (total_price, date) values (10206.31, '2021-01-18 13:03:26');
insert into cart (total_price, date) values (14172.84, '2020-01-28 04:15:15');
insert into cart (total_price, date) values (10690.04, '2021-01-12 11:28:40');
insert into cart (total_price, date) values (10725.47, '2020-03-13 15:28:58');
insert into cart (total_price, date) values (4459.27, '2019-12-22 04:20:14');
insert into cart (total_price, date) values (6966.77, '2020-07-05 19:37:11');
insert into cart (total_price, date) values (16848.52, '2020-12-10 22:50:20');
insert into cart (total_price, date) values (3090.48, '2020-08-01 20:42:03');
insert into cart (total_price, date) values (6241.48, '2021-01-29 15:20:39');
insert into cart (total_price, date) values (14371.54, '2019-11-30 04:05:11');
insert into cart (total_price, date) values (11777.51, '2020-08-10 12:20:48');
insert into cart (total_price, date) values (5344.66, '2020-02-11 07:44:17');
insert into cart (total_price, date) values (15596.47, '2020-08-23 19:37:01');
insert into cart (total_price, date) values (10309.33, '2020-05-30 07:07:44');
insert into cart (total_price, date) values (2989.69, '2020-07-20 17:19:54');
insert into cart (total_price, date) values (16045.4, '2020-09-08 00:38:19');
insert into cart (total_price, date) values (17076.24, '2020-10-21 02:28:41');
insert into cart (total_price, date) values (5874.33, '2020-12-11 04:57:25');
insert into cart (total_price, date) values (4522.88, '2020-11-07 22:55:09');
insert into cart (total_price, date) values (16741.34, '2020-10-27 23:47:02');
insert into cart (total_price, date) values (16828.64, '2020-03-30 11:51:31');
insert into cart (total_price, date) values (6111.03, '2020-01-01 21:18:41');
insert into cart (total_price, date) values (15927.36, '2020-03-29 14:39:54');
insert into cart (total_price, date) values (14685.06, '2020-12-16 20:16:47');
insert into cart (total_price, date) values (19268.7, '2019-12-30 04:07:24');
insert into cart (total_price, date) values (14262.97, '2020-07-30 08:54:43');
insert into cart (total_price, date) values (2997.81, '2020-08-04 19:49:44');

insert into cart_product (cart_id, book_id, buyer_id, seller_id, single_price, quantity, date) values (1, 1, 1, 1, 292.36, 7, '2021-01-20 23:53:08');
insert into cart_product (cart_id, book_id, buyer_id, seller_id, single_price, quantity, date) values (2, 2, 2, 2, 140.17, 9, '2020-01-20 09:04:19');
insert into cart_product (cart_id, book_id, buyer_id, seller_id, single_price, quantity, date) values (3, 3, 3, 3, 124.27, 2, '2020-02-29 08:11:13');
insert into cart_product (cart_id, book_id, buyer_id, seller_id, single_price, quantity, date) values (4, 4, 4, 4, 357.93, 8, '2020-03-26 21:03:51');
insert into cart_product (cart_id, book_id, buyer_id, seller_id, single_price, quantity, date) values (5, 5, 5, 5, 320.57, 7, '2020-06-19 03:09:02');
insert into cart_product (cart_id, book_id, buyer_id, seller_id, single_price, quantity, date) values (6, 6, 6, 6, 375.03, 5, '2020-08-12 21:44:10');
insert into cart_product (cart_id, book_id, buyer_id, seller_id, single_price, quantity, date) values (7, 7, 7, 7, 48.89, 6, '2020-05-14 03:59:48');
insert into cart_product (cart_id, book_id, buyer_id, seller_id, single_price, quantity, date) values (8, 8, 8, 8, 134.9, 8, '2020-03-15 20:25:07');
insert into cart_product (cart_id, book_id, buyer_id, seller_id, single_price, quantity, date) values (9, 9, 9, 9, 297.49, 3, '2020-02-13 05:06:33');
insert into cart_product (cart_id, book_id, buyer_id, seller_id, single_price, quantity, date) values (10, 10, 10, 10, 169.05, 9, '2020-03-21 05:46:02');
insert into cart_product (cart_id, book_id, buyer_id, seller_id, single_price, quantity, date) values (11, 11, 11, 11, 228.74, 7, '2020-03-02 12:15:38');
insert into cart_product (cart_id, book_id, buyer_id, seller_id, single_price, quantity, date) values (12, 12, 12, 12, 368.36, 10, '2020-01-14 00:15:00');
insert into cart_product (cart_id, book_id, buyer_id, seller_id, single_price, quantity, date) values (13, 13, 13, 13, 422.16, 5, '2020-04-29 16:44:22');
insert into cart_product (cart_id, book_id, buyer_id, seller_id, single_price, quantity, date) values (14, 14, 14, 14, 285.63, 8, '2020-05-11 20:28:39');
insert into cart_product (cart_id, book_id, buyer_id, seller_id, single_price, quantity, date) values (15, 15, 15, 15, 211.88, 1, '2021-03-21 23:31:00');
insert into cart_product (cart_id, book_id, buyer_id, seller_id, single_price, quantity, date) values (16, 16, 16, 16, 186.1, 9, '2020-04-10 18:20:09');
insert into cart_product (cart_id, book_id, buyer_id, seller_id, single_price, quantity, date) values (17, 17, 17, 17, 135.58, 8, '2020-05-20 09:53:18');
insert into cart_product (cart_id, book_id, buyer_id, seller_id, single_price, quantity, date) values (18, 18, 18, 18, 331.82, 2, '2020-12-13 19:37:31');
insert into cart_product (cart_id, book_id, buyer_id, seller_id, single_price, quantity, date) values (19, 19, 19, 19, 474.44, 6, '2021-02-13 15:20:00');
insert into cart_product (cart_id, book_id, buyer_id, seller_id, single_price, quantity, date) values (20, 20, 20, 20, 430.84, 2, '2020-11-05 10:57:22');
insert into cart_product (cart_id, book_id, buyer_id, seller_id, single_price, quantity, date) values (21, 21, 21, 21, 214.51, 1, '2020-10-09 07:15:35');
insert into cart_product (cart_id, book_id, buyer_id, seller_id, single_price, quantity, date) values (22, 22, 22, 22, 381.31, 7, '2020-05-15 07:58:28');
insert into cart_product (cart_id, book_id, buyer_id, seller_id, single_price, quantity, date) values (23, 23, 23, 23, 69.9, 1, '2020-07-01 14:53:09');
insert into cart_product (cart_id, book_id, buyer_id, seller_id, single_price, quantity, date) values (24, 24, 24, 24, 475.43, 7, '2020-12-01 10:08:53');
insert into cart_product (cart_id, book_id, buyer_id, seller_id, single_price, quantity, date) values (25, 25, 25, 25, 368.99, 9, '2020-02-26 13:59:07');
insert into cart_product (cart_id, book_id, buyer_id, seller_id, single_price, quantity, date) values (26, 26, 26, 26, 104.8, 8, '2020-06-07 18:31:47');
insert into cart_product (cart_id, book_id, buyer_id, seller_id, single_price, quantity, date) values (27, 27, 27, 27, 242.99, 6, '2020-10-15 06:38:30');
insert into cart_product (cart_id, book_id, buyer_id, seller_id, single_price, quantity, date) values (28, 28, 28, 28, 127.88, 5, '2020-06-28 03:16:51');
insert into cart_product (cart_id, book_id, buyer_id, seller_id, single_price, quantity, date) values (29, 29, 29, 29, 371.12, 9, '2020-07-10 16:27:38');
insert into cart_product (cart_id, book_id, buyer_id, seller_id, single_price, quantity, date) values (30, 30, 30, 30, 174.56, 4, '2021-03-02 18:51:29');
insert into cart_product (cart_id, book_id, buyer_id, seller_id, single_price, quantity, date) values (31, 31, 31, 31, 226.2, 6, '2020-02-10 10:17:33');
insert into cart_product (cart_id, book_id, buyer_id, seller_id, single_price, quantity, date) values (32, 32, 32, 32, 132.77, 6, '2019-12-18 15:57:04');
insert into cart_product (cart_id, book_id, buyer_id, seller_id, single_price, quantity, date) values (33, 33, 33, 33, 488.11, 1, '2020-10-16 00:59:32');
insert into cart_product (cart_id, book_id, buyer_id, seller_id, single_price, quantity, date) values (34, 34, 34, 34, 18.37, 6, '2021-03-10 05:06:57');
insert into cart_product (cart_id, book_id, buyer_id, seller_id, single_price, quantity, date) values (35, 35, 35, 35, 55.71, 8, '2019-12-31 19:02:35');
insert into cart_product (cart_id, book_id, buyer_id, seller_id, single_price, quantity, date) values (36, 36, 36, 36, 279.58, 8, '2021-01-21 17:34:15');
insert into cart_product (cart_id, book_id, buyer_id, seller_id, single_price, quantity, date) values (37, 37, 37, 37, 272.71, 1, '2019-11-06 14:28:12');
insert into cart_product (cart_id, book_id, buyer_id, seller_id, single_price, quantity, date) values (38, 38, 38, 38, 130.25, 10, '2019-12-11 10:37:52');
insert into cart_product (cart_id, book_id, buyer_id, seller_id, single_price, quantity, date) values (39, 39, 39, 39, 430.04, 10, '2021-01-11 06:58:15');
insert into cart_product (cart_id, book_id, buyer_id, seller_id, single_price, quantity, date) values (40, 40, 40, 40, 418.46, 2, '2021-01-07 20:58:00');
insert into cart_product (cart_id, book_id, buyer_id, seller_id, single_price, quantity, date) values (41, 41, 41, 41, 349.81, 3, '2019-11-26 00:58:24');
insert into cart_product (cart_id, book_id, buyer_id, seller_id, single_price, quantity, date) values (42, 42, 42, 42, 237.39, 9, '2020-02-09 23:28:36');
insert into cart_product (cart_id, book_id, buyer_id, seller_id, single_price, quantity, date) values (43, 43, 43, 43, 204.04, 10, '2020-11-09 03:18:50');
insert into cart_product (cart_id, book_id, buyer_id, seller_id, single_price, quantity, date) values (44, 44, 44, 44, 341.83, 10, '2020-10-18 02:50:55');
insert into cart_product (cart_id, book_id, buyer_id, seller_id, single_price, quantity, date) values (45, 45, 45, 45, 382.75, 2, '2020-05-12 02:34:28');
insert into cart_product (cart_id, book_id, buyer_id, seller_id, single_price, quantity, date) values (46, 46, 46, 46, 55.77, 6, '2021-01-14 18:50:42');
insert into cart_product (cart_id, book_id, buyer_id, seller_id, single_price, quantity, date) values (47, 47, 47, 47, 202.13, 5, '2020-09-15 04:12:29');
insert into cart_product (cart_id, book_id, buyer_id, seller_id, single_price, quantity, date) values (48, 48, 48, 48, 147.93, 5, '2020-02-10 05:01:42');
insert into cart_product (cart_id, book_id, buyer_id, seller_id, single_price, quantity, date) values (49, 49, 49, 49, 357.97, 8, '2020-11-08 13:56:08');
insert into cart_product (cart_id, book_id, buyer_id, seller_id, single_price, quantity, date) values (50, 50, 50, 50, 26.18, 6, '2020-07-05 14:16:00');

insert into discussion (post, title, user_id) values ('Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.

Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', 1);
insert into discussion (post, title, user_id) values ('Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.

Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.

Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 2);
insert into discussion (post, title, user_id) values ('Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.

Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.

Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', 3);
insert into discussion (post, title, user_id) values ('Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.

Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', 4);
insert into discussion (post, title, user_id) values ('Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.

Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.

Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.

Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', 5);
insert into discussion (post, title, user_id) values ('Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.

Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.

Phasellus in felis. Donec semper sapien a libero. Nam dui.', 6);
insert into discussion (post, title, user_id) values ('Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', 7);
insert into discussion (post, title, user_id) values ('In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.

Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', 8);
insert into discussion (post, title, user_id) values ('Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 9);
insert into discussion (post, title, user_id) values ('Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.

Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', 10);
insert into discussion (post, title, user_id) values ('Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.

Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.

Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.

Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', 11);
insert into discussion (post, title, user_id) values ('Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.

Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', 12);
insert into discussion (post, title, user_id) values ('In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.

Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', 13);
insert into discussion (post, title, user_id) values ('In congue. Etiam justo. Etiam pretium iaculis justo.

In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.

Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', 14);
insert into discussion (post, title, user_id) values ('Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.

Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.

Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.

Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 15);
insert into discussion (post, title, user_id) values ('Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.

Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.

Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', 16);
insert into discussion (post, title, user_id) values ('Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.

In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 17);
insert into discussion (post, title, user_id) values ('Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.

Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.

Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 18);
insert into discussion (post, title, user_id) values ('Fusce consequat. Nulla nisl. Nunc nisl.

Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.

Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', 19);
insert into discussion (post, title, user_id) values ('Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.

Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.

Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', 20);
insert into discussion (post, title, user_id) values ('Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.

Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.

Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.

Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 21);
insert into discussion (post, title, user_id) values ('Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.

Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.

Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.

Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', 22);
insert into discussion (post, title, user_id) values ('Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.

In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.

Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', 23);
insert into discussion (post, title, user_id) values ('Sed ante. Vivamus tortor. Duis mattis egestas metus.

Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.

Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 24);
insert into discussion (post, title, user_id) values ('Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', 25);
insert into discussion (post, title, user_id) values ('Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.

Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.

Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', 26);
insert into discussion (post, title, user_id) values ('Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 27);
insert into discussion (post, title, user_id) values ('Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', 28);
insert into discussion (post, title, user_id) values ('Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.

Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.

Fusce consequat. Nulla nisl. Nunc nisl.', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.

Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', 29);
insert into discussion (post, title, user_id) values ('Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', 30);
insert into discussion (post, title, user_id) values ('Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.

Phasellus in felis. Donec semper sapien a libero. Nam dui.', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', 31);
insert into discussion (post, title, user_id) values ('Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.

Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.

Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 32);
insert into discussion (post, title, user_id) values ('Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', 33);
insert into discussion (post, title, user_id) values ('Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.

In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.

Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', 34);
insert into discussion (post, title, user_id) values ('Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', 35);
insert into discussion (post, title, user_id) values ('Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', 36);
insert into discussion (post, title, user_id) values ('Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.

Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.

In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.

Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', 37);
insert into discussion (post, title, user_id) values ('In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.

Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 38);
insert into discussion (post, title, user_id) values ('Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.

Fusce consequat. Nulla nisl. Nunc nisl.

Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', 39);
insert into discussion (post, title, user_id) values ('Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', 40);
insert into discussion (post, title, user_id) values ('Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.

Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', 41);
insert into discussion (post, title, user_id) values ('Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.

Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.

Phasellus in felis. Donec semper sapien a libero. Nam dui.', 42);
insert into discussion (post, title, user_id) values ('Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 43);
insert into discussion (post, title, user_id) values ('Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', 44);
insert into discussion (post, title, user_id) values ('Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.

Fusce consequat. Nulla nisl. Nunc nisl.', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', 45);
insert into discussion (post, title, user_id) values ('Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.

Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.

Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.

Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 46);
insert into discussion (post, title, user_id) values ('Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', 47);
insert into discussion (post, title, user_id) values ('Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', 48);
insert into discussion (post, title, user_id) values ('Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.

In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', 49);
insert into discussion (post, title, user_id) values ('Phasellus in felis. Donec semper sapien a libero. Nam dui.', 'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 50);


insert into reply (discussion_id, content, user_id, date) values (1, 'In congue. Etiam justo. Etiam pretium iaculis justo.', 1, '2020-11-21 23:27:24');
insert into reply (discussion_id, content, user_id, date) values (2, 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.

In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 2, '2020-04-25 06:34:01');
insert into reply (discussion_id, content, user_id, date) values (3, 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', 3, '2020-07-09 03:31:37');
insert into reply (discussion_id, content, user_id, date) values (4, 'Phasellus in felis. Donec semper sapien a libero. Nam dui.', 4, '2020-05-28 00:46:12');
insert into reply (discussion_id, content, user_id, date) values (5, 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.

Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 5, '2021-01-14 13:41:06');
insert into reply (discussion_id, content, user_id, date) values (6, 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 6, '2020-11-02 03:17:09');
insert into reply (discussion_id, content, user_id, date) values (7, 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', 7, '2020-10-08 18:11:30');
insert into reply (discussion_id, content, user_id, date) values (8, 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 8, '2020-10-15 14:46:09');
insert into reply (discussion_id, content, user_id, date) values (9, 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.

In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 9, '2020-07-21 09:17:04');
insert into reply (discussion_id, content, user_id, date) values (10, 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.

Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 10, '2020-11-22 07:04:42');
insert into reply (discussion_id, content, user_id, date) values (11, 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.

Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', 11, '2020-05-19 01:06:46');
insert into reply (discussion_id, content, user_id, date) values (12, 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 12, '2021-03-17 06:49:30');
insert into reply (discussion_id, content, user_id, date) values (13, 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.

Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.

Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 13, '2020-05-07 03:40:50');
insert into reply (discussion_id, content, user_id, date) values (14, 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.

Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.

Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', 14, '2020-10-03 12:23:35');
insert into reply (discussion_id, content, user_id, date) values (15, 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.

Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', 15, '2020-12-21 18:27:39');
insert into reply (discussion_id, content, user_id, date) values (16, 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.

Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', 16, '2020-03-27 09:57:43');
insert into reply (discussion_id, content, user_id, date) values (17, 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.

Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.

Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 17, '2020-11-09 03:01:51');
insert into reply (discussion_id, content, user_id, date) values (18, 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.

Fusce consequat. Nulla nisl. Nunc nisl.

Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', 18, '2020-04-25 05:56:28');
insert into reply (discussion_id, content, user_id, date) values (19, 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.

Phasellus in felis. Donec semper sapien a libero. Nam dui.', 19, '2020-06-17 07:59:46');
insert into reply (discussion_id, content, user_id, date) values (20, 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', 20, '2020-10-30 00:10:28');
insert into reply (discussion_id, content, user_id, date) values (21, 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', 21, '2021-02-05 14:39:52');
insert into reply (discussion_id, content, user_id, date) values (22, 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.

Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.

In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 22, '2020-08-01 20:35:13');
insert into reply (discussion_id, content, user_id, date) values (23, 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.

Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 23, '2020-05-30 12:56:35');
insert into reply (discussion_id, content, user_id, date) values (24, 'Fusce consequat. Nulla nisl. Nunc nisl.

Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', 24, '2020-04-29 08:30:39');
insert into reply (discussion_id, content, user_id, date) values (25, 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', 25, '2020-08-28 01:20:58');
insert into reply (discussion_id, content, user_id, date) values (26, 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.

Sed ante. Vivamus tortor. Duis mattis egestas metus.

Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', 26, '2021-02-03 17:33:21');
insert into reply (discussion_id, content, user_id, date) values (27, 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', 27, '2020-08-26 16:14:36');
insert into reply (discussion_id, content, user_id, date) values (28, 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 28, '2020-12-11 18:22:01');
insert into reply (discussion_id, content, user_id, date) values (29, 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.

Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 29, '2020-11-04 12:57:03');
insert into reply (discussion_id, content, user_id, date) values (30, 'Phasellus in felis. Donec semper sapien a libero. Nam dui.', 30, '2020-12-21 05:48:32');
insert into reply (discussion_id, content, user_id, date) values (31, 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', 31, '2020-07-30 20:46:59');
insert into reply (discussion_id, content, user_id, date) values (32, 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', 32, '2020-09-02 13:59:00');
insert into reply (discussion_id, content, user_id, date) values (33, 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.

Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.

Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 33, '2020-10-15 18:00:43');
insert into reply (discussion_id, content, user_id, date) values (34, 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.

Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 34, '2020-07-14 10:28:04');
insert into reply (discussion_id, content, user_id, date) values (35, 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.

Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.

Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', 35, '2020-10-18 15:33:25');
insert into reply (discussion_id, content, user_id, date) values (36, 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', 36, '2020-05-14 13:51:53');
insert into reply (discussion_id, content, user_id, date) values (37, 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.

Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 37, '2020-11-10 22:00:40');
insert into reply (discussion_id, content, user_id, date) values (38, 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.

Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', 38, '2021-01-22 00:41:56');
insert into reply (discussion_id, content, user_id, date) values (39, 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.

Fusce consequat. Nulla nisl. Nunc nisl.

Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', 39, '2020-08-24 22:39:54');
insert into reply (discussion_id, content, user_id, date) values (40, 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', 40, '2020-04-09 09:02:51');
insert into reply (discussion_id, content, user_id, date) values (41, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.

Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', 41, '2020-08-28 23:09:02');
insert into reply (discussion_id, content, user_id, date) values (42, 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', 42, '2020-05-07 10:10:38');
insert into reply (discussion_id, content, user_id, date) values (43, 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.

Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', 43, '2020-05-23 06:44:13');
insert into reply (discussion_id, content, user_id, date) values (44, 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.

Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.

Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 44, '2020-06-03 07:19:20');
insert into reply (discussion_id, content, user_id, date) values (45, 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', 45, '2020-09-10 13:03:30');
insert into reply (discussion_id, content, user_id, date) values (46, 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', 46, '2020-05-26 14:18:19');
insert into reply (discussion_id, content, user_id, date) values (47, 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.

Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', 47, '2020-03-31 03:27:52');
insert into reply (discussion_id, content, user_id, date) values (48, 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.

Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.

In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 48, '2020-04-05 08:23:46');
insert into reply (discussion_id, content, user_id, date) values (49, 'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 49, '2020-12-11 22:36:41');

