create database informatika;
use informatika;
create table mahasiswa
(
    nim_mahasiswa  bigint(13)     not null primary key auto_increment,
    nama_mahasiswa varchar(30) not null,
    alamat         text,
    semester       varchar(1)
);
desc mahasiswa;
show tables;
create table matakuliah
(
    kode_matakuliah char(7) primary key,
    nama_matakuliah varchar(40) not null,
    jumlah_sks      char(1),
    semester        char(1),
    nik_dosen       char(7)
);
desc mahasiswa;
show tables;
create table daftar_dosen
(
    nik_dosen       char(7) primary key,
    nama_dosen      varchar(35) not null,
    no_hp           char(12),
    alamat          varchar(100),
    kode_matakuliah char(7)
);
desc daftar_dosen;
show tables;
insert into mahasiswa
values ('2211102441237', 'Akhmad Qasim', 'Perum Solong Durian', '2');
select *
from mahasiswa;