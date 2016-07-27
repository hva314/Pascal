program chinhhoplap;

const
        input = 'CHINHHOP.INP';
        output = 'CHINHHOP.OUT';

var
        x: array[1..100] of integer;
        n,k,i,j: integer;
        f: text;

BEGIN

        assign(f,input); reset(f);
        readln(f,n,k);
        close(f);

        assign(f,output); rewrite(f);

        for i:=1 to k do x[i]:=i;

        repeat

                write(f,'{');
                for i:=1 to k-1 do write(f,x[i],',');
                writeln(f,x[k],'}');

                i:=k;
                while (i>0) and (x[i]=n-k+i) do dec(i);
                if i>0 then
                        begin
                                inc(x[i]);
                                for j:=i+1 to k do x[j]:=x[j-1]+1;
                        end;
        until i=0;
        close(f);

END.