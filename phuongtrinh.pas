uses crt;

var
        a,b,c,delta: real;
        i: integer;

BEGIN

        clrscr;
        write('Nhap he so a: '); readln(a);
        write('Nhap he so b: '); readln(b);
        write('Nhap he so c: '); readln(c);



        if a <> 0 then
           begin
              delta := sqr(b) - 4*a*c;
              writeln;

              writeln('Dang xu ly');
              writeln;

              for i:= 1 to 50 do
                begin
                        write('|');
                        delay(100);
                end;
              delay(500);
              writeln;
              writeln;

              if delta > 0 then
                 begin
                    writeln('Phuong trinh co hai nghiem phan biet');
                    writeln('x1 = ',(-b-sqrt(delta))/(2*a):0:2);
                    writeln('x2 = ',(-b+sqrt(delta))/(2*a):0:2);
                 end;

              if delta = 0 then
                 begin
                    writeln('Phuong trinh co nghiem kep');
                    writeln('x1 = x2 = ', (-b)/(2*a):0:2);
                 end;

              if delta < 0 then writeln('Phuong trinh vo nghiem');

           end

        else writeln('a khac 0');

        readln;

END.