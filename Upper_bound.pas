uses crt;
var a:array[0..1000000] of longint; i,n,x:longint;
function upper_bound(x:longint):longint;
var left,right,mid:longint;
begin
    left := 0;
    right := n;
    while left < right do
        begin
            mid := (left + right) div 2;
            if a[mid] <= x then left := mid + 1
            else right := mid;
        end;
    upper_bound := left;
end;
begin
    clrscr;
    readln(n,x);
    for i := 0 to n - 1 do read(a[i]);
    writeln('Chi so cua phan tu dau tien lon hon x trong day duoc sap xep la:');
    writeln(upper_bound(x));
    readln;readln;
end.
