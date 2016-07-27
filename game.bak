uses    crt;

var     x,y,z,i,score,high,lvl: integer;
        a,b: char;
        k: string;
        play: byte;
        f: text;

BEGIN

        clrscr;
        randomize;

        {Draw Border}

        gotoxy(1,1);
        for i:=1 to 50 do write('#');
        for i:=1 to 20 do writeln('#');
        for i:=1 to 51 do write('#');
        for i:=1 to 20 do
                begin
                gotoxy(51,i);
                writeln('#');
                gotoxy(15,i);
                write('#')
                end;
        gotoxy(3,4); write('High: ');
        gotoxy(3,9); write('Scores: ');
        gotoxy(3,14); write('Level: ');
        gotoxy(3,18); write('Esc to quit');


        {End Draw}

        {Game}

        play:= 1;

        gotoxy(25,10); write('1');
        delay(500);
        gotoxy(25,10); write('2');
        delay(500);
        gotoxy(25,10); write('3');
        delay(500);
        gotoxy(25,10); write('     ');
        repeat

           assign(f,'HIGHSCORE.DAT'); reset(f);
             read(f,high);
           close(f);

           gotoxy(10,4); write(high);

           x:= 16+random(33);
           a:= chr(97+random(25));
           y:= 2;
           z:= 1;
           score:= 0; lvl:= 0;
           gotoxy(20,8); write('                           ');
           gotoxy(16,20); write('                                ');

           while not(z=0) do
             begin


                gotoxy(10,14); write(lvl);
                gotoxy(11,9); write(score);
                gotoxy(x,y); write(' ');
                gotoxy(x,(y+1)); write(a);

                if keypressed then b:=readkey;

                if b=char(27) then
                   begin
                        gotoxy(x,(y+1)); write(' ');
                        break;
                   end;
                if a=b then
                   begin
                        inc(score);
                        gotoxy(x,(y+1)); write(' ');
                        lvl:= score div 3;
                        x:=16+random(33);
                        a:= chr(97+random(25));
                        y:= 2;
                   end;
                y:= y+1;
                delay(300-lvl*12);

                if y>19 then z:=0;

             end;

             if high<score then high:=score;

             assign(f,'HIGHSCORE.DAT'); rewrite(f);
                write(f,high);
             close(f);

             gotoxy(20,8); write('                           ');
             gotoxy(16,20); write('                                ');

             gotoxy(25,8); write('GAME OVER');
             readln;

             gotoxy(25,8); write('Play again (y/n): ');

             b:= readkey;
             if (b=char(110)) or (b=char(78)) then break;

        until b=char(27);

        {End Game}
END.
