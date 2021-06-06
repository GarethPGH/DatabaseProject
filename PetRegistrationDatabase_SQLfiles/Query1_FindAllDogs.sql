USE PetRegistrationDatabase

SELECT PetName AS 'Pet Name', FKPetBreed AS 'Breed' 
FROM dbo.PETS INNER JOIN dbo.SPECIES ON SpeciesName = FKPetSpecies
WHERE SpeciesName = 'Dog'