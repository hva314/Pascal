uses crt;


var     a : array [1..1000000] of longint;
        n,max,i : longint;

BEGIN

        clrscr;
        writeln('Nhap so chu so: ');readln(n);

        for i:=1 to n do
                begin
                        writeln('Nhap so a',i,':');
                        readln(a[i]);
                end;

        max := a[1];

        for i:=1 to n do if max < a[i] then max := a[i];

        Writeln('So lon nhat la ',max);
        readln;



END.