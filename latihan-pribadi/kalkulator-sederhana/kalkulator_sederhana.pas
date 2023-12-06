program KalkulatorSederhana;
uses crt;
{I.S. : user memasukkan bilangan 1,2 dan tanda operasi aritmatika }
{F.S. : menampilkan hasil perhitungan                             }

// Kamus :
var
   Bil1, Bil2       : integer;
   Hasil            : real;
   Operasi          : char;
begin
   // Memasukkan bilangan 1 dan 2
   write('Masukkan bilangan pertama : '); readln(Bil1);
   write('Masukkan bilangan kedua   : '); readln(Bil2);

   // Memasukkan tanda operasi aritmatika
   write('Masukkan tanda operasi    : '); readln(Operasi);

   // Mencari hasil
   case (Operasi) of
        '+' : Hasil := Bil1 + Bil2;
        '-' : Hasil := Bil1 - Bil2;
        '*' : Hasil := Bil1 * Bil2;
        '/' : Hasil := Bil1 / Bil2;
        else
            writeln('Masukkan tanda operasi aritmatika yang valid!');
   end; // endcase

   textcolor(yellow); writeln;
   // Menampilkan hasil
   writeln('MENAMPILKAN HASIL PERHITUNGAN');
   writeln('-----------------------------');
   writeln('Bilangan 1 : ', Bil1);
   writeln('Bilangan 2 : ', Bil2);
   writeln('Operasi    : ', Operasi);
   writeln('Hasil      : ', Hasil:0:1);
   writeln('-----------------------------');

   readln;
end.
