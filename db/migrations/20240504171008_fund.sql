-- migrate:up
create table fund(
    id uuid primary key,
    name text unique not null,
    territory_id uuid
);

alter table 
    fund
add constraint 
    fk_fund_territory_id
foreign key 
    (territory_id)
references 
    territory(id);


-- migrate:down
drop table fund;
