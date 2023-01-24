uses crt;
var a:array[0..1000000] of longint; i,n:longint;
procedure swap(var a,b:longint);
var t:longint;
begin
    t := a;
    a := b;
    b := t;
end;
procedure vun(n,i:longint);
var x,l,r:longint;
begin
    x := i;
    l := 2 * i + 1;
    r := 2 * i + 2;
    if (l < n) and (a[l] > a[x]) then x := l;
    if (r < n) and (a[r] > a[x]) then x := r;
    if (x <> i) then
        begin
            swap(a[i],a[x]);
            vun(n,x);
        end;
end;
procedure heapSort();
var i:longint;
begin
    for i := (n div 2 - 1) downto 0 do vun(n,i);
    for i := n - 1 downto 0 do
        begin
            swap(a[0], a[i]);
            vun(i, 0);
        end;
end;
begin
    clrscr;
    readln(n);
    for i := 0 to n - 1 do read(a[i]);
    heapSort();
    for i := 0 to n - 1 do write(a[i],' ');
    readln; readln;
end.
