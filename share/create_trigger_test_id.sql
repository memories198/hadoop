create
or replace trigger trigger_test_id
        before insert on test
        for each row
begin
select seq_test_id.nextval
into :NEW.id
from dual;
end;
/
