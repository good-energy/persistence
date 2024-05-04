-- migrate:up
create table postcode(
    id uuid primary key,
    number varchar(20) not null unique
);

-- migrate:down
drop table postcode;