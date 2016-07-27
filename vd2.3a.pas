program	hoandoi;

uses	crt;

var		a,b,tam: integer;

BEGIN

	clrscr;
	write('Nhap vao a, b: ');
	readln(a,b);
	
	tam:= a;
	a:= b;
	b:=tam;
	
	writeln('a =',a,'; b = ',b);
	
	readln;

END.
