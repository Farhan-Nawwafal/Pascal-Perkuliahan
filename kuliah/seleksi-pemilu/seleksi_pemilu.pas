program SeleksiPemilu;
uses crt;
{I.S. :}
{F.S. :}

// Kamu :
var
   Umur    : integer;
   Menikah : char;   {Inputan harus berupa 'Y' atau 'T'}
begin
   // Memasukan umur
   write('Masukkan umur kamu : '); readln(Umur);
   // validasi umur
   if (Umur < 17)
      then
      begin
               // Masukkan status menikah
               write('Apakah kamu sudah menikah ? (y/t) : '); readln(Menikah);
               Menikah := upcase(Menikah);
               {if (Menikah = 'Y')
                  then
                      write('Anda boleh ikut pemilu')
                  else
                      if(Menikah = 'T')
                         then
                             write('Anda belum boleh ikut pemilu')
                         else
                             write('Masukkan nilai menikah itu y atau t saja!');}

         // penyederhanaan nested if
         case (Menikah) of
           'Y' : write('Anda boleh ikut pemilu');
           'T' : write('Anda belum boleh ikut pemilu');
           else
               write('Hanya boleh diisi "Y" atau "T"');
         end; //endcase
      end
      else
          write('Anda boleh ikut pemilu');
     readln;
end.
