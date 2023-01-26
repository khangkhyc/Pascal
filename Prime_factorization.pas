uses crt;
type prime = array[1..30] of longint; // 2^30 > 10^9
var i:word;
    n:longint; // Input
    c:byte;   // Number of prime factors
    px:prime; // Prime factors of n
function prime_factorization(n:longint):prime;
var factors:prime;
begin
    c := 1;
    while n mod 2 = 0 do
        begin
            factors[c] := 2;
            n := n div 2;
            inc(c);
        end;
    i := 3;
    while i <= int(sqrt(n)) do
        begin
            while n mod i = 0 do
                begin
                    factors[c] := i;
                    n := n div i;
                    inc(c);
                end;
            i := i + 2;
        end;
    if n > 2 then factors[c] := n;
    prime_factorization := factors;
end;
begin
    clrscr;
    readln(n);
    px := prime_factorization(n);
    for i := 1 to c do write(px[i],' ');
    readln;
end.
