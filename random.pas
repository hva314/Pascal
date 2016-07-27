uses    crt;

var     i: longint;
        a: byte;

BEGIN

        clrscr;

        randomize;

        for i:=1 to random(1000000) do
                begin
                        a:= random(1);
                        write(a);
                end;

END.
