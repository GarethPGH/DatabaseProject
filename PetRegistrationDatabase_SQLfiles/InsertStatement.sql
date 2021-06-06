USE PetRegistrationDatabase

INSERT INTO dbo.PETS(PetName, FKPetSpecies, FKPet_PetType, FKPetBreed, FKPetColor, FKPetPattern, FKPetPerson, DateLost, DateFound, IsSpayNeuter, Gender, UniqueFeatures, FKPetShelter) 
VALUES('Sassy', 'Dog', 'Dog or Cat', 'Chihuahua', 'Tricolor:Black/Orange/White', 'Brindle',1, '2012-02-17', NULL, 1,'Male', 'Sassy has a star shaped white patch on his chest and a white spot near the base of his tail', 5);