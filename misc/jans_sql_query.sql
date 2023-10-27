select "NOW ENJOYING ! Who speaks what??" as " ";

select Persons.FirstName, Persons.LastName, Languages.languageName as Speaks 
from Persons 
    join Speaks on Speaks.PersonID = Persons.ID 
    join Languages on Languages.ID = Speaks.LanguageID 
order by Persons.FirstName;