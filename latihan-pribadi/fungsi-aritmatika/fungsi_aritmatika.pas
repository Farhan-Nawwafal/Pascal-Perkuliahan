program FungsiAritmatika;
uses crt;
var
   x     : integer;
   a,b   : real;
begin
  textcolor(blue);
  a := 653.993;
  x := round(a);
  writeln('Nilai x : ',x);
  b := int(a);
  writeln('Nilai b method int(a) : ', b:0:2);
  b := trunc(int(a));
  writeln('Nilai b method trunc dan int : ',b:0:0);
  b := frac(a);
  writeln('Nilai b method frac a : ', b:0:3);
  b := frac(a) + frac(a+5); // meskipun frac(a+5), ga ngaruh apa-apa
  writeln('Nilai b method frac(a+5)+ frac(a) : ', b);

  readln;
end.
