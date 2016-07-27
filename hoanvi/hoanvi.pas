program hoanvi;

const
        input = 'HOANVI.INP';
        output = 'HOANVI.OUT';

var
        x: array[1..100] of integer;
        n,k,i,j,a,b: integer;
        f: text;

procedure swap(var x,y: integer);

var     temp: integer;

        begin
                temp:=x;
                x:=y;
                y:=temp;
        end;

BEGIN

        assign(f,input); reset(f);
        readln(f,n);
        close(f);

        assign(f,output); rewrite(f);

        for i:=1 to n do x[i]:=i;

        repeat
                for i:=1 to n do write(f,x[i],' ');
                writeln(f);

                i:=n-1;
                while (i>0) and (x[i] > x[i+1]) do dec(i);
                if i>0 then
                        begin
                                k:=n;
                                while x[k] < x[i] do dec(k);
                                swap(x[k],x[i]);
                                a:=i+1;
                                b:=n;

                                while a<b do
                                        begin
                                                swap(x[a],x[b]);
                                                inc(a);
                                                dec(b);
                                        end;
                        end;
        until i=0;
        close(f);

END.
