set serveroutput on;
create or replace trigger dispsalchange
before delete or insert or update on customer
for each row
when (new.id>0)
declare
sal_diff number;
begin
sal_diff := :new.salary - :old.salary;
dbms_output.put_line('old salary : ' || :old.salary);
dbms_output.put_line('New salary : ' || :new.salary);
dbms_output.put_line('salary difference : ' || sal_diff);
end;
/


declare
 total_rows number(2);
begin
update customer set salary = salary +5000;
if sql%notfound then
   dbms_output.put_line('No customer updates');
elsif sql%found then
total_rows := sql%rowcount;
dbms_output.put_line(total_rows || ' customers updated ');
end if;
end;
/