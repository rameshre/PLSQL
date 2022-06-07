set serveroutput on;
declare 
 a number;
procedure square1(x in out number) is
begin
 x:=x*x;
end;

begin
 a:=&a;
 square1(a);
dbms_output.put_line('square of a number is ' ||a);
end;
/
 