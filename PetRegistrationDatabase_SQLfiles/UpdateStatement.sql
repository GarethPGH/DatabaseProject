USE PetRegistrationDatabase
--Update Pets Name, and FKPetPerson of PetId 18
UPDATE dbo.PETS
SET PetName = 'Rocko', FKPetPerson = 2, DateFound = CAST(GETDATE() AS DATE)
WHERE PetId = 18;