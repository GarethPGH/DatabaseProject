USE [PetRegistrationDatabase]
GO

--If you want to update a phone number for a Person record type 'person'
-- If you want to update a phone number for a Person record type 'shelter'
--As the third parameter to dbo.spCheckPhoneNumber
--EXEC	@return_value = dbo.sp_CheckPhoneNumber String PhoneNumberToValidate,...
-- Int PersonOrShelterPhoneID, String PersonOrShelter;

DECLARE	@return_value int

--EXEC	@return_value = dbo.sp_CheckPhoneNumber '(555)453-4533', 3, 'person';

EXEC	@return_value = dbo.sp_CheckPhoneNumber '(333)444-8780', 2, 'shelter';

SELECT	'Return Value' = @return_value

GO

--SELECT FirstName, Phone FROM PERSONS WHERE PersonId = 3

SELECT SHELTERS.ShelterName, SHELTER_PHONE_NUMS.ShelterPhone
FROM SHELTERS INNER JOIN SHELTER_PHONE_NUMS ON FKPhoneShelter = ShelterId
WHERE FKPhoneShelter = 1

