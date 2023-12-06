program MenentukanGenapGanjil;
uses crt;
{I.S. : user memasukkan sebuah nilai ke dalam variabel bilangan}
{F.S. : menampilkan keterangan "Bilangan genap" atau "Bilangan ganjil"}

//Kamus :
var
   Bilangan : integer;
   Keterangan : string;
begin
   //Memasukkan sebuah angka ke dalam variable bilangan
   write('Masukkan sebuah bilangan : ');
   readln(Bilangan);

   // Menentukan bilangan genap atau ganjil
   if (Bilangan mod 2 = 0) // Kondisi if gaboleh pake titik koma di akhir
      then
          Keterangan := 'Bilangan genap'
          {kalo di bawah ada else, di atas jangan ada titik koma}
      else
           Keterangan := 'Bilangan ganjil';

   // Menampilkan hasil dari keterangan
   textcolor(yellow); write(Bilangan);
   textcolor(white); write(' adalah ');
   textcolor(yellow); write(Keterangan);
   readln;
end.
