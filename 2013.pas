uses    crt;

var     s,i, a: int64;
        temp3,k: integer;
        temp, temp1, temp2: string;
        f: text;

BEGIN

        clrscr;

        write('Nhap so a: '); readln(a);
        i:=1;
        k:=1;
        assign(f,'89.txt'); rewrite(f);
        repeat
                begin
                        str(i,temp1);
                        str(a,temp2);
                        temp:= concat(temp2,temp1,temp2);
                        val(temp,s,temp3);
                        if length(temp1)>k then begin k:=k+1; writeln(k); end;
                        if round(sqrt(s))=sqrt(s) then begin writeln(s,' : ',sqrt(s):0:0); writeln(f,s,' : ',sqrt(s):0:0); end;
                        i:=i+1;
                end;
        until keypressed;
        close(f);
        readln;

END.
