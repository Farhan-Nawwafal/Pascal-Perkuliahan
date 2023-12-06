program KonversiJarakTempuh;
uses crt;
{I.S. : user memasukkan jarak tempuh (Jarak)}
{F.S. : menampilkan hasil konversi}

// Kamus :
var
   Jarak, Sisa      : integer;
   KiloMeter, Meter : integer;
   cm               : integer;
begin
   // Memasukkan jarak tempuh
   write('Masukkan jarak tempuh dalam satuan cm : ');readln(Jarak);

   // Konversi ke kilometer
   KiloMeter := Jarak div 100000;
   Sisa      := Jarak mod 100000;

   // Konversi ke meter
   Meter     := Sisa div 100;

   // Koversi ke cm
   cm        := Sisa mod 100;

   // Menampilkan hasil konversi
   textcolor(yellow);
   writeln('--------------');
   writeln('HASIL KONVERSI');
   writeln('--------------');
   writeln('Jarak tempuh : ', Jarak , ' cm ');
   writeln('Konversi     : ', KiloMeter , ' km + ', Meter , ' m + ', cm , ' cm ');

   readln;
end.
