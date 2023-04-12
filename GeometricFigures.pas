{Модуль содержит набор вычесление площади геометрических фигур
procedure treugolnik(a,h: real) - процедура нахождения площади треугольника, a - сторона треугольника h - высота треугольника 
procedure pryamougolnik (a,b : real) - процедура нахождения площди круга, a и b стороны треугольника
procedure paralelogram(a,h :real) - процедура нахождения площади паралеллограмма, a - сторона паралеллограмма  h -  высота паралеллограмма 
procedure romb(d1,d2 :real) - процедура наахождения пллощади ромба, d1 и d2 - диагонали ромба
procedure trapezia(a,b,h :real)- процедура нахождения площади трапеции, a и b - стороны трапеции,h - высота трапеции 
procedure krug(r :real) - процедура находения круа, - радиус круга
procedure krugSector(r :real;alpha:ineger) - процедура находения площади тсектора круга  r - радиус круга, a - значение угла под которым находим площадь}


unit GeometricFigures;

interface
procedure treugolnik(a,h: real);
procedure pryamougolnik (a,b : real);
procedure paralelogram(a,h :real);
procedure romb(d1,d2 :real);
procedure trapezia(a,b,h :real);
procedure krug(r :real);
procedure krugSector(r :real;alpha: integer);

implementation

procedure treugolnik;
begin
  var s: real;
  s:=0.5*a*h;
  writeln('Результат:', s:2);
end;

procedure pryamougolnik;
begin
  var s: real;
  s:=a*b;
  writeln('Результат:', s:2);
end;

procedure paralelogram;
begin
  var s: real;
  s:=a*h;
  writeln('Результат:', s:2);
end;

procedure romb;
begin
  var s: real;
  s:=0.5*d1*d2;
  writeln('Результат:', s:2);
end;

procedure trapezia;
begin
  var s: real;
  s:=0.5*(a+b)*h;
 writeln('Результат:', s:2);
end;

procedure krug;
begin
  var s: real;
  s:=3.14*r*r;
  writeln('Результат:', s:2);
end;

procedure krugSector;
begin
  var s: real;
  s:=3.14*r*alpha/180;
  writeln('Результат:', s:2);
end;
begin
end.