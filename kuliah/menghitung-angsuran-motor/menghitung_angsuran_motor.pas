{
 Nama   : Farhan Nawwafal Pramudia
 NIM    : 10123470
 KELAS  : IF-4

 Nama   : Dwi Putra Juniargi
 NIM    : 10123132
 KELAS  : IF-4
}
program MenghitungAngsuranMotor;
{I.S. : pengguna memasukkan MerkMotor, HargaMotor, UangMuka dan LamaAngsuran}
{F.S. : menampilkan besarnya angsuran perbulan dan jumlah sisa angsuran pesatu kali
        membayar angsuran }

// Kamus :
var
  MerkMotor,Gagal                                          : string;
  HargaMotor, UangMuka, LamaAngsuran, NomorAngsuran,i      : integer;
  Bunga, HargaTotal, Angsuran, SisaAngsuran                : real;

begin
  // Memasukkan merk motor
  write('Masukkan merk motor    : '); readln(MerkMotor);

  // Memasukkan harga motor
  write('Masukkan harga motor   : '); readln(HargaMotor);

  // Memasukkan uang muka
  write('Masukkan uang muka     : '); readln(UangMuka);

  // Memasukkan lama angsuran
  write('Masukkan lama angsuran : '); readln(LamaAngsuran);

  {validasi lama angsuran}
  if (LamaAngsuran = 11)
     then
         begin
              Bunga       := (2635 / 10000) * HargaMotor;
              HargaTotal  := HargaMotor + Bunga
         end
     else
         begin
              if (LamaAngsuran = 17)
                 then
                     begin
                          Bunga       := (3550 / 10000) * HargaMotor;
                          HargaTotal  := HargaMotor + Bunga
                     end
                 else
                     if (LamaAngsuran = 23)
                        then
                            begin
                                 Bunga       := (3550 / 10000) * HargaMotor;
                                 HargaTotal  := HargaMotor + Bunga
                            end
                        else
                            Gagal := 'Lama angsuran tidak valid';
                            writeln(Gagal);

         end;
  // Mencari nilai angsuran perbulan
  Angsuran         := (HargaTotal - UangMuka) / (LamaAngsuran);

  // Mencari nilai sisa angsuran
  SisaAngsuran     := HargaTotal - UangMuka;

      writeln('|---------------------------|-----------------------|');
      writeln('|     Bayar Angsuran ke     |     Sisa Angsuran     |');
      writeln('|---------------------------|-----------------------|');
  // menghitung sisa angsuran dan jumlah angsuran
  for i := 1 to (LamaAngsuran) do
      begin
           NomorAngsuran := i;
           SisaAngsuran  := SisaAngsuran - Angsuran;
           writeln('|           ' ,NomorAngsuran , '                       ', SisaAngsuran:0:2);
           writeln('|---------------------------|-----------------------|');
     end;
   readln;
end.
