use informatika;
insert into daftar_dosen
values ('1234245', 'rofilde_h', '082285854362', 'karang_paci', 'UNI1234'),
       ('1234567', 'rudiman', '085250033345', 'samarinda', '1234577'),
       ('2348751', 'wawan', '081347649385', 'mahkota dua', 'UNI1107'),
       ('2348753', 'Faldi', '081350225449', 'juanda', 'INF3025');
select * from daftar_dosen;
show tables;
desc daftar_dosen;
select * from mahasiswa;
drop table mahasiswa;
select * from daftar_dosen;
delete from daftar_dosen where nama_dosen = 'rofilde_h';
select * from daftar_dosen;
delete from daftar_dosen where nama_dosen = 'wawan' OR nama_dosen = 'faldi';
insert into matakuliah
values ('3420236', 'Big Data', '3', '6', '1710137'),
       ('1231231', 'JARKOM', '3', '5', '1234567'),
       ('3421236', 'methodology', '3', '6', '1232341'),
       ('1231234', 'SIG', '3', '6', '1234567');
select * from matakuliah;
delete from matakuliah order by nama_matakuliah desc limit 4;
select * from matakuliah;
truncate table daftar_dosen;