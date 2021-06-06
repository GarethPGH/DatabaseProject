USE PetRegistrationDatabase

--Pet Description Dependancy Tables
INSERT INTO dbo.SPECIES(SpeciesName)
VALUES ('Dog'),('Cat'),('Hamster'),('Mouse'),('Rat'),('Rabbit'),('Chinchilla'),('Gerbil'),('Guinea Pig'),('Leopard Gecko'),('Crested Gecko'),('Green Anole'),('Bearded Dragon'),('Chinese Water Dragon'),('Iguana'),
('Vieled Chameleon'),('Savannah Monitor'),('Nile Monitor'),('Ball Python'), ('Rat Snake'),('Corn Snake'),('King Snake'), ('Burmese Python'),('Red Eared Slider'),('African Sideneck Turtle'),('Western Painted Turtle'),
('Mississippi Map Turtle'),('Common Musk Turtle'),('Yellow Bellied Slider'),('Eastern Box Turtle'),('Russian Tortoise'),('Leopard Tortoise'),('Indian Star Tortoise'),('Blue Macaw'),('Red Macaw'),('Parakeet'),('Cockatoo'), 
('African Gray'),('Cockatiel'),('Parrotlet'),('Ring-Necked Parakeet'),('Amazon Parrot'),('Conure'),('Lovebird'),('Quaker Parakeet'),('Zebra Finch'),('Canary'),('Dove'),('Rock Pigeon'),('Chicken'),('Guinea Fowl'),('Turkey'),('Duck'),
('Goose'),('Swan'),('Pig'),('Cow'),('Horse'),('Goat'),('Donkey'),('Sheep'),('Llama'),('Alpaca'),('Tiger'),('Lion'),('Alligator'), ('Raccoon'), ('Fox'),('Bobcat'),('Wolf'), ('Coyote'),('Bear'),('Cougar'),('Ferret'),('Hedgehog');

INSERT INTO dbo.PET_TYPES(PetType)
VALUES ('Dog or Cat'),('Reptile'),('Farm'),('Bird'),('Small Animal'),('Exotic/Wild');

INSERT INTO dbo.BREEDS(Breed)
VALUES ('Mixed/Other'),('Abyssinian'),('European Shorthair'),('British Shorthair'),('American Shorthair'),('Oriental Shorthair'),('Oriental Longhair'),('Siamese'),('Peke-Faced Persian'),('Persian'),('Turkish Angora'),
('Turkish Van'),('Maine Coon'),('Norwegian Forest Cat'),('Siberian Forest Cat'),('Russian Blue'),('Longhair'),('Toyger'),('Bengal'),('Egyptian Mau'),('Somali'),('Sphynx'),('Devon Rex'),('Cornish Rex'),('Munchkin'),('Japanese Bobtail'),
('Scottish Fold'),('Scottish Fold Straight Ear'),('American Curl'),('Ocicat'),('Polydactyl'),('La Perm'),('Manx'),('Lykoi'),('Himalayan'),('Burmese'),('Chausie'),('Savannah Cat'),('Ragdoll'),('Ragamuffin'),('Selkirk Rex'),('Singapura'),
('Dalmatian'),('German Shepherd'),('Belgian Tevuren'),('Belgian Malinois'),('Groenendael'),('Laekenois'),('Doberman Pinscher'),('English Sheepdog'),('Newfoundland'),('Saint Bernard'),('Great Dane'),('Irish Wolfhound'),('Finnish Spitz'),
('Norwegian Elkhound'),('Alaskan Husky'),('Siberian Husky'),('Malamute'),('Akita'),('Shiba Inu'),('Chihuahua'),('Pomeranian'),('Saluki'),('Borzoi'),('Afghan Hound'),('Greyhound'),('Boxer'),('American Bulldog'), ('English Bulldog'),
('Pug'), ('English Mastiff'), ('Shar-Pei'),('American Staffordshire Terrier'),('Staffordshire Bull Terrier'),('American Pitbull Terrier'),('Bull Terrier'),('Cardigan Welsh Corgi'),('Pembroke Welsh Corgi'),('Brittany Spaniel'),
('Cavalier King Charles Spaniel'),('English Springer Spaniel'),('English Cocker Spaniel'),('Standard Poodle'),('Miniature Poodle'),('Toy Poodle'),('Miniature Pinscher'),('Portugese Water Dog'),('Puli'),('Labrador Retriever'),('Golden Retriever'),
('Irish Setter'),('Bernese Mountain Dog'),('Anatolian Shepherd'),('Rhodesian Ridgeback'),('Basset Hound'),('Beagle'),('Basenji'),('Bloodhound'),('Coonhound'),('Dachshund'), ('Scottish Deerhound'),('American Foxhound'),('English Foxhound'),
('Great Pyrenees'),('Tibetan Mastiff'),('Samoyed'),('American Eskimo Dog'),('Canadian Eskimo Dog'),('Standard Schauzer'),('Giant Schauzer'),('Miniature Schauzer'),('Rat Terrier'),('Yorkshire Terrier'),('Silkie Terrier'),('Llhasa Apso'),
('Shih Tsu'),('Havanese'),('Tibetan Terrier'),('Pekenese'),('Bichon Frise'),('Maltese'),('Muskovy'),('Mallard'),('Pekin'),('Bantam'),('Silkie'),('Jersey Giant'), ('Leghorn'),('Rhode Island Red'),('Rhode Island White'),('California Gray'),
('Plymouth Rock'),('Americuana'),('Black Angus'),('Hereford'),('Texas Longhorn'),('Red Angus'),('Simmental'),('Holstein'),('Limousin'),('Highlands'),('Mustang'),('Arabian'), ('Clydesdale'),('Thoroughbred'), ('Shetland Pony'), ('Shire'),('Pinto');


