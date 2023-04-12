

const
  n = 10;

var
  edchisla: set of integer = [];
  delete: set of integer = [];
  a, b: array [1..n] of integer;
i:integer;
begin
  
  for  i := 1 to n do 
    begin
    a[i] := random(50) + 1;//3аполнение массива числами
    if a[i] in edchisla then
       delete += [a[i]]//исключаем повторы в множествах
    else edchisla += [a[i]];
       b[i] := random(50) + 1;
    if b[i] in edchisla then
       delete += [b[i]]
    else edchisla += [b[i]];
  end;
  edchisla -= delete;
  writeln('Первое множество: ',a);
  Writeln('Второе множество: ',b);
  Writeln('Уникальные числа: ',edchisla);
  
end.