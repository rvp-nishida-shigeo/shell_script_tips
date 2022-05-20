# using_tmpdir
## chk_empty_str.sh
引数で指定されたファイルに空文字列、 空白文字列(一つ以上の空白のみで構成された文字列）が含まれているかどうかをチェックする。
```bash

# 
# 使い方
#
$ ./chk_empty_str.sh -h
Usage: ./chk_empty_str.sh [-h|help|-c]  file

# 
# テストデータ
#
$ cat test.sql 

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

# 
# 空文字列、空白文字列を含んだ行を表示する
#
$ ./chk_empty_str.sh test.sql
select '' from *;
insert into users (name) values ('');
insert into users (name) values ('  ');
insert into users (name) values ('  ');
update users set name='' where id=1;
update users set name=' ' where id=2;
update users set name='   ' where id=3;

# 
# 空文字列、空白文字列を含んだ行の行数を表示する
#
$ ./chk_empty_str.sh -c test.sql
7
```
