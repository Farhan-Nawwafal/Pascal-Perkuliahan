program UangPecahan;
uses crt;
{I.S. : user memasukkan duit pembayaran (Bayar)}
{F.S. : menampilkan uang kembalian pecahan}

// Kamus :
var
   Lembar1000, Lembar500, Lembar100  : integer;
   Lembar50, Lembar25, Sisa, Bayar   : integer;
begin
   // Memasukkan uang bayar
   write('Masukkan uang pembayaran Anda : ');readln(Bayar);

   // Menentukan uang pecahan 1000
   Lembar1000 := Bayar div 1000;
   Sisa       := Bayar mod 1000;

   // Menentukan uang pecahan 500
   Lembar500  := Sisa div 500;
   Sisa       := Sisa mod 500;

   // Menentukan uang pecahan 100
   Lembar100  := Sisa div 100;
   Sisa       := Sisa mod 100;

   // Menentukan uang pecahan 50
   Lembar50   := Sisa div 50;
   Sisa       := Sisa mod 50;

   // Menentukan uang pecahan 25
   Lembar25   := Sisa div 25;
   Sisa       := Sisa mod 25;

   // Menampilkan uang pecahan
   textcolor(yellow);
   writeln('     PEMBAYARAN');
   writeln('-------------------');
   writeln('Uang Pembayaran : ', Bayar);
   writeln('Pecahan 1000    : ', Lembar1000, ' Lembar ');
   writeln('Pecahan 500     : ', Lembar500, ' Lembar ');
   writeln('Pecahan 100     : ', Lembar100, ' Lembar ');
   writeln('Pecahan 50      : ', Lembar50, ' Lembar ');
   writeln('Pecahan 25      : ', Lembar25, ' Lembar ');
   writeln('Sisa uang       : Rp', Sisa);

   readln;
end.
