USE [PetRegistrationDatabase]
GO
/****** Object:  StoredProcedure [dbo].[sp_CheckPhoneNumber]    Script Date: 5/9/2021 11:36:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Gareth Warren
-- Create date: 5/8/2021

-- Description:	Given a Phone number, and a Person Id, 
--update phone number if it is in one of three formats
-- =============================================
ALTER PROCEDURE [dbo].[sp_CheckPhoneNumber] 
	-- Add the parameters for the stored procedure here
	@Phone VARCHAR(30),
	@Id INT,
	@TableName VARCHAR(25)
AS
BEGIN
	SET NOCOUNT ON;
	--This will match phone numbers in the form (111)111-1111, 111-111-1111, or 111 111 1111

    -- Insert statements for procedure here

	IF (@Phone LIKE '([0-9][0-9][0-9])[0-9][0-9][0-9]-[0-9][0-9][0-9][0-9]') OR
	 (@Phone LIKE '[0-9][0-9][0-9]-[0-9][0-9][0-9]-[0-9][0-9][0-9][0-9]') OR
	 (@Phone LIKE '[0-9][0-9][0-9] [0-9][0-9][0-9] [0-9][0-9][0-9][0-9]')  
	    BEGIN
		IF(@TableName = 'person')
		    BEGIN
	        SELECT PERSONS.Phone FROM PERSONS
		    WHERE PERSONS.PersonId = @Id 
		        BEGIN TRY
		            BEGIN TRANSACTION
		     	        UPDATE PERSONS
		                SET PERSONS.Phone = CAST(@Phone AS CHAR(13)) 
			            WHERE PERSONS.PersonId = @Id;
			        COMMIT;
		        END TRY
		        BEGIN CATCH
		            ROLLBACK;
	            END CATCH;
		    END;
		IF(@TableName = 'shelter')
		    BEGIN
			   BEGIN TRY
		            BEGIN TRANSACTION
		     	        UPDATE SHELTER_PHONE_NUMS
		                SET ShelterPhone = CAST(@Phone AS CHAR(13)) 
			            WHERE PhoneId = @Id;
			        COMMIT;
		        END TRY
		        BEGIN CATCH
		            ROLLBACK;
	            END CATCH;
			END;
		END;
END
