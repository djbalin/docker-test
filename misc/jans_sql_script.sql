drop table if exists Persons;
select "CREATING TABLE Persons ..." as " ";
create table Persons(FirstName varchar(255) not null, LastName varchar(255) not null, Age int not null, ID int not null, primary key (ID));

insert into Persons values ("Jan","Balin",29,1);
insert into Persons values ("Roman","Grygorenko",33,2);
insert into Persons values ("Martin","Kedmenec",27,3);



drop table if exists Languages;
select "CREATING TABLE Languages ..." as " ";
create table Languages(LanguageName varchar(255) not null, ID int not null, primary key (ID));
insert into Languages values ("Danish",1);
insert into Languages values ("English",2);
insert into Languages values ("Ukrainian",3);
insert into Languages values ("Croatian",4);
insert into Languages values ("French",5);
insert into Languages values ("German",6);
insert into Languages values ("Russian",7);
insert into Languages values ("Greek",8);

drop table if exists Speaks;
select "CREATING TABLE Speaks ..." as " ";
create table Speaks(PersonID int not null, LanguageID int not null, primary key (PersonID, LanguageID));
insert into Speaks values (1,1);
insert into Speaks values (1,2);
insert into Speaks values (1,5);
insert into Speaks values (1,6);
insert into Speaks values (1,8);
insert into Speaks values (2,1);
insert into Speaks values (2,2);
insert into Speaks values (2,3);
insert into Speaks values (2,5);
insert into Speaks values (2,7);
insert into Speaks values (3,1);
insert into Speaks values (3,2);
insert into Speaks values (3,4);
insert into Speaks values (3,6);
insert into Speaks values (3,7);