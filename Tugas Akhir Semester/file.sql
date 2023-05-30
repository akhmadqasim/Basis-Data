# Buat database
create database sia;

# Gunakan database
use sia;

# Buat tabel siswa
create table siswa
(
    id_siswa      char(5) primary key not null,
    nama          varchar(50),
    tanggal_lahir date,
    jenis_kelamin enum ('perempuan', 'laki-laki'),
    alamat        text,
    jurusan       enum ('IPA', 'IPS')
);

# Buat tabel jadwal_pelajaran
create table jadwal_pelajaran
(
    id_jadwal   char(5) primary key,
    hari        varchar(10),
    jam_mulai   time,
    jam_selesai time,
    id_guru     char(5),
    id_mapel    char(5)
);

# Buat tabel guru
create table guru
(
    id_guru       char(5) primary key,
    nama          varchar(50),
    tanggal_lahir date,
    jenis_kelamin enum ('perempuan', 'laki-laki'),
    alamat        text
);

# Buat tabel mapel
create table mapel
(
    id_mapel   char(5) primary key,
    nama_mapel varchar(50)
);

# Buat tabel siswa_jadwal
create table siswa_jadwal
(
    siswa_id  char(5),
    jadwal_id char(5),
    primary key (siswa_id, jadwal_id)
);

# Buat relasi antar tabel jadwal_pelajaran dengan tabel guru
alter table jadwal_pelajaran
    add foreign key (id_guru) references guru (id_guru);

# Buat relasi antar tabel jadwal_pelajaran dengan tabel mapel
alter table jadwal_pelajaran
    add foreign key (id_mapel) references mapel (id_mapel);

# Buat relasi antar tabel siswa_jadwal dengan tabel siswa
alter table siswa_jadwal
    add constraint fk_siswa_jadwal
        foreign key (siswa_id) references siswa (id_siswa);

# Buat relasi antar tabel siswa_jadwal dengan tabel jadwal_pelajaran
alter table siswa_jadwal
    add constraint fk_jadwal_siswa
        foreign key (jadwal_id) references jadwal_pelajaran (id_jadwal);

# Entry data
# Insert data ke tabel siswa
insert into mapel(id_mapel, nama_mapel)
values ('M0001', 'Matematika'),
       ('M0002', 'Bahasa Indonesia'),
       ('M0003', 'Bahasa Inggris'),
       ('M0004', 'Fisika'),
       ('M0005', 'Kimia'),
       ('M0006', 'Biologi');

# Insert data ke tabel guru
insert into guru(id_guru, nama, tanggal_lahir, jenis_kelamin, alamat)
values ('G0001', 'Silva', '1998-12-06', 'laki-laki', 'Jl. Bhinneka'),
       ('G0002', 'Umar', '1976-09-08', 'laki-laki', 'Jl. Tunggal'),
       ('G0003', 'Fahdah', '1992-03-03', 'perempuan', 'Jl. Ika'),
       ('G0004', 'Jumadin', '1988-01-09', 'laki-laki', 'Jl. Dahana'),
       ('G0005', 'Ririn', '1978-02-08', 'perempuan', 'Jl. Amartha'),
       ('G0006', 'Rahmat', '1990-05-05', 'laki-laki', 'Jl. Yudha');

# Insert data ke tabel jadwal_pelajaran
INSERT INTO jadwal_pelajaran (id_jadwal, hari, jam_mulai, jam_selesai, id_guru, id_mapel)
VALUES ('J0001', 'Senin', '08:00:00', '09:30:00', 'G0001', 'M0001'),
       ('J0002', 'Selasa', '10:00:00', '11:30:00', 'G0002', 'M0002'),
       ('J0003', 'Rabu', '13:00:00', '14:30:00', 'G0003', 'M0003'),
       ('J0004', 'Kamis', '15:00:00', '16:30:00', 'G0004', 'M0004'),
       ('J0005', 'Jumat', '09:00:00', '10:30:00', 'G0005', 'M0005'),
       ('J0006', 'Sabtu', '11:00:00', '12:30:00', 'G0006', 'M0006');

# Insert data ke tabel siswa
INSERT INTO siswa (id_siswa, nama, tanggal_lahir, jenis_kelamin, alamat, jurusan)
VALUES ('S0001', 'Rizky', '2000-01-01', 'Laki-laki', 'Jl. Raya', 'IPA'),
       ('S0002', 'Linda', '2002-05-10', 'Perempuan', 'Jl. Jaya', 'IPS'),
       ('S0003', 'Ahmad', '2001-09-15', 'Laki-laki', 'Jl. Bahagia', 'IPA'),
       ('S0004', 'Siti', '2003-03-20', 'Perempuan', 'Jl. Damai', 'IPS'),
       ('S0005', 'Budi', '2002-12-05', 'Laki-laki', 'Jl. Sejahtera', 'IPA');

# Insert data ke tabel siswa_jadwal
insert into siswa_jadwal(siswa_id, jadwal_id)
values ('S0001', 'J0001'),
       ('S0002', 'J0002'),
       ('S0003', 'J0001'),
       ('S0004', 'J0003'),
       ('S0005', 'J0002'),
       ('S0001', 'J0004'),
       ('S0002', 'J0005'),
       ('S0003', 'J0006'),
       ('S0004', 'J0001'),
       ('S0001', 'J0003'),
       ('S0002', 'J0004'),
       ('S0003', 'J0005'),
       ('S0004', 'J0006'),
       ('S0005', 'J0001'),
       ('S0001', 'J0002'),
       ('S0002', 'J0003'),
       ('S0003', 'J0004'),
       ('S0004', 'J0005'),
       ('S0005', 'J0006');

# Hasil yang dapat ditampilkan
# Menampilkan data siswa
SELECT *
FROM siswa;

# Menampilkan data guru
SELECT *
FROM guru;

# Menampilkan data mapel
SELECT *
FROM mapel;

# Menampilkan data jadwal_pelajaran
SELECT *
FROM jadwal_pelajaran;

# Menampilkan data siswa yang berjurusan IPA
SELECT * FROM siswa WHERE jurusan = 'IPA';

# Menampilkan data siswa beserta jadwal pelajarannya
SELECT siswa.*, jadwal_pelajaran.*
FROM siswa
         JOIN siswa_jadwal ON siswa.id_siswa = siswa_jadwal.siswa_id
         JOIN jadwal_pelajaran ON siswa_jadwal.jadwal_id = jadwal_pelajaran.id_jadwal;

# Menampilkan data siswa beserta jadwal pelajarannya pada hari senin
SELECT siswa.*
FROM siswa
         JOIN siswa_jadwal ON siswa.id_siswa = siswa_jadwal.siswa_id
         JOIN jadwal_pelajaran ON siswa_jadwal.jadwal_id = jadwal_pelajaran.id_jadwal
WHERE jadwal_pelajaran.hari = 'Senin';

drop database sia;
