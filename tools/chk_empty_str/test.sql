
select 'foo' from *;
select '' from *;
select 'foo' from *;
select 'foo' from *;
select 'foo' from *;

insert into users (name) values ('');
insert into users (name) values ('  ');
insert into users (name) values ('  ');
insert into users (name) values (' foo');
insert into users (name) values ('foo ');
insert into users (name) values (' foo  ');


update users set name='' where id=1;
update users set name=' ' where id=2;
update users set name='   ' where id=3;
update users set name=' bar' where id=4;
update users set name='bar ' where id=5;
update users set name=' bar ' where id=6;

