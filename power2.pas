uses crt;
var a,b:longint;
function pow(x,n:longint):qword;
var i:qword;
begin
    pow := 1;
    i := x;
    while n > 0 do
        if n mod 2 = 0 then begin i := i*i; n := n div 2; end
        else begin pow := pow*i; n := n - 1; end;
end;
begin
    clrscr;
    readln(a,b);
    writeln(pow(a,b));
    readln;
end.
