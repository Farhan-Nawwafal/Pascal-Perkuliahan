program NamaDanUmur;
uses crt;

var
   umur : shortint;
   nama : string;
begin
   // Memasukkan nama user
   write('Masukkan nama kamu deck   : ');
   readln(nama);

   // Memasukkan umur user
   write('Masukkan umur kamu deck : ');
   readln(umur);

   // Menampilkan data user
   textcolor(yellow);
   writeln('Hai ', upcase(nama) , ', umur kamu ', umur , ' tahun ');
   readln;
end.
