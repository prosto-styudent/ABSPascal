
PROGRAM MainDiagonalAverageWithRange;
USES SysUtils;
VAR
  A: ARRAY[1..10, 1..10] OF REAL;
  N, I, J, MinVal, MaxVal: INTEGER;
  Sum, Avg: REAL;
BEGIN
  WRITELN('Enter the size of the matrix (N): ');
  READLN(N);
  IF (N < 1) OR (N > 10) THEN
  BEGIN
    WRITELN('Matrix size must be between 1 and 10.');
    EXIT;
  END;

  WRITELN('Enter the minimum value for the range: ');
  READLN(MinVal);
  WRITELN('Enter the maximum value for the range: ');
  READLN(MaxVal);
  
  IF MinVal > MaxVal THEN
  BEGIN
    WRITELN('Invalid range. Minimum value cannot be greater than maximum value.');
    EXIT;
  END;

  RANDOMIZE; {Initialize random number generator}
  WRITELN('Generated matrix:');
  FOR I := 1 TO N DO
  BEGIN
    FOR J := 1 TO N DO
    BEGIN
      A[I, J] := MinVal + RANDOM(MaxVal - MinVal + 1); {Generate random value in range}
      WRITE(A[I, J]:8:2); {Print matrix element, formatted}
    END;
    WRITELN; {New line after each row}
  END;
  
  Sum := 0;
  FOR I := 1 TO N DO
    Sum := Sum + A[I, I]; {Add main diagonal elements}
  
  Avg := Sum / N; {Calculate the average}
  
  WRITELN('The average of the main diagonal is: ', Avg:0:2);
END.
