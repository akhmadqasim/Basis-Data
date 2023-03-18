show databases;
use informatika;
create table daftar_jurusan
(
    kode_jurusan     char(5),
    nama_jurusan     varchar(20),
    alamat           varchar(100),
    jumlah_mahasiswa smallint
);
alter table daftar_jurusan modify jumlah_mahasiswa mediumint;
desc daftar_jurusan;
alter table daftar_jurusan change alamat alamat_jurusan varchar(100);
desc daftar_jurusan;
alter table daftar_jurusan rename to tabel_jurusan;
desc daftar_jurusan;
desc tabel_jurusan;
rename table tabel_jurusan to daftar_jurusan;
desc daftar_jurusan;
alter table daftar_jurusan add ketua_jurusan varchar(50);
desc daftar_jurusan;
alter table daftar_jurusan drop ketua_jurusan;
desc daftar_jurusan;

# Essay nomor 1
CREATE TABLE kegiatan_perkuliahan (
  id smallint PRIMARY KEY,
  dosen varchar(50) NOT NULL,
  mata_kuliah varchar(50) NOT NULL,
  kelas smallint NOT NULL,
  jumlah_mahasiswa smallint NOT NULL,
  jam_ke smallint NOT NULL,
  hari varchar(10) NOT NULL
);

# Essay nomor 2