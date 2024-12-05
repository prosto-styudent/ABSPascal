
PROGRAM MainDiagonalAverage;
USES SysUtils;
VAR
  A: ARRAY[1..10, 1..10] OF REAL;
  N, I, J: INTEGER;
  Sum, Avg: REAL;
BEGIN
  WRITELN('Enter the size of the matrix (N): ');
  READLN(N);
  
  RANDOMIZE; {Ініціалізація генератора випадкових чисел}
  WRITELN('Generated matrix:');
  FOR I := 1 TO N DO
  BEGIN
    FOR J := 1 TO N DO
    BEGIN
      A[I, J] := RANDOM(201) - 100; {Генерація числа у діапазоні від -100 до 100}
      WRITE(A[I, J]:8:2); {Виведення елементу матриці}
    END;
    WRITELN; {Перехід на новий рядок після кожного рядка матриці}
  END;
  
  Sum := 0;
  FOR I := 1 TO N DO
    Sum := Sum + A[I, I]; {Додавання елементів головної діагоналі}
  
  Avg := Sum / N; {Обчислення середнього арифметичного}
  
  WRITELN('The average of the main diagonal is: ', Avg:0:2);
END.
