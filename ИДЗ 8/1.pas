type
  P_Elem = ^Elem;
  Elem = record
    data: integer;
    next: P_Elem;
  end;

var
  P_begin: P_Elem;
  n, k, flag, deside, kol: integer;

procedure Insert_Elem(num: integer; var p1: P_Elem);
var
  p_new, h, p: P_Elem;
  i: integer;
begin
  if p1 = nil then
  begin
    new(p1);


    p^.data := 100;
    p^.next := nil
  end
  else
  begin
    i := 1;
    p := p1;
    if(num < 1) then writeln('Неверно задано  место вставки')
    else begin
      if num = 1 then
      begin
        new(p_new);
        p_new^.next := p1;
        p_new^.data := 200;
        p1 := p_new;
      end
      else begin
        while (i <num) and (p^.next <> nil) do
        begin
          h := P;
          P := p^.next;
          inc(i);
        end;
        if(i = num) then
        begin
          
          new(p_new);
          h^.next := p_new;
          p_new^.next := p;
          p_new^.data := 300;
        end
        else 
        
        if i < num then writeln('Место вставки превышает длину списка');
        
      end;
    end;
  end;
end;
procedure Prinlist(p1: P_Elem);
var
  p: P_Elem;
begin
  if p1 <> nil then
  begin
    write('(', p1^.data, ') {', p1, '} ->');
    p := p1;
    while p^.next <> nil do
    begin
      p := p^.next;
      write('(', p^.data, ') {', p, '} ->');
    end;
    writeln(p^.next);
  end
  else
    writeln('список пустой');
end;
begin
            writeln('Введите куда вставить эелемент');
          readln(kol);
          Insert_Elem(kol, P_begin);
          Prinlist(P_begin);
end.
