program bcc;

uses    crt;

var     i,j: integer;

BEGIN

        clrscr;

        writeln('                            BANG CUU CHUONG');
        writeln('                      ---------------------------');

        for i:=1 to 9 do
            begin
                for j:=1 to 9 do
                     begin
                        write(j,'x',i,'=',i*j);
                        if ((i*j)>0) and ((i*j)<10) then write('   ');
                        if ((i*j)>=10) then write('  ');
                     end;
                 writeln;
            end;

        readln;

END.