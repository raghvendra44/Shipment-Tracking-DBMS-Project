insert into Client values (1, row('Emmaline','7383515479', 'eargile0@umich.edu', '7377 Sunnyside Crossing'));
insert into Client values (2,row('Rebeca','7511532829', 'rings1@imgur.com', '5 Superior Circle'));
insert into Client values (3,row('Gelya', '4828956526', 'gstrain2@tamu.edu', '71355 Harper Junction'));
insert into Client values (4,row('Joellen', '6407036586', 'jjellico3@foxnews.com', '55558 Vidon Court'));
insert into Client values (5,row('Bear', '6203188862', 'bfeehily4@xing.com', '0369 Norway Maple Way'));
insert into Client values (6,row('Augustina', '3834111743', 'apalser5@oaic.gov.au', '39431 Harper Street'));
insert into Client values (7,row('Jacki', '1162075511', 'javo6@barnesandnoble.com', '514 Kropf Parkway'));
insert into Client values (8,row('Cornie', '9986730489', 'ckike7@hud.gov', '0448 Eastwood Junction'));
insert into Client values (9,row('Randene', '5808039229', 'rjochen8@mysql.com', '215 Northland Pass'));
insert into Client values (10,row('Gualterio', '1088739342', 'gtrewman9@indiegogo.com', '6198 Browning Alley'));

insert into Partners values (1, 'Toys');
insert into Partners values (2, 'Shoes');
insert into Partners values (3, 'Movies');
insert into Partners values (4, 'Beauty');
insert into Partners values (5, 'Shoes');
insert into Partners values (6, 'Computers');
insert into Partners values (7, 'Baby');
insert into Partners values (8, 'Games');
insert into Partners values (9, 'Movies');
insert into Partners values (10, 'Chips');

insert into Delivery_Staff values (1, 1, '2021-07-19', 5023.48, row('Mikael', '2517672827', 'mkobiera0@sitemeter.com', '136 Luster Point'));
insert into Delivery_Staff values (2, 2, '2021-02-18', 5172.85, row('Gwen', '6703949183', 'gjesson1@narod.ru', '18 Calypso Hill'));
insert into Delivery_Staff values (3, 3, '2021-09-17', 3060.1, row('Birk', '3223177339', 'bcastagnone2@soup.io', '3396 Karstens Plaza'));
insert into Delivery_Staff values (4, 4, '2021-05-24', 5220.05, row('Field', '4279154156', 'fdarrel3@apple.com', '2 Morningstar Street'));
insert into Delivery_Staff values (5, 5, '2021-04-13', 6102.66, row('Shela', '9954617534', 'skeeffe4@japanpost.jp', '099 Hanover Street'));
insert into Delivery_Staff values (6, 6, '2021-06-30', 8313.04, row('Cairistiona', '4529265589', 'cswadon5@google.de', '20955 Larry Way'));
insert into Delivery_Staff values (7, 7, '2021-10-10', 6108.57, row('Lisle', '7572984135', 'lmattam6@mail.ru', '12174 Dixon Avenue'));
insert into Delivery_Staff values (8, 8, '2021-02-13', 5686.94, row('Kelley', '2947329888', 'kwickett7@digg.com', '32 Mesta Park'));
insert into Delivery_Staff values (9, 9, '2021-06-08', 3472.94, row('Ernest', '6697216177', 'erix8@youku.com', '35052 Mosinee Park'));
insert into Delivery_Staff values (10, 10, '2021-05-08', 5781.5, row('Sandye', '5054097514', 'stoma9@seesaa.net', '37367 Petterle Way'));

insert into warehouse values (1,6, '869 Nancy Plaza', 1);
insert into warehouse values (2,10, '869 Division Plaza', 2);
insert into warehouse values (3,2, '0 Carioca Terrace', 3);
insert into warehouse values (4,3, '4010 Burning Wood Alley', 4);
insert into warehouse values (5,7, '5 Stoughton Pass', 5);
insert into warehouse values (6,4, '9 Texas Terrace', 6);
insert into warehouse values (7,7, '5383 Dixon Court', 7);
insert into warehouse values (8,4, '618 Commercial Court', 8);
insert into warehouse values (9,10, '7 Heath Pass', 9);
insert into warehouse values (10,7, '17 Golden Leaf Street', 10);

insert into Vehicles values (1,600, 'KA12AG1642', true, 1, 1);
insert into Vehicles values (2,2000,'JK09MN7684', true,2, 2);
insert into Vehicles values (3,500,'GA12MN1324', true, 3, 3);
insert into Vehicles values (4,800,'GJ44PP6994', true, 4, 4);
insert into Vehicles values (5,900,'DL12PO4234',true,  5, 5);
insert into Vehicles values (6,750,'KA22UG1324', true,  6, 6);
insert into Vehicles values (7,790,'KA12AG2689', true, 7, 7);
insert into Vehicles values (8,4000,'AP77HG1234', true, 8, 8);
insert into Vehicles values (9,2500,'MH12AG1672', true,  9, 9);
insert into Vehicles values (10,1000,'DL10AA6969',true, 10, 10);

