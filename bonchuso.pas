uses crt;

var
        i :word;
        a,b,b1,b2,b3,b4 :integer;
        s :longint;
        x: boolean;

BEGIN

        repeat
                clrscr;
                writeln('Nhap vao hai so a, b co 4 chu so: ');
                readln(a,b);
                x:= (a>=1000) and (a<=9999) and (b>=1000) and (b<=9999);
                if not x then writeln('So ban nhap khong dung yeu cau!');
                readln;
        until x;

        b1 := b mod 10;
        b2 := (b mod 100) div 10;
        b3 := (b mod 1000) div 100;
        b4 := b div 1000;

        s := a*b;
        write('   Dang xu li');
        for i:=1 to 5 do
                begin
                        write('.');
                        delay(300);
                end;
        writeln;
        writeln;

        writeln(a:11);
        writeln('  x',b:8);
        writeln('   -----------');
        writeln(b1*a:11);
        writeln(b2*a:10);
        writeln(b3*a:9);
        writeln(b4*a:8);
        writeln('   -----------');
        writeln(s:11);

        readln;

END.
