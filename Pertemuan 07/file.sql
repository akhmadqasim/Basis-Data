# Sebelum praktikum
create database toko;
use toko;
create table brg
(
    kode_brg varchar(10) primary key,
    name_brg varchar(30),
    stok     mediumint,
    harga    mediumint,
    kode_ktg varchar(10)
);
create table ktg
(
    kode_ktg varchar(10) primary key,
    kategori varchar(30)
);
create table plg
(
    kode_plg varchar(10) primary key,
    nama_plg varchar(30),
    alamat   text,
    telp     varchar(12)
);
create table trans
(
    kode_trans varchar(10) primary key,
    kode_plg   varchar(10),
    tlg        varchar(10),
    kode_brg   varchar(10),
    jml        mediumint
);
insert into brg
values ('B001', 'Buku Tulis', '8', '1500', 'K001'),
       ('B002', 'Kertas HVS', '5', '35000', 'K001'),
       ('B003', 'Ballpoint', '25', '1000', 'K002'),
       ('B004', 'Penghapus', '30', '2500', 'K002'),
       ('B005', 'Rautan Pensil', '10', '2000', 'K002'),
       ('B006', 'Sapu Lidi', '18', '4000', '');
insert into ktg
values ('K001', 'Inventaris'),
       ('K002', 'Modal'),
       ('K003', 'Titipan');
insert into plg
values ('P001', 'Ogi Ginanjar', 'Sumedang Utara', '085789876564'),
       ('P002', 'Dadang Sukmana', 'Bandung', '087654567876'),
       ('P003', 'Aditya', 'Papua', '089876567054');
insert into trans
values ('T00001', 'P001', '2014-04-01', 'B002', '3'),
       ('T00002', 'P003', '2014-04-10', 'B001', '6'),
       ('T00003', 'P002', '2014-04-13', 'B005', '4'),
       ('T00004', 'P002', '2014-04-09', 'B004', '5'),
       ('T00005', 'P003', '2014-04-09', 'B002', '2'),
       ('T00006', 'P003', '2014-04-11', 'B001', '4'),
       ('T00007', 'P003', '2014-04-11', 'B001', '5');

# Praktikum
show databases;
use toko;
show tables;
select * from brg;
select * from ktg;
select * from plg;
select * from trans;
select * from brg
         inner join ktg on ktg.kode_ktg = brg.kode_ktg;
select * from brg
         left join ktg on ktg.kode_ktg = brg.kode_ktg;
select * from brg
         right join ktg on ktg.kode_ktg = brg.kode_ktg;
select lcase('DEWI SUCIAWATI');
select lower('DEWI SUCIAWATI');
select ucase('teknik informatika');
select upper('teknik informatika');
select substring('DEWI SUCIAWATI', 6, 5);
select left('DEWI SUCIAWATI', 10);
select right('TEKNIK INFORMATIKA', 11);
select replace('dewisuciawati.blogspot.com', '.', 'dot');
select repeat('Dewi ', 3);
select reverse('Kasur Rusak');