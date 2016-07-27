uses    crt;

type    bigNUM = string;

var     k: integer;
        temp, temp1, temp2, i, a: string;

function cong(a,b: bigNUM): bigNUM;

var     sum,carry,i,x,y: integer;
        c: bigNUM;

begin
        carry:= 0; c:= '';

        while length(a)<length(b) do a:='0'+a;
        while length(b)<length(a) do b:='0'+b;

        for i:=length(a) downto 1 do
                begin
                        x:= ord(a[i])-ord('0');
                        y:= ord(b[i])-ord('0');

                        sum:= x+y+carry;
                        carry:= sum div 10;

                        c:= chr(sum mod 10 + 48)+c;
                end;

        if carry>0 then c:='1'+c;
        cong:= c;
end;

function nhan(a,b: bigNUM): bigNUM;

var     sum,tmp: bigNUM;
        m,i,j: integer;

begin

        m:= -1; sum:= '';

        for i:=length(a) downto 1 do
                begin
                        m:=m+1;
                        tmp:= '';
                        for j:=1 to ord(a[i])-48 do tmp:=cong(tmp,b);
                        for j:=1 to m do tmp:=tmp + '0';
                        sum:= cong(tmp,sum);
                end;
        nhan:= sum;
end;

BEGIN

        clrscr;
        i:='1';
        k:=1;

        write('Nhap a: '); readln(a);

        repeat
           begin
                temp:= nhan(i,i);
                temp1:= copy(temp,1,length(a));
                temp2:= copy(temp,length(temp)-length(a)-1,length(a));
                if length(i)>k then begin k:=k+1; writeln(k); end;
                if (temp1=a) and (temp2=a) then
                        begin
                                writeln(temp,' - ',i);
                                readln;
                        end;
                i:=cong(i,'1');
           end;
        until k=0;
        readln;
END.
