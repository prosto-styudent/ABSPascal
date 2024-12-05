
PROGRAM MainDiagonalAverage;
VAR
  A: ARRAY[1..10, 1..10] OF REAL;
  N, I: INTEGER;
  Sum, Avg: REAL;
BEGIN
  WRITELN('Enter the size of the matrix (N): ');
  READLN(N);
  
  WRITELN('Enter the elements of the matrix:');
  FOR I := 1 TO N DO
    FOR J := 1 TO N DO
      READ(A[I, J]);
  
  Sum := 0;
  FOR I := 1 TO N DO
    Sum := Sum + A[I, I];
  
  Avg := Sum / N;
  
  WRITELN('The average of the main diagonal is: ', Avg:0:2);
END.
