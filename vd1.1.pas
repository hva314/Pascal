program vd1;

const   pi = 3.1415;

var
  a: word;
  S,S1: real;

BEGIN

  clrscr;

  write('Nhap so a: '); readln(a);

  S1 := pi*a*a;
  S := S1/2;

  writeln('Dien tich phan to den la: ',S:0:2);
  readln;

END.
