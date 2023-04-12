uses GeometricFigures;

var
  a, b, d1, d2, h, s,r: real;
  alpha: integer;

begin
  writeln('Введите сторону треуголника,затем высоту');
  readln(a, h);
  treugolnik(a, h);
  
  writeln('Введите стороны прямоугольника');
  readln(a, b);
  pryamougolnik(a, b);

  writeln('Введите сторону паралеллограмма,затем высоту');
  readln(a, h);
  paralelogram(a, h);
  
  writeln('Введите значение диагоналей ромба');
  readln(d1, d2);
  romb(d1, d2);
  
  writeln('Введите стороны трапеции,затем высоту');
  readln(a,b, h);
  trapezia(a,b, h);
  
  writeln('Введите радиус круга');
  readln(r);
  krug(r);
  
  writeln('Введите радиус круга,затем угол сектора');
  readln(r,alpha);
  krugSector(r, alpha);
  

  end.