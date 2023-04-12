{Модуль содержит набор инструментов для работы с матрицами
MaxMatrixSuze- максимальный размер матрицы
Matrix- тип данный двуерный массив с максимальным размером
procedure InitZeroMatrix(var A : matrix) - процедура инициализации матрицы А(Заполняем матрицу нулями)
procedure InitRandomMatrix(var A: matrix;M,N: integer;Range:intrger)- прцедура заполнения матрицы рандомными числами, M и N -используемый диапазон индексов [1..M,1..N]
range - диапазон случайного числа, если Range = 0, то генерируем вещественное число от 0 до 1 иначе целое число от 0 до range
procedure PrintMatrix(var A: matrix;M,N: integer; All,Part:intrger)- Процедура распечатки матрицы А
M и N - диапазон выводимый на печать [1..M,1..N],All,Part - ормат вывода элемента: A[i,j]:All:Part
procedure AddMatrix(var A,B: matrix;M,N: integer; var C : matrix) - Процедура сложения матриц
M,N - спользуемый диапазон индексов : [1..M,1..N]}

unit MatrixOp;

interface

const
  MaxMatrixSize = 10;

type
  Matrix = array[1..MaxMatrixSize, 1..MaxMatrixSize] of real;

procedure InitZeroMatrix(var A: matrix);
procedure InitRandomMatrix(var A: matrix; M, N, Range: integer);
procedure PrintMatrix(var A: matrix; M, N, All, Part: integer);
procedure AddMatrix(var A, B: matrix; M, N: integer; var C: matrix);

implementation

procedure InitZeroMatrix;
begin
  for var i := 1 to MaxMatrixSize do
    for var j := 1 to MaxMatrixSize do
      A[i, j] := 0;
end;

procedure InitRandomMatrix;
begin
  if Range = 0 then
    for var i := 1 to MaxMatrixSize do
      for var j := 1 to MaxMatrixSize do
        A[i, j] := Random
  else
    for var i := 1 to MaxMatrixSize do
      for var j := 1 to MaxMatrixSize do
        A[i, j] := Random(range);
  
  
end;

procedure PrintMatrix;
begin
  for var i := 1 to M do
  begin
    for var j := 1 to N do
      write(A[i, j]:All:Part, ' ');
    writeln;
  end;
  writeln;
end;

procedure AddMatrix;
begin
  for var i := 1 to M do
    for var j := 1 to N do C[i,j] := A[i,j] + B[i,j];
end;

begin
  writeln('***Подключен модуль работы с матрицами ***')
end.