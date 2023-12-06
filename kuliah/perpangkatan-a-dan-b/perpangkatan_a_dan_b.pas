program Perpangkatan_A_dan_B;
uses crt;
{I.S. : user memasukkan nilai a dan b}
{F.S. : menampilkan hasil dari perpangkatan a dan b}

// Kamus :
var
   a,b, Pangkat, i : integer;

begin
   // Masukkan nilai a dan b
   write('Masukkan nilai a : '); readln(a);
   write('Masukkan nilai b : '); readln(b);

   // validasi nilai b
   while (b < 0) do
   begin
        gotoxy(25,2); clreol; // x = kolom, y = baris
        textcolor(yellow);
        writeln('Harga B tidak boleh negatif, ulangi.. tekan enter!!');
        readln;

        gotoxy(20,2); clreol;

        // memasukkan harga B kembali
        textcolor(white); readln(b);
   end; // endwhile
   {Hitung pangkat a dan b}
   if (b = 0)
      then
          Pangkat := 1
      else
          begin
          if (b = 1)
             then
                 Pangkat := a
             else
             begin
                 Pangkat := a;
                 for i   := 2 to b do
                 Pangkat := Pangkat * a;
             end;// endif
          end;
   {menampilkan hasil a pangkat b}
   writeln('Nilai a             = ', a);
   writeln('Nilai b             = ', b);
   writeln('Hasil a pangkat b   = ', Pangkat);
   readln;
end.
