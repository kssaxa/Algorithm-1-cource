type
  children = ^child;
  child = record
    data: string;
    next: children;
  end;


var
  n, i, k, j, q: integer;
  schit: string; 
  circle, temp, p: children;

begin
  k:=1;
  writeln('Введите количество детей.');
  readln(n);
  new(circle);
  writeln('Введите фамилию первого ребёнка.');
  readln(circle^.data);
  circle^.next := circle;
  temp := circle;
  for i := 2 to n do
  begin
    new(p);
    writeln('Введите фамилию ', i, ' ребёнка.');
    readln(p^.data);
    p^.next := temp^.next;
    temp^.next := p;
    temp := p;
  end; 
  
  
  
  writeln('Введите считалочку');
  readln(schit);
  for q := 1 to length(schit) do
    if schit[q] = ' ' then
      k := k + 1;
    
  temp := circle;
  for j := 1 to n - 1 do
  begin
    for i := 1 to k - 1 do
    begin
      p := temp;
      temp := temp^.next;
    end;
    writeln('Вышел ', temp^.data);
    p^.next := temp^.next;
    dispose(temp);
    temp := p^.next;
  end;
  writeln('Остался ', temp^.data);
  dispose(temp);
end.