Uses MatrixOp;
var
  A,B,C:matrix;
  i,j,m,n: integer;
  begin
    Randomize;
    writeln('Input matrix size m,n:');
    readln(m,n);
    InitRandomMatrix(A,m,n,0);
    InitRandomMatrix(B,m,n,0);
    InitZeroMatrix(C);
    AddMatrix(A,B,m,n,C);
    writeln('Pезультат: ');
    PrintMatrix(A,m,n,5,2);
    PrintMatrix(B,m,n,5,2);
    PrintMatrix(C,m,n,5,2);
  end.