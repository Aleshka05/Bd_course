CREATE TABLE Consultants (
id SERIAL PRIMARY KEY,
name VARCHAR(255) NOT NULL,
surname VARCHAR(255) NOT NULL,
email VARCHAR(255) UNIQUE NOT NULL
);
CREATE TABLE Role (
id_role SERIAL PRIMARY KEY,
role_name VARCHAR(255) UNIQUE NOT NULL
);

-- Table for Users
CREATE TABLE Users (
id SERIAL PRIMARY KEY,
id_role INTEGER REFERENCES Role(id_role) NOT NULL,
name VARCHAR(255) NOT NULL,
surname VARCHAR(255) NOT NULL,
age INTEGER,
address VARCHAR(255),
phone_number VARCHAR(20),
email VARCHAR(255) UNIQUE NOT NULL,
consultant_id INTEGER REFERENCES Consultants(id)
);

-- Table for Reviews
CREATE TABLE Reviews (
id SERIAL PRIMARY KEY,
user_id INTEGER REFERENCES Users(id) NOT NULL,
text TEXT NOT NULL,
rating INTEGER CHECK (rating >= 1 AND rating <= 5),
publication_date DATE NOT NULL
);

-- Table for Orders
CREATE TABLE Orders (
id SERIAL PRIMARY KEY,
user_id INTEGER REFERENCES Users(id) NOT NULL,
car_id INTEGER REFERENCES Cars(id) NOT NULL
);

-- Table for Equipment
CREATE TABLE Equipment (
id SERIAL PRIMARY KEY,
transmission VARCHAR(255),
salon VARCHAR(255),
stereo_system VARCHAR(255),
engine_type VARCHAR(255),
seats_number INTEGER,
weight INTEGER,
trunk_volume INTEGER
);




-- Table for Cars
CREATE TABLE Cars (
id SERIAL PRIMARY KEY,
equipment_id INTEGER REFERENCES Equipment(id) NOT NULL,
brand VARCHAR(255) NOT NULL,
color VARCHAR(255),
cost DECIMAL NOT NULL,
sale_availability BOOLEAN NOT NULL,
model_id INTEGER 
);









CALL Add_User(2, 'Aleksey', 'Savchuk', 18, 'Minsk', '444923126', 'Savchuk017@gmail.com', 1 );
CALL Add_User(2, 'Vladislav', 'Kveckiy', 19, 'Minsk', '296657231', 'Vlados10@gmail.com', 2 );
CALL Add_User(2, 'Veronika', 'Strelkovskay', 18, 'Lida', '296647251', 'Nika322@gmail.com', 2 );

INSERT INTO Consultants (name, surname, email)
VALUES ('Artem', 'Stepaneko', 'Artem12@gmail.com'),
       ('Nikita', 'Tihonenko', 'Nikita@gmail.com'),
       ('Vladislav', 'Petrikevich', 'Vladick@example.com');



INSERT INTO Equipment (transmission, salon, stereo_system, engine_type, seats_number, weight, trunk_volume)
VALUES ('Automatic', 'Leather', 'Premium', 'Petrol', 5, 1500, 500);