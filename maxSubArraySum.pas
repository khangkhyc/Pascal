uses crt;
type mang = array[1..1000000] of longint;
var n,i:longint;arr:mang;
function maxSum(a:mang;n:longint):longint;
var msf,meh,i,start,finish,s:longint;
begin
    msf := -1000000001;
    meh := 0;
    start := 1;
    finish := 0;
    s := 1;
    for i := 1 to n do
        begin
            inc(meh,a[i]);
            if msf < meh then begin msf := meh; start := s; finish := i; end;
            if meh < 0 then begin meh := 0; s := i + 1; end;
        end;
    writeln('Tong lon nhat: ',msf);
    writeln('Chi so xau con do: ',start,' -> ',finish);
end;
begin
    clrscr;
    readln(n);
    for i := 1 to n do begin write('Nhap phan tu thu ',i,': '); readln(arr[i]); end;
    writeln();
    maxSum(arr,n);
    readln;
end.
