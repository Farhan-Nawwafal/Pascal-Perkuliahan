program UpahKaryawan;
uses crt;
{I.S. : user memasukkan nama karyawan, upah dan jam kerja selama 1 minggu}
{F.S. : menampilkan nama karyawan, jam kerja, jam lembur dan upah total karyawan}

// Kamus :
var
   NamaKaryawan               : string;
   Upah,JamLembur             : integer;
   JamKerja                   : integer; {Jam kerja dalam 1 minggu}
   UpahLembur,UpahTotal       : integer;
begin
   textcolor(yellow);
   writeln('INPUT DATA KARYAWAN');
   writeln('===================');
   // Memasukkan nama karyawan
   write('Masukkan nama karyawan : '); readln(namaKaryawan);

   // Memasukkan upah perjam
   write('Masukkan upah per jam  : '); readln(Upah);

   // Memasukkan jam kerja dalam seminggu
   write('Masukkan jam kerja     : '); readln(JamKerja);

   // Menentukan upah total
   UpahTotal     := (Upah * JamKerja); {Inisialisasi}

   // Jam kerja lebih dari 40
   if (JamKerja > 40)
      then
          JamLembur  := JamKerja - 40;
          UpahLembur := (2 * Upah * JamLembur);
          UpahTotal  := (Upah * (JamKerja - JamLembur)) + UpahLembur;

   // Menampilkan hasil data karyawan
   textcolor(blue);
   writeln('DATA KARYAWAN');
   writeln('=============');
   writeln('Nama                       : ', upcase(NamaKaryawan));
   writeln('Jam kerja dalam 1 minggu   : ', JamKerja);
   writeln('Upah total yang diterima   : Rp', UpahTotal);
   readln;
end.
