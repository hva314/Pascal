uses    crt;

var     i: int64;
        k: integer;
        temp: string;
        f: text;

function ngto(a: int64): boolean;

        var     j: integer;

        begin

                ngto:= true;

                for j:=2 to trunc(sqrt(a)) do
                        if a mod j =0 then ngto:= false;

                if a=2 then ngto:= true;

        end;

BEGIN

        clrscr;

        assign(f,'NGUYENTO.TXT'); rewrite(f);

        i:=0;
        k:=0;
        repeat

                inc(i);

                str(i,temp);

                if k<length(temp) then
                        begin
                                k:=length(temp);
                                writeln(k);
                        end;

                if ngto(i) then writeln(f,i);

        until keypressed;

        readln;

        close(f);

END.
