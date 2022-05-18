set serveroutput on;

declare
n number;
r number:=0;
rev number:=0;
a number:=0;
t number;

begin
n:=&n;
t:=n;
while n>0
loop
a:=mod(n,10);
rev:=(rev*10)+a;
n:=floor(n/10);
end loop;
if rev=t
then
dbms_output.put_line('Number is palindrome');
else
dbms_output.put_line('Number is not palindrome');
end if;
end;
/