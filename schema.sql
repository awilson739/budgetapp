drop table if exists account;
create table account  (
   id integer primary key autoincrement,
   name text not null,
   email text not null
   

);

drop table if exists budget;
create table budget (
   budgetid integer primary key autoincrement,
   income integer not null,
   lineitemid integer,
   accountid integer, 
   foreign key (lineitemid) references lineitem(lineitemid),
   foreign key (accountid) references account(id) 
); 
drop table if exists lineitem;
create table lineitem (
   lineitemid integer primary key autoincrement,
   budgetid integer,
   title text not null,
   amount integer not null,
   foreign key (budgetid) references budget(budgetid)
);

