
type
  P_Elem = ^Elem;
  Elem = record
    data: integer;
    next: P_Elem;
  end;

var
  P_begin: P_Elem;
  n, k, flag, deside, kol: integer;



procedure Createlist(num: integer; var P1: P_Elem);
var
  i: integer;
  p: P_Elem;
begin
  New(P1);
  i := 1;
  p1^.data := i;
  p1^.next := nil;
  p := p1;
  while i < num do
  begin
    New(p^.next);
    p^.next^.next := nil;
    p := p^.next;
    inc(i);
    p^.data := i;
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

procedure Kill_list(var p1: P_Elem);
var
  p: P_Elem;
begin
  if p1 <> nil then
  begin
    p := p1;
    while p^.next <> nil do 
    begin
      p := p^.next;
      Dispose(p1);
      p1 := p;
    end;
    Dispose(p1);
  end
  else
    writeln('Список пустой!'); 
end;

procedure Kill_Elem(dm: integer; var p1: P_Elem);
var
  h, p: P_Elem;
  i: integer;
begin
  if p1 <> nil then 
  begin
    p := p1;
    i := 1;
    if dm < 1 then writeln('Номер удаляемого эл-та должен быть >=1')
    else begin
      if dm = 1 then 
      begin
        p1 := p1^.next;
        Dispose(p);
      end
      else 
      begin
        while (i < dm) and (p^.next <> nil) do
        begin
          h := p;
          p := p^.next;
          inc(i);
        end;
        if (i <> dm) and (p^.next = nil) then
          writeln('Номер удаляемого эл-та больше длины списка')
        else
        begin
          h^.next := p^.next;
          Dispose(p);
        end;
      end;
    end;
  end
  else 
    writeln('Список пуст');
end;

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

begin
  
  
  writeln('Выберите действие 1: Создать новый список 2: Вставить новый элемент 3: Удалить элемент 4: Удалить весь список 0: Завершить программу');
  
  repeat
    readln(flag);
    case flag of 
      1:
        begin
          writeln('Ввелите количесвто элементов');
          readln(kol);
          Createlist(kol, P_begin);
          Prinlist(P_begin);
        end;
      2:
        begin
          writeln('Введите куда вставить эелемент');
          readln(kol);
          Insert_Elem(kol, P_begin);
          Prinlist(P_begin);
        end;
      3:
        begin
          writeln('Введите номер элемента который хотете удалить');
          readln(kol);
          Kill_Elem(kol, P_begin);
          Prinlist(P_begin);
        end;
      4:
        begin
          Kill_list(P_begin);
          Prinlist(P_begin);
        end;
    
    end;
  until flag = 0;
  
end.