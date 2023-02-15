create database latihan1;

select user(), version();

select curdate();

select curtime();

select now();

select 5 + 5;

create database latihan2;

show databases;

drop database latihan2;

show databases;

use latihan1;

show tables;

create table karyawan;

create table karyawan
(
    nopeg INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nama  VARCHAR(50) NOT NULL
);

show tables;

describe karyawan;

show columns from karyawan;

create table contoh1
(
    noid INT
);

show tables;

drop table contoh1;

show tables;

create database dbKursus_AQ;

use dbKursus_AQ;

create table peserta
(
    nomor CHAR(8) NOT NULL PRIMARY KEY,
    nama VARCHAR(20) NOT NULL,
    email VARCHAR(30) NULL ,
    alamat VARCHAR(20) NOT NULL ,
    kota VARCHAR(10) NOT NULL
);