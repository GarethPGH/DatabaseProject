USE PetRegistrationDatabase

SELECT PetName AS 'Pet Name', FirstName + ' ' + LastName AS 'Owner Name', ShelterName AS 'Shelter Name'
FROM PETS
JOIN PERSONS
     ON FKPetPerson = PersonId
JOIN SHELTERS
     ON FKPetShelter = ShelterId
WHERE PersonId != 1	 