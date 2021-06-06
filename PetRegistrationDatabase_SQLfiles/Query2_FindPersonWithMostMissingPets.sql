USE PetRegistrationDatabase
--Find the Person With the Most Pets in System

SELECT TOP(1) MAX(NumberOfPets) AS 'Max Lost Pets', PetsPerPerson.FirstName AS 'First Name', PetsPerPerson.LastName AS 'Last Name'
FROM(
    SELECT COUNT(DISTINCT PetId) AS NumberOfPets, PERSONS.FirstName, PERSONS.LastName, PersonId
    FROM PERSONS INNER JOIN PETS ON FKPetPerson = PersonId
    WHERE PersonId != 1
	GROUP BY FirstName, LastName, PersonId
    HAVING COUNT(DISTINCT PetId) > 0
) AS PetsPerPerson, PERSONS 
GROUP BY NumberOfPets, PetsPerPerson.FirstName, PetsPerPerson.LastName
ORDER BY NumberOfPets DESC