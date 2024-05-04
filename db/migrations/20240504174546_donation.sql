-- migrate:up
create table donation(
    id uuid primary key,
    user_id uuid not null,
    fund_id uuid not null,
    postcode varchar(20),
    amount int not null,
    org_percentage int not null default 10 CHECK (org_percentage >= 0 AND org_percentage <= 100),
    created_at timestamp default now()
);

alter table 
    donation
add constraint 
    fk_donation_fund_id
foreign key 
    (fund_id)
references 
    "fund"(id);

alter table 
    donation
add constraint 
    fk_donation_user_id
foreign key 
    (user_id)
references 
    "user"(id);

alter table 
    donation
add constraint 
    fk_donation_postcode
foreign key 
    (postcode)
references 
    "postcode"("number");


-- migrate:down
drop table donation;
