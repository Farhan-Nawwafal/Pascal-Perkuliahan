program TukarBilangan;
uses crt;
{I.S. : user memasukkan 3 buah bilangan}
{F.S. : menampilkan hasil penukaran}

// Kamus :
var
   x, y : integer;
   z    : integer;
   temp : integer;
begin
   // Menginput 3 bilangan
   write('Masukkan bilangan pertama : ');readln(x);
   write('Masukkan bilangan kedua   : ');readln(y);
   write('Masukkan bilangan ketiga  : ');readln(z);

   // Menampilkan bilangan sebelum ditukar
   writeln;
   textcolor(yellow);
   writeln('Sebelum pertukaran : ', x , ' , ' , y , ' , ' , z);

   // Menukar ketiga bilangan x,y,z menjadi y,z,x
   temp := y;
   y    := x;
   x    := temp;

   temp := z;
   z    := y;
   y    := temp;

   // Menampilkan setelah pertukaran.
   writeln('Sesudah pertukaran : ', x , ' , ' , y , ' , ' , z);
   readln;
end.