INSERT INTO dbo.COLORS 
VALUES ('Black'),('Brown'),('Gray'),('Red'),('Orange'),('Tan'),('White'),('Bicolor:Black/Tan'),('Bicolor:Black/Orange'),('Bicolor: Black/Brown'),('Bicolor:Brown/White'),('Bicolor:Black/White'),('Bicolor:Red/White'),('Bicolor:Tan/White'),
('Tricolor:Black/Brown/White') ,('Tricolor:Black/Orange/White'),('Tricolor:Gray/Tan/White')
,('Albino'),('Leucistic'),('Melanistic'),('Green'),('Standard')

INSERT INTO dbo.PATTERNS 
VALUES('Solid'),('Standard'),('Brindle'),('Merle'),('Tabby'),('Tortoiseshell'),('Calico'),('Spotted Tabby'),('Marbled Tabby'),('Mottled'),('Spotted'),('Masked'),('Roan'),('Agouti'),('Harlequin'),('Sable'),('Tuxedo'),
('Salt & Pepper'),('Pointed'),('Particolour'),('Irish Spotting'),('Saddleback'),('Piebald'),('White Spotting'),('Wildlife')

--Locations Table
SET IDENTITY_INSERT dbo.LOCATIONS ON
INSERT INTO dbo.LOCATIONS (LocationId, City, US_State, Zip)
VALUES 
(1, 'Unknown','Unknown','00000'),
(2, 'Pittsburgh', 'Pennsylvania','15209'),
(3, 'Savannah','Georgia','32345'),
(4, 'Citadel','Terran Alliance', '55555'),
(5, 'Kansas City', 'Missouri', '64001'),
(6, 'Las Angeles', 'California', '90220'),
(7, 'West Palm Beach','Florida', '33414'),
(8, 'Gainesville', 'Florida', '32608'),
(9, 'Wall Township', 'New Jersey', '07027'),
(10, 'New York City', 'New York', '10001'),
(11, 'Redmond', 'Washington','98033'),
(12, 'Portland', 'Oregon', '97221'),
(13, 'Salt Lake City', 'Utah', '84010'),
(14, 'Tucson', 'Arizona', '85701'),
(15, 'Nashville', 'Tennessee','37201')
SET IDENTITY_INSERT dbo.LOCATIONS OFF

--Persons Table
--Uknown Value, for Pet Profiles posted by Shelters
SET IDENTITY_INSERT dbo.PERSONS ON
INSERT INTO dbo.PERSONS (PersonId, FirstName, LastName, Email, StreetAddress, Phone, FKPersonLocation)
VALUES
(1, 'Unknown','Unknown','Unknown','Unknown','Unknown',1),
(2, 'Bob','JimBob','BasicGuy@Ihuntthings.com','123 Street Street','(345)435-3453', 2),
(3, 'Guy','Handsome','AnotherBasicDude@FancierWebsite.com','456 Dewey','(567)986-4354', 3),
(4, 'Matt','Matterson', 'ILikeTouchingThings@ThingsToTouch.com','776 7th ct','(234)676-9890', 4),
(5, 'Stacy','AnnHopkins','MyNameIsNotStacy@WebsiteHere.com','234 Road Rd','(432)444-4444',5),
(6, 'Gordon', 'Freeman', 'StuckInCity17@GetMeOutOfHere.com', '2200 Sunport Blvd SE', '(222)222-2222', 9),
(7, 'Shepherd','Commander','SpectreForHire@SavingTheGalaxy.org','001 Normandy', '(111)111-1111',4),
(8, 'Garrus','Vakarian','TuriansAreAwesome@Archangel.net', '44 Palavan Ln', '000-000-0000', 4)
SET IDENTITY_INSERT dbo.PERSONS OFF

