set serveroutput on;
declare
id employess.id%type;
name employess.name%type;
salary employess.salary%type;
CURSOR c_emp is
   select id,name,salary from employess;
begin
 open c_emp;
 loop
 fetch c_emp into id,name,salary;
exit when c_emp%notfound;
 dbms_output.put_line(id || ' ' || name || ' ' || salary);
end loop;
close c_emp;
end;
/