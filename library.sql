/*Hi everyone! It’s my first project in MySQL. 
A simple database for a library. Includes tables with information about readers, books and borrowings. 
*/
create table reader ( 
id_reader varchar(10) primary key not null auto_increment, 
sirname varchar(35) NOT NULL, 
first_name varchar(35) NOT NULL, 
telephone int(9), 
email varchar(50) not null, 
adress varchar(50), 
unique index(email),
unique index(id_reader)
); 

  

insert into reader (sirname, first_name, telefon, email, adress) values  
('Drachkova', 'Veranika', 0, 'vaggis2001@gmail.com', 'Zakopiańska54/36'),  
('Kowalska', 'Ewa', 785345243, 'ewkakow2015@gmail.com', 'Krakowska67a/45'),  
('Nowak', 'Piotr', 0, 'p.nowak@interia.pl', 'Wielicka107/54'),  
('Biała', 'Agnieszka', 635454232, 'agnieeeszka@gmail.com', '0'),  
('Kowalski', 'Andrzej', 746576398, 'andrzejkow@gmail.com', 'Halszki78/12'); 


create table books( 
id_book int(8) not null primary key auto_increment, 
title varchar(100) not null, 
author varchar(30) not null, 
publ_year YEAR(4),
publisher  varchar(30)
); 

  

insert into books (title, author, publ_year, publisher) values 
('Wyspa Doktora Moreeau', 'H.G.Wells', 2020, 'Vesper'), 
('Simulakra', 'P.K.Dick', 1998, 'Alfa'), 
('Portret Doriana Graya', 'O.Wilde', 2005, 'Zielona Sowa'), 
('Czarna strzała', 'R.L.Stevenson', 2003,'Uniwersitas'), 
('Frankenstein', 'M.Shelley', 2013, 'Vesper'), 
('Podstawowy wykład z systemów baz danych', 'J.D.Ullman', 2000, '0'), 
('Jak napisać scenariusz', 'R.G.Frensham', 1998, '0'), 
('Ćwiczenia z języka Python', 'M.Mysior', 2003, '0'), 
('Drakula', 'B.Stoker', 1940, 'Vesper'), 
('Wojna Światów', 'H.G.Wells', 1977, 'Vesper'); 

  




create table borrowings ( 
id_reader varchar(10) not null, 
id_book int(8) not null, 
borrow_date date, 
return_date date, 
returned varchar(3), 
foreign key (id_reader) references readers(id_reader),
foreign key (id_book) references books(id_book)
); 

  

insert into wypożyczenia values 
('verdra1110', 16767687, '2021-01-15', '2021-03-16 16:00:00', 'tak'), 
('agnbia0906', 12123453, '2021-03-04', '2021-05-17 16:00:00', 'tak'), 
('andkow0511', 65676587, '2021-02--25', '2021-05-13 16:00:00', 'nie'), 
('Kowalska', 98909767, '2021-06-13', '2022-08-13 12:00:00', '0'), 
('Kowalska', 87656576, '2021-06-13', '2021-08-13 12:00:00', '0'); 






