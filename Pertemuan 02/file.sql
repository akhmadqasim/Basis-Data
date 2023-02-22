create database dbKursus_AQ;

use dbKursus_AQ;

create table peserta (
    nomor CHAR(8) NOT NULL PRIMARY KEY,
    nama VARCHAR(20) NOT NULL,
    email VARCHAR(30) NULL ,
    alamat VARCHAR(20) NOT NULL ,
    kota VARCHAR(10) NOT NULL
);