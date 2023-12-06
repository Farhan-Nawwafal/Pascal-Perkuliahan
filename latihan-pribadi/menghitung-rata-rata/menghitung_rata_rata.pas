program MenghitungRataRataLimaBilangan;
uses crt;
{I.S. : user memasukkan nilai dari variabel Bil1, Bil2, Bil3, Bil4, dan Bil5}
{F.S. : menampilkan hasil rata-rata}

// Kamus :
var
   Bil1, Bil2, Bil3, Bil4, Bil5     : integer;
   JumlahData                       : integer;
   BanyakData                       : integer;
   RataRata                         : real;
begin
   // Memasukkan nilai Bil1
   write('Masukkan nilai pertama : '); readln(Bil1);

   // Memasukkan nilai Bil2
   write('Masukkan nilai kedua   : '); readln(Bil2);

   // Memasukkan nilai Bil3
   write('Masukkan nilai ketiga  : '); readln(Bil3);

   // Memasukkan nilai Bil4
   write('Masukkan nilai keempat : '); readln(Bil4);

   // Memasukkan nilai Bil5
   write('Masukkan nilai kelima  : '); readln(Bil5);

   // Menghitung penjumlahan 5 nilai
   JumlahData := (Bil1 + Bil2 + Bil3 + Bil4 + Bil5);

   // Menentukan banyak data
   BanyakData := 5;

   // Menghitung rata-rata
   RataRata   := (JumlahData / BanyakData);

   textcolor(blue);
   writeln('Hasil Rata-Rata');
   writeln('===============');

   textcolor(yellow);
   // Menampilkan hasil dari rata-rata
   writeln('Nilai dari bilangan pertama  : ', Bil1);
   writeln('Nilai dari bilangan kedua    : ', Bil2);
   writeln('Nilai dari bilangan ketiga   : ', Bil3);
   writeln('Nilai dari bilangan keempat  : ', Bil4);
   writeln('Nilai dari bilangan kelima   : ', Bil5);
   writeln('Hasil rata-ratanya adalah    : ', RataRata:0:2);

   readln;
end.
