program LamaWaktuPelunasan;
uses crt;
{I.S. : user memasukkan harga mobil, harga awal pembayaran dan cicilan per bulan}
{F.S. : menampilkan lama cicilan dalam satuan bulan}

// Kamus :
var
   HargaMobil, HargaAwal, Cicilan : integer;
   SisaBayar, LamaCicilan         : real;
   {Harga awal adalah harga yang dibayar pas awal beli}
begin
   textcolor(blue);
   // Memasukkan harga mobil
   write('Masukkan harga mobil           : '); readln(HargaMobil);

   // Memasukkan harga awal bayar
   write('Masukkan harga bayar awal Anda : '); readln(HargaAwal);

   // Memasukkan cicilan perbulan
   write('Masukkan cicilan per bulan     : '); readln(Cicilan);

   // Menentukan sisa harga yang harus dibayar
   SisaBayar     := HargaMobil - HargaAwal;

   // Menentukan lama cicilan
   LamaCicilan   := SisaBayar / Cicilan;

   // Menampilkan lama waktu pelunasan
   textcolor(yellow);
   writeln('INFORMASI PELUNASAN');
   writeln('===================');
   writeln('Harga mobilnya sebesar : Rp ',HargaMobil);
   writeln('Harga awal pembayaran  : Rp ',HargaAwal);
   writeln('Sisa Pembayaran Anda   : Rp ', SisaBayar:0:2);
   writeln('Lama waktu pelunasan   : ', LamaCicilan:0:2 ,' bulan ');
   readln;
end.
