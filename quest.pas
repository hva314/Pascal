uses    crt;

var     j: integer;
        e: char;
        diem,life: integer;

procedure intro; {Gioi thieu}
   begin

        clrscr;
        writeln;
        writeln;
        writeln('    ## ##   ##     ## ##### # ##   #   ###      ##   ##     ## ###### #  #');
        writeln('   # # # # # #    # #    #  # # #  #  #         # # # #    # #    #   #  #');
        writeln('  #### #  #  #   ####   #   # #  # #  #  ###    #  #  #   ####    #   ####');
        writeln(' #   # #     #  #   #  #    # #   ##  #   #     #     #  #   #    #   #  #');
        writeln('#    # #     # #    # ##### # #    #   ####     #     # #    #    #   #  #');
        writeln('                                                               Ver 1.0.0');
        readln;

   end;

procedure drawtable;  {Ke khung}
var     i: integer;
   begin
        clrscr;
        gotoxy(1,1);
        for i:=1 to 60 do write('#');

        gotoxy(1,8);
        for i:=1 to 60 do write('#');

        gotoxy(1,20);
        for i:=1 to 60 do write('#');

        gotoxy(1,1);
        for i:=1 to 20 do writeln('#');

        for i:=1 to 8 do
           begin
                gotoxy(20,i);
                write('#');
           end;
        for i:=1 to 20 do
           begin
                gotoxy(60,i);
                write('#');
           end;
        gotoxy(5,3); write('Mang:');
        gotoxy(5,5); write('Diem:');
   end;

procedure thongbao(x: integer); {Tao thong bao, cong diem, tru mang}

   begin

        case x of
           1: begin writeln('Dung roi!'); inc(diem); end;
           2: begin writeln('Sai roi!'); dec(life); end;
           3: begin writeln('Het gio!'); dec(life); end;
           4: writeln('Thoat!')
        end;
   end;

procedure start;  {Tao cot thoi gian}
var     i: integer;

   begin
        gotoxy(1,21);
        for i:=1 to 50 do write('*');
   end;

procedure cooldown(x: integer); {Chuong trinh dem thoi gian}

   begin
        gotoxy(x,21); write(' ');
   end;

function quest(x: integer): integer;
var     a,b,c,kq,time: integer;
        d: array[1..4] of integer;

   begin
        randomize;
        a:=random(x*10);
        b:=random(x*10);
        c:=a+b;
        gotoxy(35,4);
        write(a,' + ',b,' = ');

        repeat
           d[1]:= random(10)+c-5;
        until d[1]<>c;


        repeat
           d[2]:= random(10)+c-5;
        until ((d[2]<>c) and (d[1]<>d[2]));


        repeat
           d[3]:= random(10)+c-5;
        until ((d[3]<>c) and (d[3]<>d[2]) and (d[3]<>d[1]));


        repeat
           d[4]:= random(10)+c-5;
        until ((d[4]<>c) and (d[4]<>d[3]) and (d[4]<>d[2]) and (d[4]<>d[1]));


        kq:=random(3)+1;
        d[kq]:=c;

        gotoxy(11,11); write('a.',d[1]);
        gotoxy(35,11); write('b.',d[2]);
        gotoxy(11,17); write('c.',d[3]);
        gotoxy(35,17); write('d.',d[4]);
        time:=50;

        start;

        repeat
           delay(75);
           cooldown(time);
           dec(time);

        until (time=0) or (keypressed);

        if keypressed then e:=readkey;
        if time=0 then thongbao(3) else
          begin
           if e='a' then
              if kq=1 then thongbao(1) else thongbao(2)
           else if e='b' then
              if kq=2 then thongbao(1) else thongbao(2)
           else if e='c' then
              if kq=3 then thongbao(1) else thongbao(2)
           else if e='d' then
              if kq=4 then thongbao(1) else thongbao(2)
           else if e=chr(27) then thongbao(4) else thongbao(2);
          end;
          delay(500);

   end;

BEGIN

        clrscr;
        intro;
        write('                           SAN SANG?');
        readln;
        delay(500);


        life:=5; j:=1;
        repeat
           begin
                clrscr;
                drawtable;
                gotoxy(10,3); write(life);
                gotoxy(11,5); write(diem);
                quest(j);
                inc(j);
           end;
        until (life<0) or (e=chr(27));
        readln;

        clrscr;
        intro;
        writeln('                     So diem cua ban la: ',diem);
        readln;

END.
