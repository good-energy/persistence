-- migrate:up
create table gv100ad_postcode(
    id uuid primary key,
    postcode varchar(20) not null,
    ars char(12) not null
);

alter table 
    gv100ad_postcode
add constraint 
    fk_gv100ad_postcode_ars
foreign key 
    (ars)
references 
    gv100ad("ars");

alter table 
    gv100ad_postcode
add constraint 
    fk_gv100ad_postcode_postcode
foreign key 
    (postcode)
references 
    postcode("number");

-- migrate:down
drop table gv100ad_postcode;