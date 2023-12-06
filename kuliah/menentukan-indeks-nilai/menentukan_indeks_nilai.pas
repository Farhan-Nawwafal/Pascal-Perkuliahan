program MenentukanIndeksNilai;
uses crt;
{I.S. : user memasukkan nilai}
{F.S. : menampilkan indeks yang didapat dari nilai}

// Kamus :
var
   Nilai   : integer;
   Indeks  : string;
begin
   // Memasukkan nilai
   write('Masukkan nilai Anda : '); readln(Nilai);

   // menentukan indeks nilai menggunakan nested if
   {if (Nilai >= 80) and (Nilai <= 100)
      then
          Indeks := 'A'
      else
          if (Nilai >= 70) and (Nilai < 80)
             then
                 Indeks := 'B'
             else
                 if (Nilai >= 60) and (Nilai < 70)
                    then
                        Indeks := 'C'
                    else
                        if (Nilai >= 50) and (Nilai < 60)
                           then
                               Indeks := 'D'
                           else
                               if (nilai >= 0) and (Nilai <50)
                                  then
                                      Indeks := 'E'
                                  else
                                      Indeks := 'Nilai harus antara 0 - 100!';}

      // Menentukan indeks nilai menggunakan depend on
      case (Nilai) of // kalo pake case of, variabel nya harus tipe tunggal.
           80..100 : Indeks := 'Index kamu A';
           70..79  : Indeks := 'Index kamu B';
           60..69  : Indeks := 'Index kamu C';
           50..59  : Indeks := 'Index kamu D';
           0..49   : Indeks := 'Index kamu E';
           else
               Indeks := 'Nilai harus antara 0 - 100!';
      end; // end case
      // Menampilkan indeks nilai
      textcolor(yellow);
      writeln('Indeks nilai kamu   : ', Indeks);
      readln;
end.
