use dejlig_db;

drop table if exists person;
select 'CREATING TABLE person ...' as '';
create table person
(
    id         int          not null auto_increment,
    first_name varchar(255) not null,
    last_name  varchar(255) not null,
    age        int          not null,
    primary key (id)
);

drop table if exists language;
select 'CREATING TABLE language ...' as '';
create table language
(
    id       int          not null auto_increment,
    language varchar(255) not null,
    primary key (id)
);

drop table if exists person_language_relation;
select 'CREATING TABLE person_language_relation ...' as '';
create table person_language_relation
(
    id          int     not null auto_increment,
    person_id   int     not null,
    language_id int     not null,
    is_lie      tinyint not null default 0,
    primary key (id),
    unique (person_id, language_id),
    foreign key (person_id) references person (id) on delete cascade,
    foreign key (language_id) references language (id) on delete cascade
);

insert into person (first_name, last_name, age)
values ('Jan', 'Balin', 29),
       ('Roman', 'Grygorenko', 33),
       ('Martin', 'Kedmenec', 27),
       ('Mathias', 'Rune Agüero Andersen', 30);

insert into language (language)
values ('Danish'),
       ('English'),
       ('Ukrainian'),
       ('Croatian'),
       ('French'),
       ('German'),
       ('Russian'),
       ('Greek'),
       ('Spanish');

insert into person_language_relation (person_id, language_id)
values ((select id from person where first_name = 'Jan'), (select id from language where language = 'Danish')),
       ((select id from person where first_name = 'Jan'), (select id from language where language = 'English')),
       ((select id from person where first_name = 'Jan'), (select id from language where language = 'French')),
       ((select id from person where first_name = 'Jan'), (select id from language where language = 'German')),
       ((select id from person where first_name = 'Roman'), (select id from language where language = 'Danish')),
       ((select id from person where first_name = 'Roman'), (select id from language where language = 'English')),
       ((select id from person where first_name = 'Roman'), (select id from language where language = 'Ukrainian')),
       ((select id from person where first_name = 'Roman'), (select id from language where language = 'French')),
       ((select id from person where first_name = 'Roman'), (select id from language where language = 'Russian')),
       ((select id from person where first_name = 'Martin'), (select id from language where language = 'Danish')),
       ((select id from person where first_name = 'Martin'), (select id from language where language = 'English')),
       ((select id from person where first_name = 'Martin'), (select id from language where language = 'Croatian')),
       ((select id from person where first_name = 'Martin'), (select id from language where language = 'German')),
       ((select id from person where first_name = 'Martin'), (select id from language where language = 'Russian')),
       ((select id from person where first_name = 'Mathias'), (select id from language where language = 'Danish')),
       ((select id from person where first_name = 'Mathias'), (select id from language where language = 'English')),
       ((select id from person where first_name = 'Mathias'), (select id from language where language = 'French')),
       ((select id from person where first_name = 'Mathias'), (select id from language where language = 'Spanish'));

insert into person_language_relation (person_id, language_id, is_lie)
values ((select id from person where first_name = 'Jan'), (select id from language where language = 'Greek'), 1),
       ((select id from person where first_name = 'Mathias'), (select id from language where language = 'German'), 1);
