use dejlig_db;

select 'NOW ENJOYING ! Who speaks what??' as '';
select first_name,
       last_name,
       language as speaks,
       is_lie
from person
         left join person_language_relation on person_language_relation.person_id = person.id
         left join language on language.id = person_language_relation.language_id
order by person.id;
