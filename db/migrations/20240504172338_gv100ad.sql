-- migrate:up
create table gv100ad(
    id uuid primary key,
    bundesland char(2) not null,
    regierungsbezirk char(1) not null,
    landkreis char(2) not null,
    verband char(4) not null,
    gemeinde char(3) not null,
    ars char(12) not null unique,
    ags char(8) not null unique,
    satz char(2) not null,
    art char(2) not null,
    gebietsstand char(8) not null
);

alter table 
    gv100ad
add constraint 
    fk_gv100ad_id
foreign key 
    (id)
references 
    territory(id);

alter table 
    gv100ad
add constraint 
    fk_gv100ad_satz
foreign key 
    (satz)
references 
    gv100ad_satzart("number");

alter table 
    gv100ad
add constraint 
    fk_gv100ad_art
foreign key 
    (art)
references 
    gv100ad_satzart("number");

-- migrate:down
drop table gv100ad;
