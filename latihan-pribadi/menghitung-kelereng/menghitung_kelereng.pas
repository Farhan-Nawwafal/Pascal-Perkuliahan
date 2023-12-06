program MencariKelereng;
uses crt;
{I.S. : user memasukkan banyak kelereng soni (KSoni)}
{F.S. : menampilkan kelereng Adi (KAdi), kelereng Anis (KAnis),
        kelereng Luki (KLuki), dan kelereng Soni (KSoni)}

// Kamus :
var
   KSoni, KAdi, KAnis, KLuki : integer;
begin
   // Memasukkan banyak kelereng milik Soni
   write('Masukkan banyak kelereng Soni : '); readln(KSoni);

   // Memformulasikan kelereng adi
   KAdi  := KSoni - 10;


   // Memformulasikan kelereng Anis
   KAnis := 2 * (KSoni + KAdi);

   // Memformulasikan kelereng Luki
   KLuki := (KSoni + KAdi + KAnis) - 5;

   // Menampilkan data kelereng
   textcolor(blue);
   writeln('Data Kelereng Adi, Anis dan Luki');
   writeln('=================================');

   textcolor(yellow);
   // Menampilkan kelereng Soni
   writeln('Kelereng Soni     : ', KSoni , ' Buah ');

   // Menampilkan kelereng Adi
   writeln('Kelereng Adi      : ', KAdi , ' Buah ');

   // Menampilkan kelereng Anis
   writeln('Kelereng Anis     : ', KAnis , ' Buah ');

   // Menampilkan kelereng Luki
   writeln('Kelereng Luki     : ', KLuki , ' Buah ');

   readln;
end.
