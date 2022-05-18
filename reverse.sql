set serveroutput on;

declare
n number;
r number:=0;
rev number:=0;
a number:=0;

begin
n:=&n;
while n>0
loop
a:=mod(n,10);
rev:=(rev*10)+a;
n:=floor(n/10);
end loop;
dbms_output.put_line('Reverse of number is' || rev);

end;
/