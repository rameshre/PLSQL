declare
n number;
r number:=0;
begin
n:=&n;
r:=mod(n,2);
if r=0
then
dbms_output.put_line('Number is even');
else
dbms_output.put_line('Number is odd');
end if;
end;
/