uses    crt;

type    bigNUM = string;

var     a,b,c: string;

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
        write('a: '); readln(a);
	write('b: '); readln(b);
	write('c: '); readln(c);
        writeln(nhan(c,nhan(a,b)));
        readln;

END.
