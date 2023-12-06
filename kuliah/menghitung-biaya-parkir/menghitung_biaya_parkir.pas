program MenghitungBiayaParkir;
uses crt;
{I.S. : user memasukkan jenis kendaraan, nomor polisi, jam dan menit masuk
        serta jam dan menit keluar}
{F.S. : menampilkan lama parkir dan biaya parkir}

// Kamus :
var
  Jenis          : string;
  NoPol          : string;
  JamMasuk, MenitMasuk, JamKeluar, MenitKeluar, Jam, Menit : integer;
  JamParkir, BiayaParkir : integer;

begin
  textcolor(yellow);
  writeln('Data Kendaraan Parkir');
  writeln('=====================');
  
  textcolor(white);
  // Masukkan jenis kendaraan
  write('Masukkan jenis kendaraan  : ');
  readln(Jenis);
  Jenis := upcase(Jenis); {Untuk tulisan jadi besar semua}

  // Mengecek apakah jenis kendaraan motor atau mobil
  if(Jenis = 'MOTOR') or (Jenis = 'MOBIL')
     then
     begin
          // Memasukkan nomor polisi
          write('Nomor polisi :  '); readln(NoPol);

          // Memasukkan jam dan menit masuk
          write('Jam masuk :  '); readln(JamMasuk);
          write('Menit masuk :  '); readln(MenitMasuk);

          // Memasukkan jam dan menit keluar
          write('Jam keluar : '); readln(JamKeluar);
          write('Menit keluar : '); readln(MenitKeluar);


          // jika menitKeluar < menitMasuk
          if (MenitKeluar < MenitMasuk)
             then
                 MenitKeluar := MenitKeluar + 60;
                 JamKeluar   := JamKeluar - 1;

          // jika jam keluar < jam masuk
          if (JamKeluar < JamMasuk)
             then
                 JamKeluar := JamKeluar + 12;

          // menghitung lama parkir
          Jam       := JamKeluar - JamMasuk;
          Menit     := MenitKeluar - MenitMasuk;
          JamParkir := Jam;

          if (Menit > 0)
             then
                 JamParkir := JamParkir + 1;

          // Menghitung biaya parkir
          if (Jenis = 'MOTOR')
             then
                 BiayaParkir := 1500;
                 if (JamParkir > 1)
                    then
                        BiayaParkir := BiayaParkir + (JamParkir-1) * 500
             else
                 begin
                 if (Jenis = 'MOBIL')
                    then
                        BiayaParkir := 3000;
                        if (JamParkir > 1)
                           then
                               BiayaParkir := BiayaParkir + (JamParkir-1) * 1000;                 end

     end
     else
     begin
          writeln;
          textcolor(yellow);
          write('Jenis kendaraan yang anda masukkan salah!');
     end;
     writeln('Jenis Kendaraan : ', Jenis);
     writeln('Nomor Polisi    : ', NoPol);
     writeln('Jam Masuk       : ', JamMasuk);
     writeln('Menit Masuk     : ', MenitMasuk);
     writeln('Jam Keluar      : ', JamKeluar);
     writeln('Menit Keluar    : ', MenitKeluar);
     writeln('Lama Parkir     : ', JamParki, ' Jam ', Menit, ' Menit ');
     writeln('Harga Bayar     : ', BiayaParkir);
     readln;
end.
