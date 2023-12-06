program PenggajianKaryawan;
{I.S. : user masukkan bulan, tahun, tiga buah NIK, nama karyawan dan gaji pokok}
{F.S. : menampilkan pajak, tunjangan, gajiBersih per karyawan beserta totalGaji}
uses crt;

// Kamus :

var
   bulan, tahun, NIK1, NIK2, NIK3, nama1, nama2, nama3 : string;
   gajiPokok1, gajiPokok2, gajiPokok3 : integer;
   pajak1, pajak2, pajak3, tunjangan1, tunjangan2, tunjangan3 : real;
   gajiBersih1, gajiBersih2, gajiBersih3, totalGaji : real;
begin
     // memasukkan bulan dan tahun penggajian
     textcolor(blue);
     write('Bulan : '); readln(bulan);
     write('Tahun : '); readln(tahun);

     // memasukkan NIK, nama karyawan dan gaji pokok 3 karyawan
     textcolor(yellow);
     writeln('Memasukkan Tiga Data Karyawan');
     writeln('-----------------------------');

     textcolor(red);
     writeln('<< Data karyawan ke-1 >>');
     write('NIK1               : '); readln(NIK1);
     write('Nama Karyawan      : '); readln(nama1);
     write('Gaji pokok 1       : Rp'); readln(gajiPokok1);

     writeln;
     writeln('<< Data karyawan ke-2 >>');
     write('NIK2               : '); readln(NIK2);
     write('Nama Karyawan      : '); readln(nama2);
     write('Gaji pokok 2       : Rp'); readln(gajiPokok2);

     writeln;
     writeln('<< Data karyawan ke-3 >>');
     write('NIK               : '); readln(NIK3);
     write('Nama Karyawan      : '); readln(nama3);
     write('Gaji pokok 3       : Rp'); readln(gajiPokok3);

     // menghitung pajak per karyawan
     pajak1 := (0.1 * gajiPokok1);
     pajak2 := (0.1 * gajiPokok2);
     pajak3 := (0.1 * gajiPokok3);

     // menghitung tunjangan per karyawan
     tunjangan1 := (0.2 * gajiPokok1);
     tunjangan2 := (0.2 * gajiPokok2);
     tunjangan3 := (0.2 * gajiPokok2);

     // menghitung gaji bersih per karyawan
     gajiBersih1 := (gajiPokok1 + tunjangan1 - pajak1);
     gajiBersih2 := (gajiPokok2 + tunjangan2 - pajak2);
     gajiBersih3 := (gajiPokok3 + tunjangan3 - pajak3);

     // menghitung total gaji yang harus dikeluarkan perusahaan
     totalGaji := (gajiBersih1 + gajiBersih2 + gajiBersih3);

     { menampilkan pajak1, pajak2, pajak3, tunjangan1, tunjangan2, tunjangan3,
       gajiBersih1, gajiBersih2, gajiBersih3, totalGaji }
     writeln;
     writeln('<< Data Karyawan ke-1 : >>');
     writeln('Nama karyawan : ', nama1);
     writeln('Pajaknya      : Rp', pajak1:0:0);
     writeln('Tunjangan     : Rp', tunjangan1:0:0);

     writeln;
     writeln('<< Data Karyawan ke-2 : >>');
     writeln('Nama karyawan : ', nama2);
     writeln('Pajaknya      : Rp', pajak2:0:0);
     writeln('Tunjangan     : Rp', tunjangan2:0:0);

     writeln;
     writeln('<< Data Karyawan ke-3 : >>');
     writeln('Nama karyawan : ', nama3);
     writeln('Pajaknya      : Rp', pajak3:0:0);
     writeln('Tunjangan     : Rp', tunjangan3:0:0);

     writeln;
     totalGaji := gajiBersih1 + gajiBersih2 + gajiBersih3;
     writeln('Total gaji yang harus dikeluarkan : Rp', totalGaji:0:0);
     readln;
end.
