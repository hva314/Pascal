const   max = 100000;

uses    crt;

var     a,b: array[1..max] of longint;
        x,y,z: string;
        i,j,k,temp,n: longint;

function kt(x: longint): boolean;
        begin
                if sqrt(x)=round(sqrt(x)) then kt:= true
                                          else kt:= false;
        end;

BEGIN

        clrscr;

        k:=0;

        for i:=1 to max do
                if kt(i) then
                   begin
                        inc(k);
                        a[k]:=i;
                        b[k]:=i;
                   end;

        for i:=1 to k do
                for j:=1 to k do
                   begin
                        str(a[i],x);
                        str(b[i],y);
                        z:=x+y;
                        val(z,n,temp);
                        if kt(n) then writeln(n,' ');
                   end;

        readln;

END.