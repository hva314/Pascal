program nguyen;

uses crt;

var  k,s,a,b:char; ten:string;
     cap,x,y,mang,lv,i,diem,n:integer;
begin

    clrscr;

    textbackground(9);
    gotoxy(12,12);
    write('moi nhap ten: ');
    readln(ten);
    clrscr;
    gotoxy(15,15);
    delay(3000);
    clrscr;
    for i:=1 to 79 do begin
                          gotoxy(i,1);
                          write('11B2');
                          gotoxy(i,23);
                          write('11B2');
                     end;
    for i:=1 to 23 do begin
                          gotoxy(1,i);
                          write('11B2');
                          gotoxy(20,i);
                          write('11B2');
                          gotoxy(79,i);
                          write('11B2');
                       end;
     Lv:=1;
     mang:=5;
     diem:=0;
     n:=500;

   gotoxy(5,2);
   write('name: ',ten);
   gotoxy(5,4);
   write('diem: ',diem);
   gotoxy(5,6);
   write('LV:', LV);
   gotoxy(5,8);
   write('mang: ',mang);
   gotoxy(5,10);
   write('Space de pause');
   gotoxy(5,12);
   write('ESC de thoat');
   a:=chr(random(25)+97); y:=2;x:=48;


   while mang>0 do
         BEGIN
           if (y<23) then
             begin if keypressed then
               BEGIN b:=readkey;
                     if a=b then begin textcolor(green);
                                       gotoxy(x,y);writeln(a);delay(200-LV*5);
                                       gotoxy(x,y);writeln(' ');
                                       textcolor(white);

                                       a:=chr(random(25)+97);
                                       y:=2;
                                       diem:=diem+1;gotoxy(11,4);write(diem);
                                       LV:=Diem div 5;gotoxy(10,6);write(Lv);
                                 end

                            else
                                if b=chr(32) then
                                        begin
                                                gotoxy(x,y);
                                                write('Paused');
                                                readln;
                                                gotoxy(x,y);
                                                write('      ');
                                         end
                                 else
                                   if b<>chr(27) then
                                    begin
                                       gotoxy(40,25);
                                       write('*<sai roi`>* ');
                                       delay(1000);
                                       gotoxy(40,25);
                                       write('                            ');

                                       mang:=mang-1;
                                       gotoxy(11,8);write(mang);
                                     end
                                    else mang:=-1;
               END;
               gotoxy(x,y);writeln(a);
               Delay(n-50*LV);
               gotoxy(x,y);writeln(' ');
               y:=y+1;
             end
           else begin gotoxy(50,25);write('*<co len>*');
                      delay(1000);
                      gotoxy(50,25);write('                                   ');

                      y:=2;
                      mang:=mang-1;
                      gotoxy(11,8);write(mang);
                      a:=chr(random(25)+97);
                end;
           if (LV=10)  then begin mang:=0;
                                 gotoxy(46,15);
                                 write('thang roi');
                           end;


         END;

       if (mang=0) and (LV<10) then begin gotoxy(46,15);write('thua roi');end
                               else begin gotoxy(46,15);write('ban da thoat');end;










  readln
end.
