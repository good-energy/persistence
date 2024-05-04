-- migrate:up
create table territory(
    id uuid primary key,
    superior_id uuid
);

alter table 
    territory
add constraint 
    fk_superior_id
foreign key 
    (superior_id)
references 
    territory(id);

-- migrate:down
drop table territory;
