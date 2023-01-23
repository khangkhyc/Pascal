program SortArray;

const
  MAX_SIZE = 100;

type
  IntArray = array[1..MAX_SIZE] of Integer;

var
  A: IntArray;
  N: Integer;

procedure Merge(var A: IntArray; p, q, r: Integer);
var
  L, R: IntArray;
  i, j, k: Integer;
begin
  for i := p to q do
    L[i - p + 1] := A[i];
  for i := q + 1 to r do
    R[i - q] := A[i];
  i := 1;
  j := 1;
  for k := p to r do
    if (i <= (q - p + 1)) and ((j > (r - q)) or (L[i] <= R[j])) then
    begin
      A[k] := L[i];
      i := i + 1;
    end
    else
    begin
      A[k] := R[j];
      j := j + 1;
    end;
end;

procedure IterativeMergeSort(var A: IntArray; N: Integer);
var
  current_size, left_start: Integer;
begin
  for current_size := 1 to N - 1 do
  begin
    for left_start := 1 to N-1 do
    begin
      var mid:= left_start + current_size - 1;
      var right_end := min(left_start + 2*current_size - 1, N);
      Merge(A, left_start, mid, right_end);
    end;
  end;
end;

begin
  Write('Enter the number of elements in the array: ');
  Readln(N);
  for i := 1 to N do
  begin
    Write('Enter element ', i, ': ');
    Readln(A[i]);
  end;
  IterativeMergeSort(A, N);
  Writeln('Sorted array:');
  for i := 1 to N do
    Writeln(A[i]);
end.
