program PengurutanBilangan;
uses crt;
{I.S. : user memasukkan bilangan pertama, kedua dan ketiga}
{F.S. : menampilkan hasil pengurutan}

//Kamus :
var
   Bil1, Bil2       : integer;
   Bil3, temp       : integer;
begin
   // Memasukkan bilangan 1, bilangan 2 dan bilangan 3
   write('Masukkan bilangan pertama : '); readln(Bil1);
   write('Masukkan bilangan kedua   : '); readln(Bil2);
   write('Masukkan bilangan ketiga  : '); readln(Bil3);

   // Menampilkan bilangan sebelum diurutkan
   writeln;
   textcolor(yellow);
   writeln('Sebelum diurutkan  : ', Bil1 , ' , ' , Bil2 , ' , ' , Bil3);

   // Mengurutkan bilangan
   if (Bil1 > Bil2)
      then
          begin
               temp := Bil2;
               Bil2 := Bil1;
               Bil1 := temp;
               if (Bil1 > Bil3)
                  then
                      begin
                           temp := Bil3;
                           Bil3 := Bil1;
                           Bil1 := temp;
                           if (Bil2 > Bil3)
                              then
                                  begin
                                       temp := Bil3;
                                       Bil3 := Bil2;
                                       Bil2 := temp;
                                  end;
                      end
                  else
                      if (Bil2 > Bil3)
                         then
                             begin
                                  temp := Bil3;
                                  Bil3 := Bil2;
                                  Bil2 := temp;
                             end;
          end
      else
          if (Bil2 > Bil3)
             then
                 begin
                      temp := Bil3;
                      Bil3 := Bil2;
                      Bil2 := temp;
                      if (Bil1 > Bil2)
                         then
                             begin
                                  temp := Bil2;
                                  Bil2 := Bil1;
                                  Bil1 := temp;
                             end;
                 end;
   // Menampilkan bilangan setelah diurutkan ascending.
   textcolor(yellow);
   writeln('Setelah pengurutan : ', Bil1 , ' , ' , Bil2 , ' , ' , Bil3);
   readln;
end.
