create database dbtoko;
show databases;
use dbtoko;
create table tblkelompok(
    idkelompok int not null auto_increment primary key,
    kelompok varchar(100)
);
show tables;
desc tblkelompok;
create table tblbarang(
    idbarang int not null auto_increment primary key,
    idkelompok int,
    barang varchar(200),
    stok float,
    hargabeli float
);
show tables;
alter table tblbarang add harga_jual float;
desc tblbarang;
alter table tblbarang modify stok int;
desc tblbarang;
alter table tblbarang alter column stok set default 0;
desc tblbarang;
alter table tblbarang add stokminimal int;
desc tblbarang;
alter table tblbarang drop column stokminimal;
desc tblbarang;
alter table tblbarang change stok stok_barang int;
desc tblbarang;
create table table_pelanggan(
    id_pelanggan int,
    nama varchar(200),
    alamat varchar(255)
);
alter table table_pelanggan modify id_pelanggan int not null auto_increment primary key;
desc table_pelanggan;
show create table table_pelanggan;
create table table_order(
    id_order int not null auto_increment primary key,
    id_pelanggan int,
    tanggal_order date,
    total float,
    bayar float,
    kembali float
);
desc table_order;
alter table table_order add faktur varchar(50) after id_pelanggan;
desc table_order;
create table order_detail(
    id_order_detail int not null auto_increment primary key,
    id_order int,
    id_barang int,
    jumlah int,
    harga_jual float
);
desc order_detail;
create index pelanggan_index on table_pelanggan (nama);
create index barang_index on tblbarang (barang);
show index from tblbarang;
drop index pelanggan_index on table_pelanggan;