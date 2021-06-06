USE PetRegistrationDatabase
--Dependancy Tables for Pet Records
CREATE TABLE SPECIES(
    SpeciesName           VARCHAR(50)   NOT NULL,
	CONSTRAINT SpeciesPK  PRIMARY KEY(SpeciesName)
);
CREATE TABLE PET_TYPES(
    PetType               VARCHAR(50)   NOT NULL,
	CONSTRAINT PetTypePK  PRIMARY KEY(PetType)
);
CREATE TABLE BREEDS(
    Breed           NVARCHAR(50)   NOT NULL,
	CONSTRAINT BreedPK  PRIMARY KEY(Breed),
);
CREATE TABLE COLORS(
    Color          VARCHAR(50)   NOT NULL,
	CONSTRAINT ColorPK  PRIMARY KEY(Color)
);
CREATE TABLE PATTERNS(
    Pattern           VARCHAR(50)   NOT NULL,
	CONSTRAINT PatternPK  PRIMARY KEY(Pattern)
);


--Locations Table, set primarily for use with the USA, may change for possible globalization 
--Pet and Person reference Location, however, Pet and Person locations do not have to match
CREATE TABLE LOCATIONS(
    LocationId INT           NOT NULL    IDENTITY(1,1),
	City       VARCHAR(50)   NOT NULL,
	US_State   VARCHAR(15)   NOT NULL,
	Zip        CHAR(5)       NOT NULL    CHECK(Zip LIKE '[0-9][0-9][0-9][0-9][0-9]'),
	
	CONSTRAINT LocationID PRIMARY KEY(LocationID) 
);

--Persons Table
CREATE TABLE PERSONS(
    PersonId         INT            NOT NULL   IDENTITY(1,1),
	FirstName        NVARCHAR(50)   NOT NULL,
	LastName         NVARCHAR(50)   NOT NULL,
	StreetAddress    NVARCHAR(200)  NOT NULL,
	Phone            CHAR(13)       NULL,
	--Email Checks keep failing, create user function to validate email
	Email            NVARCHAR(200)  NOT NULL,
	FKPersonLocation INT            NOT NULL,
	
	CONSTRAINT PersonId  PRIMARY KEY(PersonId),                                   
	CONSTRAINT FK_Person_Location FOREIGN KEY(FKPersonLocation) REFERENCES LOCATIONS(LocationId)
);
--Animal Shelter Table											  
CREATE TABLE SHELTERS(
    ShelterId          INT              NOT NULL   IDENTITY(1,1),
	ShelterName        NVARCHAR(200)    NOT NULL,
	FKShelterLocation  INT              NOT NULL,

	CONSTRAINT ShelterId  PRIMARY KEY(ShelterId),  
	CONSTRAINT FK_Shelter_Location FOREIGN KEY(FKShelterLocation) REFERENCES LOCATIONS(LocationId)

);
--Pets Table to hold records of lost pets
CREATE TABLE PETS(
    --A Basic Pet Record would require the things labelled Not Null
    PetId            INT            NOT NULL   IDENTITY(1,1),
	PetName          NVARCHAR(50)   NOT NULL,
	DateLost         DATE           NULL,
    DateFound        DATE           NULL, 
	UniqueFeatures   NVARCHAR(MAX)  NULL,
	IsLost           BIT            NULL, 
	IsSpayNeuter     BIT            NULL,
	Gender           VARCHAR(6)     NULL        CHECK (Gender = 'Male' OR Gender = 'Female'),
	FKPetPerson      INT            NOT NULL,
	FKPetLocation    INT            NULL, --Not all lost pet records necessarily would have complete information about where they were last seen
	FKPetSpecies     VARCHAR(50)    NOT NULL,
	FKPet_PetType    VARCHAR(50)    NOT NULL,
	FKPetBreed       NVARCHAR(50)   NULL, --Breed May Not be required, dependant on Species
	FKPetColor       VARCHAR(50)    NOT NULL,
	FKPetPattern     VARCHAR(50)    NOT NULL,
	FKPetShelter     INT            NULL

	CONSTRAINT PetId  PRIMARY KEY(PetId),

	CONSTRAINT FK_Pet_Location FOREIGN KEY(FKPetLocation) REFERENCES LOCATIONS(LocationId),
	CONSTRAINT FK_Pet_Species FOREIGN KEY(FKPetSpecies) REFERENCES SPECIES(SpeciesName),
	CONSTRAINT FK_Pet_PetType FOREIGN KEY(FKPet_PetType) REFERENCES PET_TYPES(PetType),
	CONSTRAINT FK_Pet_Breed FOREIGN KEY(FKPetBreed) REFERENCES BREEDS(Breed),
	CONSTRAINT FK_Pet_Color FOREIGN KEY(FKPetColor) REFERENCES COLORS(Color),
	CONSTRAINT FK_Pet_Pattern FOREIGN KEY(FKPetPattern) REFERENCES PATTERNS(Pattern),
	CONSTRAINT FK_Pet_Shelter  FOREIGN KEY(FKPetShelter) REFERENCES SHELTERS(ShelterId),
	--Updates to Person should cascade to Pets associated with that record
	CONSTRAINT FK_Pet_Person FOREIGN KEY(FKPetPerson) REFERENCES PERSONS(PersonId)
                                                  ON UPDATE CASCADE 
											      ON DELETE CASCADE,
    CONSTRAINT check_date CHECK(DateFound > DateLost AND DateLost >= '01-01-2000')
					 
);

--Phone and Email Dependancy Tables for Animal Shelter
CREATE TABLE SHELTER_PHONE_NUMS(
    PhoneId         INT              NOT NULL   IDENTITY(1,1),
    ShelterPhone         CHAR(13)     NOT NULL,
	FKPhoneShelter  INT              NOT NULL,

	CONSTRAINT PhoneId  PRIMARY KEY(PhoneId),
	CONSTRAINT FK_Phone_Shelter FOREIGN KEY(FKPhoneShelter) REFERENCES SHELTERS(ShelterId)   
	                                                       ON UPDATE CASCADE 
														   ON DELETE CASCADE
);

CREATE TABLE SHELTER_EMAIL_ADDS(
    EmailId         INT              NOT NULL    IDENTITY(1,1),
    ShelterEmail    NVARCHAR(200)    NOT NULL,
	FKEmailShelter  INT              NOT NULL,

	CONSTRAINT EmailId  PRIMARY KEY(EmailId),  
	CONSTRAINT FK_Email_Shelter FOREIGN KEY(FKEmailShelter) REFERENCES SHELTERS(ShelterId)   
	                                                       ON UPDATE CASCADE 
					                                       ON DELETE CASCADE 
) ;      					        