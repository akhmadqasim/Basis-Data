show databases;
use informatika;
show tables;
desc matakuliah;
insert into matakuliah
values ('1234567', 'Basis Data', '3', '3', '1710137');
insert into matakuliah
values ('4234567', 'Web Statik', '3', '2', '1710137');
insert into matakuliah
values ('1890122', 'Pengantar Teknologi Informasi', '2', '2', '1710137'),
       ('9074211', 'Pemrograman Berbasis CMS', '3', '2', '1710137');
insert into matakuliah
values ('1234567', 'Basis Data', '3', '3', '1710137'),
       ('1222345', 'Aplikasi Komputer', '2', '1', '1710137');
insert ignore into matakuliah
values ('1234567', 'Basis Data', '3', '3', '1710137'),
       ('1222345', 'Aplikasi Komputer', '2', '1', '1710137');
select *
from matakuliah;
insert into matakuliah (kode_matakuliah, nama_matakuliah, jumlah_sks, semester, nik_dosen) value ('1234567', 'Basis Data', '3', '3', '1710137')
on duplicate key update nama_matakuliah='Database';
select *
from matakuliah;