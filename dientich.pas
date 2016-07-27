uses crt;

var     a,b,c,p,s: real;
        x,y: boolean;

BEGIN

        clrscr;

        writeln('Nhap vao do dai 3 canh tam giac: ');readln(a,b,c);

        x := (a>0) and (b>0) and (c>0);
        y := (a+b>c) and (a+c>b) and (b+c>a);

        if x and y then

                begin
                        p := (a+b+c)/2;
                        s := sqrt(p*(p-a)*(p-b)*(p-c));
                        writeln('Dien tich tam giac la: ',s:0:5);
                end

        else writeln('3 so vua nhap khong phai la 3 canh tam giac!');

        readln;

END.