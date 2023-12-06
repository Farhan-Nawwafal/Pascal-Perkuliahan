program KonversiSatuan;
uses crt;
{I.S. : }
{F.S. : }

// Kamus :
var
   Panjang                      : integer;
   Yard, Kaki, Inchi            : real;
begin
   // Memasukkan panjang benda dalam satuan meter
   write('Masukkan panjang benda : ');readln(Panjang);

   // Konversi satuan ke yard
   Yard  := Panjang / 0.9144;

   // Konversi satuan ke kaki
   Kaki  := Panjang / 0.3048;

   // Konversi satuan ke inchi
   Inchi := Panjang / 0.0254;

   // Menampilkan hasil konversi
   writeln;
   textcolor(yellow);
   writeln('HASIL KONVERSI');
   writeln('--------------');
   writeln('Panjang  : ', Panjang , ' m ');
   writeln('Konversi : ', Yard:0:2 , ' yard + ', Kaki:0:2 , ' kaki + ', Inchi:0:2 , ' inchi ');

   readln;
end.
