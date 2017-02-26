drop table if exists entries;
create table cards (
  id integer primary key autoincrement,
  type tinyint not null, /* 1 for cs knowledge, 2 for code */
  front text not null,
  back text not null,
  known boolean default 0
);