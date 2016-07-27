var     i,j: longint;

BEGIN
        i:=11;
        repeat
         begin
           j:=11;
           repeat
            begin
              if ((i*i+2) mod j = 0) and ((j*j+2) mod i = 0) then write(i,' ',j);
              j:=j+2;
            end;
           until j>100;
           i:=i+2;
         end;
        until i>100;


        writeln('done!');
        readln;

END.
