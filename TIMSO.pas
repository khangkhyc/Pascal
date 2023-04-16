uses crt;
const digit_sum = 45;
var K,left,right,mid,temp,digit_sum_n,i,j,res:longint;digits:array[1..1000000000] of byte;
begin
    clrscr;
    readln(K);
    res := 0;
    left := 1; right := K;
    while left < right do
      begin
        mid := (left + right) div 2;
        temp := mid;
        i := 0;
        while temp > 0 do
            begin
                inc(i);
                digits[i] := temp mod 10;
                temp := temp div 10;
            end;
        digit_sum_n := 0;
        for j := 1 to i do digit_sum_n := digit_sum_n + digits[j];
        if mid + digit_sum_n = K then begin res := mid; break; end
        else if mid + digit_sum_n < K then left := mid + 1
        else right := mid - 1;
        temp := right;
        while temp > 0 do
            begin
                inc(i);
                digits[i] := temp mod 10;
                temp := temp div 10;
            end;
        digit_sum_n := 0;
        for j := 1 to i do digit_sum_n := digit_sum_n + digits[j];
        if right + digit_sum_n = K then begin res := right; break; end;
      end;
    writeln(res);
    readln;
end.
