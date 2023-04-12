program IDZ8;

const
  n = 10;

type
  export = record
    tovar: string[15];
    strana: string[15];
    kolichestvo: string[7];
    izmer: string[5];
  end;

var
  st1, st2, vibor: string[15];
  f, f1, f2, f3, f4: text;
  str, str_ed, Proverka2, zapis: string;
  massiv: array[1..n] of export;
  t, mis, kol, e, i, qwe: integer;
  Proverka1, prov, flaf: boolean;
  massiv123: array[1..40] of string;



procedure PustStoka(f: text; var Proverka1: boolean);
var
  STr: string;
  Prov: integer;
begin
  assign(f, 'export.txt');
  reset(f);
  Prov := 0;
  Proverka1 := True;
  while not eof(f) do
  begin
    readln(f, STr);
    inc(Prov);
  end;
  if Prov <> 40 then 
    Proverka1 := False;
  close(f);
end;


procedure dann(f: text; var Proverka2: string; var flaf: boolean);
type
  lishnee = set of char;
  lishnee1 = set of integer;

var
  StrokaProverka: string;
  
  ziphra, cimvol, bykvi: lishnee;
  i, j, count: integer;

begin
  flaf := true;
  ziphra := ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0'];
  cimvol := ['+', '-', '*', '/', '!', '@', '#', '%', '$', '^', '&', '(', ')', '=', '№', '?', '\', '<', '>'];
  bykvi := ['A'..'Z', 'a'..'z', 'А'..'Я', 'а'..'я', 'Ё', 'ё'];
  assign(f, 'export.txt');
  reset(f);
  while not eof(f) do
    for i := 1 to n do
    begin
      readln(f, massiv[i].tovar);
      readln(f, massiv[i].strana);
      readln(f, massiv[i].kolichestvo);
      readln(f, massiv[i].izmer);
    end;
  
  for i := 1 to 10 do
  begin
    count := 0;
    for j := 1 to length(massiv[i].tovar) do 
      if (massiv[i].tovar[j] in ziphra) or (massiv[i].tovar[j] in cimvol) then
      begin
        inc(count);
        flaf := false;
      end;
    if count > 0 then 
      Writeln('Проверте правильнось написания города в записи под номером ', i, '. В ней не должно быть цифр и символов')
    
  end;
  
  for i := 1 to 10 do
  begin
    count := 0;
    for j := 1 to length(massiv[i].strana) do 
      if (massiv[i].strana[j] in ziphra) or (massiv[i].strana[j] in cimvol) then
      begin
        inc(count);
        flaf := false;
      end;
    if count > 0 then 
      Writeln('Проверте правильнось написания страны в записи под номером ', i, '. В ней не должно быть цифр и символов')
  end;
  
  for i := 1 to 10 do
  begin
    count := 0;
    for j := 1 to length(massiv[i].kolichestvo) do 
      if (massiv[i].kolichestvo[j] in bykvi) or (massiv[i].kolichestvo[j] in cimvol) then
      begin
        inc(count);
        flaf := false;
      end;
    if count > 0 then 
      Writeln('Проверте правильнось написания количества товара в записи под номером ', i, '. В ней не должно быть букв и символов')
  end;
  
  for i := 1 to 10 do
  begin
    count := 0;
    if (massiv[i].izmer = 'шт') or (massiv[i].izmer = 'т') or (massiv[i].izmer = 'куб.м') then 
      for j := 1 to length(massiv[i].izmer) do
        if (massiv[i].izmer[j] in ziphra) or (massiv[i].izmer[j] in cimvol) then
        begin
          inc(count);
          flaf := false;
        end;
    if count > 0 then 
      Writeln('Проверте правильнось написания едениц измерения в записи под номером ', i, '. В ней не должно быть  цифр и символов')
    
  end;
  
end;


begin
  assign(f, 'export.txt');
  reset(f);
  
  if eof(f)//проверка ну пустой файл
    then WriteLn('Файл не имеет данных')
  else begin 
    
    dann(f, Proverka2, flaf);
    if flaf <> false then 
    begin
      PustStoka(f, Proverka1);
      if Proverka1 = true then
      begin 
        
        Writeln('Выберите область анализа данных.Товар/Страна');
        readln(st1);
        
        
        if st1 = 'Товар' then begin
          mis := 0;
          kol := 0;
          assign(f1, 'tovar.txt');
          reset(f1);
          while not eof(f1) do//Вывод списка товаров
          begin
            readln(f1, str);  
            writeln(str);
          end;
          Writeln('Выберите товар из предложенных вариантов');
          readln(vibor);
          assign(f, 'export.txt');
          reset(f);
          while not eof(f) do
            for i := 1 to n do
            begin
              readln(f, massiv[i].tovar);
              readln(f, massiv[i].strana);
              readln(f, massiv[i].kolichestvo);
              readln(f, massiv[i].izmer);
              if vibor = massiv[i].tovar then
              begin
                
                writeln(massiv[i].strana);
                qwe := StrToInt(massiv[i].kolichestvo);
                kol := kol + qwe;
                str_ed := massiv[i].izmer;
                mis := mis + 1;
              end
            end;
          if mis = 0 then writeln('Нет данных для этого товара.Выберите товар из списка предложенных и проверте ввод')//проверка на кореектность ввода
          else 
          begin
            assign(f3, 'output1.txt');
            rewrite(f3);
            writeln('Общее количетво: ', kol, ' ', str_ed);
            writeln(f3, 'Общее количетво: ', kol, ' ', str_ed);
            close(f3);
            
          end;
        end
        
        else
        begin
          if st1 = 'Страна' then begin//Вывод списка стран
            mis := 0;
            assign(f2, 'strana.txt');
            reset(f2);
            while not eof(f2) do
            begin
              readln(f2, str);  
              writeln(str);
            end; 
            Writeln('Выберите страну из предложенных вариантов');
            readln(vibor);
            
            assign(f, 'export.txt');
            reset(f);
            while not eof(f) do
              
              for i := 1 to n do
                
              begin
                readln(f, massiv[i].tovar);
                readln(f, massiv[i].strana);
                readln(f, massiv[i].kolichestvo);
                readln(f, massiv[i].izmer);
                if vibor = massiv[i].strana then
                begin
                  assign(f4, 'output2.txt');
                  rewrite(f4);
                  writeln(massiv[i].tovar, ' ', massiv[i].kolichestvo, ' ', massiv[i].izmer);
                  writeln(f4, massiv[i].tovar, ' ', massiv[i].kolichestvo, ' ', massiv[i].izmer);
                  mis := mis + 1;
                end
              end;
            close(f4);
            if mis = 0 then writeln('Нет данных для этой страны.Выберите страну из списка предложенных и проверте ввод');
          end
          else
            Writeln('Провертье правильность ввода');
          
        end;
      end
      else writeln('Ошибка в исходном файле: лишняя строка');
    end;
  end;
end.