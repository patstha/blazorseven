﻿drop table if exists myprogram;

create table myprogram
(
	id int primary key generated by default as identity,
	parentid int not null default 0,
	externalid uuid not null unique default gen_random_uuid (),
	title varchar(2000) null,
	summary varchar(4000) null,
	description text null,
	owner int null,
	createdby int not null,
	createddate timestamp with time zone not null default now(),
	modifiedby int not null default 0,
	modifieddate timestamp with time zone not null default now()
);

insert into myprogram
(parentid, title, summary, description, owner, createdby, modifiedby)
values 
(0, 'my first program', 'my summary', 'my description', 3, 3, 3);

insert into myprogram
(parentid, title, summary, description, owner, createdby, modifiedby)
values 
(0, 'my second program', 'my summary', 'my description', 3, 3, 3);
