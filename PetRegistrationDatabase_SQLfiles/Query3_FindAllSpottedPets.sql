USE PetRegistrationDatabase

SELECT PetName AS 'Pet Name',FKPetSpecies AS 'Species', FKPetBreed AS 'Breed', FKPetColor AS 'Coat Color', FKPetPattern AS 'Coat Pattern' 
FROM dbo.PETS INNER JOIN dbo.PATTERNS ON FKPetPattern = Pattern
WHERE Pattern = 'Spotted'