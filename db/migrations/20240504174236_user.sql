-- migrate:up
create table "user"(
    id uuid primary key,
    stripe_id text,
    name VARCHAR(255),
    email VARCHAR(255),
    "emailVerified" TIMESTAMPTZ,
    image TEXT
);

-- migrate:down
drop table "user";
