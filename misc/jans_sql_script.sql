use dejlig_db;

drop table if exists person;
select 'CREATING TABLE Persons ...' as '';
create table person
(
    id         int          not null auto_increment,
    first_name varchar(255) not null,
    last_name  varchar(255) not null,
    age        int          not null,
    primary key (id)

);

drop table if exists language;
select 'CREATING TABLE Languages ...' as '';
create table language
(
    id       int          not null auto_increment,
    language varchar(255) not null,
    primary key (id)
);

drop table if exists person_language_relation;
select 'CREATING TABLE Speaks ...' as '';
create table person_language_relation
(
    id          int     not null auto_increment,
    person_id   int     not null,
    language_id int     not null,
    is_lie      boolean not null default false,
    primary key (id),
    unique (person_id, language_id),
    foreign key (person_id) references person (id) on delete cascade,
    foreign key (language_id) references language (id) on delete cascade
);

insert into person (first_name, last_name, age)
values ('Jan', 'Balin', 29);
insert into person (first_name, last_name, age)
values ('Roman', 'Grygorenko', 33);
insert into person (first_name, last_name, age)
values ('Martin', 'Kedmenec', 27);
insert into person (first_name, last_name, age)
values ('Mathias', 'Rune Agüero Andersen', 30);

insert into language (language)
values ('Danish');
insert into language (language)
values ('English');
insert into language (language)
values ('Ukrainian');
insert into language (language)
values ('Croatian');
insert into language (language)
values ('French');
insert into language (language)
values ('German');
insert into language (language)
values ('Russian');
insert into language (language)
values ('Greek');
insert into language (language)
values ('Spanish');

insert into person_language_relation (person_id, language_id)
values ((select id from person where first_name = 'Jan'), (select id from language where language = 'Danish'));
insert into person_language_relation (person_id, language_id)
values ((select id from person where first_name = 'Jan'), (select id from language where language = 'English'));
insert into person_language_relation (person_id, language_id)
values ((select id from person where first_name = 'Jan'), (select id from language where language = 'French'));
insert into person_language_relation (person_id, language_id)
values ((select id from person where first_name = 'Jan'), (select id from language where language = 'German'));
insert into person_language_relation (person_id, language_id, is_lie)
values ((select id from person where first_name = 'Jan'), (select id from language where language = 'Greek'), true);
insert into person_language_relation (person_id, language_id)
values ((select id from person where first_name = 'Roman'), (select id from language where language = 'Danish'));
insert into person_language_relation (person_id, language_id)
values ((select id from person where first_name = 'Roman'), (select id from language where language = 'English'));
insert into person_language_relation (person_id, language_id)
values ((select id from person where first_name = 'Roman'), (select id from language where language = 'Ukrainian'));
insert into person_language_relation (person_id, language_id)
values ((select id from person where first_name = 'Roman'), (select id from language where language = 'French'));
insert into person_language_relation (person_id, language_id)
values ((select id from person where first_name = 'Roman'), (select id from language where language = 'Russian'));
insert into person_language_relation (person_id, language_id)
values ((select id from person where first_name = 'Martin'), (select id from language where language = 'Danish'));
insert into person_language_relation (person_id, language_id)
values ((select id from person where first_name = 'Martin'), (select id from language where language = 'English'));
insert into person_language_relation (person_id, language_id)
values ((select id from person where first_name = 'Martin'), (select id from language where language = 'Croatian'));
insert into person_language_relation (person_id, language_id)
values ((select id from person where first_name = 'Martin'), (select id from language where language = 'German'));
insert into person_language_relation (person_id, language_id)
values ((select id from person where first_name = 'Martin'), (select id from language where language = 'Russian'));
insert into person_language_relation (person_id, language_id)
values ((select id from person where first_name = 'Mathias'), (select id from language where language = 'Danish'));
insert into person_language_relation (person_id, language_id)
values ((select id from person where first_name = 'Mathias'), (select id from language where language = 'English'));
insert into person_language_relation (person_id, language_id)
values ((select id from person where first_name = 'Mathias'), (select id from language where language = 'French'));
insert into person_language_relation (person_id, language_id, is_lie)
values ((select id from person where first_name = 'Mathias'), (select id from language where language = 'German'),
        true);
insert into person_language_relation (person_id, language_id)
values ((select id from person where first_name = 'Mathias'), (select id from language where language = 'Spanish'));
