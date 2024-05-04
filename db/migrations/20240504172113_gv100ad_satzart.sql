-- migrate:up
create table gv100ad_satzart(
    id uuid primary key,
    number char(2) not null unique,
    name text not null
);

-- migrate:down
drop table gv100ad_satzart;
