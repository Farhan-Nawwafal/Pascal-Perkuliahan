program KonversiCelciusFahrenheit;
uses crt;
{I.S. : user memasukkan nilai celcius}
{F.S. : menampilkan hasil konversi ke fahrenheit}

// Kamus :
var
   Celcius          : integer;
   Fahrenheit       : real;
begin
   // Memasukkan nilai celcius
   write('Masukkan nilai celcius : '); readln(Celcius);

   // Konversi satuan celcius ke fahrenheit
   Fahrenheit := (Celcius * (9/5)) + 32;

   textcolor(yellow);
   // Menampilkan hasil konversi ke fahrenheit
   write('Hasil konversi dari celcius ', Celcius);
   write(' ke fahrenheit adalah : ', Fahrenheit:1:2, ' derajat F ');
   readln;
end.