--Pets Table
SET IDENTITY_INSERT dbo.PETS ON
INSERT INTO dbo.PETS(PetId, PetName, FKPetSpecies, FKPet_PetType, FKPetBreed, FKPetColor, FKPetPattern, FKPetPerson)
VALUES(1, 'Turtle','Dog','Dog or Cat','Akita','Bicolor:Black/Tan','Standard',2),
(2, 'Dog','Russian Tortoise','Reptile',NULL,'Standard','Wildlife',2),
(3, 'George', 'Cow','Farm','Black Angus', 'Bicolor:Red/White', 'Spotted',5),
(4, 'Micah', 'Dog','Dog or Cat', 'Chihuahua', 'Brown', 'Standard', 4),
(5, 'Buster', 'Chicken', 'Bird', 'Jersey Giant' , 'Melanistic','Solid', 1),
(6, 'Larry','Cat','Dog or Cat','Ocicat','Tricolor:Black/Brown/White', 'Spotted', 6),
(7, 'Tony', 'Tiger', 'Exotic/Wild', NULL, 'Bicolor:Black/Orange','Wildlife',8)

INSERT INTO dbo.PETS(PetId, PetName, FKPetSpecies, FKPet_PetType, FKPetBreed, FKPetColor, FKPetPattern, FKPetPerson, FKPetShelter)
VALUES(8, 'Mittens', 'Dog','Dog or Cat', 'Great Dane','Bicolor:Black/White','Harlequin', 1, 3),
(9, 'Boing', 'Blue Macaw', 'Bird', NULL , 'Standard','Standard', 1, 5),
(10, 'Snowflake','Cat','Dog or Cat','Persian','White', 'Solid', 1,1),
(11, 'Stormageddon','Hamster','Small Animal',NULL,'Bicolor:Black/Tan', 'Piebald', 1,1),
(12, 'Inclement Weather','Horse','Farm','Clydesdale','Bicolor:Brown/White', 'Saddleback', 1,1)

INSERT INTO dbo.PETS(PetId, PetName, FKPetSpecies, FKPet_PetType, FKPetBreed, FKPetColor, FKPetPattern, FKPetPerson, DateLost, IsLost, IsSpayNeuter, Gender, UniqueFeatures)
VALUES (13, 'Sparky', 'Ball Python', 'Reptile', NULL, 'Green', 'Spotted',7, '2009-04-24', 1,0,'Male', 'Sparky is missing an eye, and has one yellow spot on his back'),
(14, 'Vargas', 'Duck', 'Bird', 'Muskovy', 'Melanistic', 'Solid',1, '2018-10-05', 1,0,'Female', 'Plumage almost glitters in the sun, and her eyes are red'),
(15, 'Bob', 'Raccoon', 'Exotic/Wild', NULL, 'Tan', 'Wildlife',7, '2006-03-14', 1,1,'Male', 'Bob is a light colored Raccoon, and is missing the stripes on his tail')

INSERT INTO dbo.PETS(PetId, PetName, FKPetSpecies, FKPet_PetType, FKPetBreed, FKPetColor, FKPetPattern, FKPetPerson, DateLost, DateFound, IsLost, IsSpayNeuter, Gender, UniqueFeatures)
VALUES (16, 'Morty', 'Yellow Bellied Slider', 'Reptile', NULL, 'Standard', 'Wildlife', 4, '2007-12-14', '2008-12-14', 0,1,'Female', 'Morty is missing an arm'),
(17, 'Linda', 'Swan', 'Bird', NULL, 'Red', 'Masked',3, '2017-11-23', '2017-12-04', 0,1,'Female', 'The red on Linda''s face is darker than on her body, and her tail feathers are curled')
SET IDENTITY_INSERT dbo.PETS OFF

--Shelters Table
SET IDENTITY_INSERT dbo.SHELTERS ON
INSERT INTO dbo.SHELTERS(ShelterId, ShelterName, FKShelterLocation) 
VALUES (1, 'Animal Friends', 1),
(2, 'Western Pennsylvania Humane Society',1),
(3, 'Hello Bully', 1),
(4, 'Intergalactic Society for the Protection of Animal Sentients', 3),
(5, 'Great Plains ASPCA',4)
SET IDENTITY_INSERT dbo.SHELTERS OFF

--Shelter Dependancy Tables
--These are Not Real Contacts
SET IDENTITY_INSERT dbo.SHELTER_EMAIL_ADDS ON
INSERT INTO dbo.SHELTER_EMAIL_ADDS(EmailId, ShelterEmail, FKEmailShelter)
VALUES(1, 'shelterDirector@aspca.org',5),
(2, 'pitbullsAreBestDog@HelloBully.com',3),
(3, 'alienDogsAreBestDog@NonTerranDogs.com',4),
(4, 'adoptionOffice@wphs.org',2),
(5, 'humaneOfficer@aspca.org',5)
SET IDENTITY_INSERT dbo.SHELTER_EMAIL_ADDS OFF

--These are Not Real Contacts
SET IDENTITY_INSERT dbo.SHELTER_PHONE_NUMS ON
INSERT INTO dbo.SHELTER_PHONE_NUMS(PhoneId, ShelterPhone, FKPhoneShelter)
VALUES(1, '(412)123-4444',1),
(2, '(412)321-4567',1),
(3, '(999)999-9999',4),
(4, '(456)728-0000',2),
(5, '(709)777-6666',5)
SET IDENTITY_INSERT dbo.SHELTER_PHONE_NUMS OFF