uses crt;
var     n,n1,n2,n3,n4 :integer;

BEGIN

        clrscr;
        write('Nhap vao so n co 4 chu so: '); readln(n);

        if (n>=1000) and (n<=9999) then
                begin
                        n1 := n div 1000;
                        n2 := (n mod 1000) div 100;
                        n3 := (n mod 100) div 10;
                        n4 := n mod 10;
                        writeln('Tong cac chu so cua n la: ',n1+n2+n3+n4);
                end
        else
                writeln('Chi duoc nhap so co 4 chu so!');

        readln;

END.