uses crt;
var a,b:byte;
function pow(x,n:byte):qword;
var i:qword;
begin
    if n = 0 then pow := 1
    else if n mod 2 = 0 then begin i := pow(x, n div 2); pow := i*i; end
    else begin i := pow(x, n div 2); pow := i*i*x; end;
end;
begin
    clrscr;
    readln(a,b);
    writeln(pow(a,b));
    readln;
end.
