uses crt;
type w = array[1..255] of string;
var s:string;words:w;i,c:byte;
function split(s:string):w;
var a:w;word:string;i:byte;
begin
    word := '';
    c := 1;
    for i := 1 to length(s) do
        if s[i] = ' ' then
            begin
                if word <> '' then
                    begin
                        a[c] := word;
                        inc(c);
                        word := '';
                    end;
            end
        else word := word + s[i];
    if word <> '' then a[c] := word else dec(c);
    split := a;
end;
begin
    clrscr;
    readln(s);
    words := split(s);
    for i := 1 to c do writeln(words[i]);
    readln;
end.