insert into Orders(arrival_date, fragile, prod_weight, status, rec_add, reciever, Sender, Vehicle_id, Client_ID, DS_id, W_id) values ('2021-07-27', false, 52,'Delivered','36056 Hintze Drive', 'Emmaline', 'Valentino', 1, 1, 1, 1);
insert into Orders(arrival_date, fragile, prod_weight, status, rec_add, reciever, Sender, Vehicle_id, Client_ID, DS_id, W_id) values ('2021-03-30', false, 95,'Delivered', '7078 Northridge Alley', 'Joellen', 'Daron', 4, 4, 4, 4);
insert into Orders(arrival_date, fragile, prod_weight, status, rec_add, reciever, Sender, Vehicle_id, Client_ID, DS_id, W_id) values ('2020-12-30', false, 75,'Delivered', '652 Sachtjen Terrace', 'Bear', 'Shoes', 5, 5, 5, 5);
insert into Orders(arrival_date, fragile, prod_weight, status, rec_add, reciever, Sender, Vehicle_id, Client_ID, DS_id, W_id) values ('2021-05-03', true, 10,'Delivered', '28 Maple Alley', 'Augustina', 'Ruthy', 6, 6, 6, 6);
insert into Orders(arrival_date, fragile, prod_weight, status, rec_add, reciever, Sender, Vehicle_id, Client_ID, DS_id, W_id) values ('2020-11-16', true, 54,'Delivered', '511 Randy Center', 'Jacki', 'Movies', 7, 7, 7, 7);
insert into Orders(arrival_date, fragile, prod_weight, status, rec_add, reciever, Sender, Vehicle_id, Client_ID, DS_id, W_id) values ('2021-04-18', false, 2,'Delivered', '02 Surrey Place', 'Cornie', 'Tony', 8, 8, 8, 8);
insert into Orders(arrival_date, fragile, prod_weight, status, rec_add, reciever, Sender, Vehicle_id, Client_ID, DS_id, W_id) values ('2020-10-27', true, 20,'Delivered',  '0623 Waywood Crossing', 'Randene', 'Frieda', 9, 9, 9, 9);
insert into Orders(arrival_date, fragile, prod_weight, status, rec_add, reciever, Sender, Vehicle_id, Client_ID, DS_id, W_id) values ('2021-12-20', true, 61,'In-transit', '6 Chinook Court', 'Gualterio', 'Toys', 10, 10, 10, 10);
insert into Orders(arrival_date, fragile, prod_weight, status, rec_add, reciever, Sender, Vehicle_id, Client_ID, DS_id, W_id) values ('2021-08-31', true, 71,'In-transit', '51 Independence Pass', 'Rebeca', 'Joyce', 2, 2, 2, 2);

insert into Orders(arrival_date, fragile, prod_weight, status, rec_add, reciever, Sender, Vehicle_id, Client_ID, DS_id, W_id) values ('2021-05-30', true, 97,'Delivered', 'PES University', 'Shruthi', 'Aryuaman', 3, 30, 3, 3);
insert into Orders(arrival_date, fragile, prod_weight, status, rec_add, reciever, Sender, Vehicle_id, Client_ID, DS_id, W_id) values ('2021-05-30', true, 20,'Delivered', 'PES University', 'Shruthi', 'ragys', 3, 30, 3, 3);
insert into Orders(arrival_date, fragile, prod_weight, status, rec_add, reciever, Sender, Vehicle_id, Client_ID, DS_id, W_id) values ('2021-06-02', true, 07,'In-transit', 'PES University', 'Shruthi', 'devas', 3, 30, 3, 3);
insert into Orders(arrival_date, fragile, prod_weight, status, rec_add, reciever, Sender, Vehicle_id, Client_ID, DS_id, W_id) values ('2021-06-03', true, 30,'In-transit', 'PES University', 'Shruthi', 'archaies', 3, 30, 3, 3);
insert into Orders(arrival_date, fragile, prod_weight, status, rec_add, reciever, Sender, Vehicle_id, Client_ID, DS_id, W_id) values ('2021-06-04', true, 69,'In-transit', 'PES University', 'Shruthi', 'archilies', 3, 30, 3, 3);



insert into Partner_orders values(10,1);
insert into Partner_orders values(7,3);
insert into Partner_orders values(3,6);
insert into Partner_orders values(5,5);

insert into employee values (1, 376437.3, '1991-10-26', 1, 'Warehouse associate', 1,row('Myca Lintot', '7676277423', 'mlintot0@wikispaces.com', '3516 Rockefeller Court'));
insert into employee values (2, 896213.34, '1980-02-08', 53, 'Technical associate', 2, row('Hillier Pennicard', '2655304032', 'hpennicard1@reverbnation.com', '88485 Moland Crossing'));
insert into employee values (3, 454277.34, '2008-02-26', 17, 'Technical associate', 3, row('Esta Cotterrill', '7259880694', 'ecotterrill2@intel.com', '131 Arrowood Place'));
insert into employee values (4, 115333.81, '2010-02-06', 54, 'Warehouse associate',4, row('Talya McClune', '3636462273', 'tmcclune3@abc.net.au', '1 Melody Parkway'));
insert into employee values (5, 126903.15, '1986-04-26', 49, 'Technical associate', 5, row('Mill Beckett', '6338227131', 'mbeckett4@printfriendly.com', '642 Swallow Terrace'));
insert into employee values (6, 974918.37, '2004-09-16', 33, 'Warehouse associate', 6, row('Cairistiona Ollive', '7136274920', 'collive5@netscape.com', '3450 Merrick Place'));
insert into employee values (7, 907746.52, '1987-06-20', 9, 'Manager', 7, row('Lynnelle Binestead', '8065713150', 'lbinestead6@addthis.com', '33 Northwestern Circle'));
insert into employee values (8, 508718.58, '2007-09-09', 59, 'Warehouse associate', 8, row('Adina Giacomini', '1159259026', 'agiacomini7@cnbc.com', '4 Eastwood Junction'));
insert into employee values (9, 149351.5, '1997-01-05', 40, 'Warehouse associate', 9, row('Lory Cayford', '2204801033', 'lcayford8@cnbc.com', '78 Lakewood Gardens Alley'));
insert into employee values (10, 368503.45, '2007-07-08', 47, 'Warehouse associate', 10, row('Weider Simeone', '9151350533', 'wsimeone9@google.com.br', '6830 Little Fleur Hill'));
