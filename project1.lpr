program project1;

uses    crt, chunhat, chuso, dientich, phuongtrinh, solonnhat, tongchuso, vd1,
  bonchuso, vd2;

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
