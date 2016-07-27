program	hoandoi;

uses	crt;

var		a,b: integer;

BEGIN

	clrscr;
	write('Nhap vao a, b: ');
	readln(a,b);
	
	a:= a+b;
	b:= a-b;
	a:= a-b;
	
	writeln('a =',a,'; b = ',b);
	
	readln;

END.
