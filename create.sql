create table if not exists track_Table (ID serial primary key,album_id integer,track_name text not null, duration timestamp);
create table if not exists Album_table (ID serial primary key,album_name text  not null, year_of_release date);
create table if not exists collection (ID serial primary key,cllection_name text  not null, years_of_release date);

create table if not exists musician_Table (ID serial primary key,nickname text not null);
create table if not exists genre_Table (ID serial primary key,genre text not null);

create table if not exists musician_album (M_ID integer references musician_Table(ID),A_ID integer references Album_Table(ID),constraint pk primary key (M_ID, A_ID));

create table if not exists musician_gengre (M_ID integer references musician_Table(ID),G_ID integer references genre_table(ID),constraint pk1 primary key (M_ID, G_ID));
create table if not exists track_collection (T_ID integer references track_Table(ID),C_ID integer references collection(ID),constraint pk2 primary key (T_ID, C_ID));