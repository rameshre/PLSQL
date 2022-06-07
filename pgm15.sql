set serveroutput on;
declare
	a number;
	b number;
	c number;
procedure findmin(x in number,y in number,z out number)is
begin
	a:= &a;
	b :=&b;
	if x<y
	then
	z:=x;
	else
	z:=y;
	end if;
end;
begin
 findmin(a,b,c);
  dbms_output.put_line('Minimum is : '||c);
end;
/