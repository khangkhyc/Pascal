uses crt,windows;
var l,r,a,b,count,d,c,time:longint;table:array[1..1001] of boolean;
function check(n:longint):boolean;
var i:word;
begin
    check := False;
    for i := 2 to trunc(sqrt(n)) do if n mod (i*i) = 0 then begin check := True; break; end;
end;
function gcd(a,b:longint):longint;
var r:longint;
begin
    while b > 0 do
        begin
            r := a mod b;
            a := b;
            b := r;
        end;
    gcd := a;
end;
begin
    clrscr;
    readln(l,r);
    time:=GetTickCount;
    for a := 1 to 1001 do table[a] := False;
    d := l - 1; c := 0;
    for a := l to r-1 do
        begin
            if check(a) then
                begin
                    count := count + r - l + 1;
                    table[a-d] := True;
                    inc(c);
                    count := count - c;
                end;
        end;
    for a := l to r - 1 do
        if not check(a) then for b := 2 to r-a do if (table[a+b-d] = False) and (gcd(a,b) > 1) then inc(count);
    writeln(count);
    time:=GetTickCount-time;
    WriteLn('Thoi gian chay la ',time/60000:0:5,' phut');
    readln;
end.
