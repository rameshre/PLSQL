set serveroutput on;
declare
	a number;
	b number;
	t number;
procedure swapping(x in out number, y in out number) is
begin
t:=x;
x:=y;
y:=t;
end;

begin
a:=&a;
b:=&b;
swapping(a,b);
dbms_output.put_line('After swapping ' || a || ' and ' || b);
end;
/