program Penjumlahan1Sampai10;
uses crt;
{I.S. : diberikan harga pencacah (i) = 10 dan hasil = 0}
{F.S. : menampilkan hasil penjumlahan dari angka 1+2+...+10}

// Kamus :
var
   Hasil, i : integer; {Hasil = hasil penjumlahan, i = pencacah atau variabel
                       counter}
begin

   //-------------------------------------------------------------------------//

   // pengulangan for do positif
   // Inisialisasi var hasil
   Hasil := 0;

   // menjumlahkan angka 1 sampai 10
   write('Hasil = ');
   for i := 1 to 10 do
   begin
       textcolor(i);
       write(i);
       if (i < 10)
          then
          begin
              textcolor(white);
              write(' + ');
          end; // end if
       Hasil := Hasil + i;
   end; // end for

   writeln;

   // menampilkan hasil penjumlahan
   textcolor(white);
   writeln('      = ',Hasil, ' (for do positif)');
   writeln;

   //-------------------------------------------------------------------------//

   // pengulangan for do negatif
   // Inisialisasi var hasil
   Hasil := 0;

   // menjumlahkan angka 1 sampai 10
   write('Hasil = ');
   for i := 10 downto 1 do
   begin
       textcolor(i);
       write(i);
       if (i > 1)
          then
          begin
              textcolor(white);
              write(' + ');
          end; // end if
       Hasil := Hasil + i;
   end; // end for

   writeln;

   // menampilkan hasil penjumlahan
   textcolor(white);
   writeln('      = ',Hasil, ' (for do negatif)');
   writeln;

   //-------------------------------------------------------------------------//

   // pengulangan while do positif
   // Inisialisasi var hasil
   Hasil := 0;
   i     := 1;
   // menjumlahkan angka 1 sampai 10
   write('Hasil = ');
   while (i <= 10) do
   begin
       textcolor(i);
       write(i);
       if (i < 10)
          then
          begin
              textcolor(white);
              write(' + ');
          end; // end if
       Hasil := Hasil + i;
       i     := i + 1;
   end; // end while

   writeln;

   // menampilkan hasil penjumlahan
   textcolor(white);
   writeln('      = ',Hasil, ' (while do positif)');
   writeln;

   //-------------------------------------------------------------------------//

   // pengulangan while do negatif
   // Inisialisasi var hasil
   Hasil := 0;
   i     := 10;
   // menjumlahkan angka 1 sampai 10
   write('Hasil = ');
   while (i >= 1) do
   begin
       textcolor(i);
       write(i);
       if (i > 1)
          then
          begin
              textcolor(white);
              write(' + ');
          end; // end if
       Hasil := Hasil + i;
       i     := i - 1;
   end; // end for

   writeln;

   // menampilkan hasil penjumlahan
   textcolor(white);
   writeln('      = ',Hasil, ' (while do negatif)');
   writeln;

   //-------------------------------------------------------------------------//

   // pengulangan repeat until positif
   // Inisialisasi var hasil
   Hasil := 0;
   i     := 1;
   // menjumlahkan angka 1 sampai 10
   write('Hasil = ');
   repeat
       textcolor(i);
       write(i);
       if (i < 10)
          then
          begin
              textcolor(white);
              write(' + ');
          end; // end if
       Hasil := Hasil + i;
       i     := i + 1;
   until (i > 10);
   writeln;

   // menampilkan hasil penjumlahan
   textcolor(white);
   writeln('      = ',Hasil, ' (repeat until positif)');
   writeln;

   //-------------------------------------------------------------------------//

   // pengulangan repeat until negatif
   // Inisialisasi var hasil
   Hasil := 0;
   i     := 10;
   // menjumlahkan angka 1 sampai 10
   write('Hasil = ');
   repeat
       textcolor(i);
       write(i);
       if (i > 1)
          then
          begin
              textcolor(white);
              write(' + ');
          end; // end if
       Hasil := Hasil + i;
       i     := i - 1;
   until (i < 1);
   writeln;

   // menampilkan hasil penjumlahan
   textcolor(white);
   writeln('      = ',Hasil, ' (repeat until negatif)');
   writeln;
   readln;
end.
