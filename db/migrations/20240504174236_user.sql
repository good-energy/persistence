-- migrate:up
create table "user"(
    id uuid primary key,
    stripe_id text
);

-- migrate:down
drop table "user";
