program MenghitungLuasSegitiga;
// I.S. : pengguna memasukkan alas segitiga (A) dan tinggi segitiga (T)
// F.S. : menampilkan hasil luas segitiga
uses crt;
// deklarasi variable di atas begin atau kamus di dalam algoritma
var
   alas, tinggi : integer;
   luasSegitiga : real;
begin
   // memasukkan nilai dari alas dan tinggi segitiga
   write('masukkan alas segitiga    : ');
   readln(alas); // readln adalah input yang ada di pascal.
   write('masukkan tinggi segitiga  : ');
   readln(tinggi);

   // menghitung luas segitiga
   luasSegitiga := (1/2 * alas * tinggi); // operator assignment di pascal adalah :=

   // menampilkan luas segitiga
   write('Luas segitiga nya adalah  : ');
   textcolor(red);
   write(luasSegitiga:0:2); // tanda ":0:2" artinya angka 0 adalah desimal, 2 itu banyaknya desimal.
   readln;
end.
