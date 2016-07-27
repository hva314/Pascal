program vd2;

uses    crt;

var
   a,b,goc,s: real;

BEGIN

  clrscr;

  write('Nhap canh a: '); readln(a);
  write('Nhap canh b: '); readln(b);
  write('Nhap goc xen giua hai canh: '); readln(goc);

  s := a*b*sin(goc)/2;

  writeln('Dien tich tam giac la: ',s:0:2);
  readln;

END.
