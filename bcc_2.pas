program bcc;

uses    crt;

var     i,j: integer;
        f: text;

BEGIN

        clrscr;

        assign(f,'BCC.OUT');
        rewrite(f);
        for i:=1 to 9 do
            begin
                for j:=1 to 9 do
                     begin
                        write(f,j,'x',i,'=',i*j);
                        if ((i*j)>0) and ((i*j)<10) then write(f,'   ');
                        if ((i*j)>=10) then write(f,'  ');
                     end;
                 writeln(f);
            end;

            close(f);

END.