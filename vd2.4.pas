program	shcn;

var	file1,file2: text;
        a,b,s: real;

BEGIN

	assign(file1,'hcn.inp'); reset(file1);
	readln(file1,a,b);
	close(file1);
	
	s:= a*b;
	
	assign(file2,'hcn.out'); rewrite(file2);
	writeln(file2,s:0:2);
	close(file2);
	
END.

