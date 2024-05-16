--Процедура для добавления машины
CREATE OR REPLACE PROCEDURE AddCar(
    equipmentId INTEGER,
    brand VARCHAR(255),
    color VARCHAR(255),
    cost DECIMAL,
    saleAvailability BOOLEAN,
    modelId INTEGER
)
AS $$
BEGIN
    INSERT INTO Cars (equipment_id, brand, color, cost, sale_availability, model_id)
    VALUES (equipmentId, brand, color, cost, saleAvailability, modelId);
END;
$$ LANGUAGE plpgsql;

--Процедура для удалению машины
CREATE OR REPLACE PROCEDURE DeleteCar(
    carId INT
)
AS $$
BEGIN
    DELETE FROM Cars
    WHERE id = carId;
END;
$$ LANGUAGE plpgsql;

--Процедура для добавления консультантов
CREATE OR REPLACE PROCEDURE AddConsultant(
    name VARCHAR(255),
    surname VARCHAR(255),
    email VARCHAR(255)
)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO Consultants (name, surname, email)
    VALUES (name, surname, email);
END;
$$;

--Процедура для удаления консультанта
CREATE OR REPLACE PROCEDURE DeleteConsultant(
    consultantId INT
)
LANGUAGE plpgsql
AS $$
BEGIN
    DELETE FROM Consultants
    WHERE id = consultantId;
END;
$$;

--Процедура для добавления роли
CREATE OR REPLACE PROCEDURE AddRole(
    roleName VARCHAR(255)
)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO Role (role_name)
    VALUES (roleName);
END;
$$;

--Процедура для удаления роли
CREATE OR REPLACE PROCEDURE DeleteRole(
    roleId INT
)
LANGUAGE plpgsql
AS $$
BEGIN
    DELETE FROM Role
    WHERE id_role = roleId;
END;
$$;

--Процедура для добавления отзыва
CREATE OR REPLACE PROCEDURE AddReview(
    userId INTEGER,
    reviewText TEXT,
    rating INTEGER,
    publicationDate DATE
)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO Reviews (user_id, text, rating, publication_date)
    VALUES (userId, reviewText, rating, publicationDate);
END;
$$;

--Процедура для удаления отзыва
CREATE OR REPLACE PROCEDURE DeleteReview(
    reviewId INT
)
LANGUAGE plpgsql
AS $$
BEGIN
    DELETE FROM Reviews
    WHERE id = reviewId;
END;
$$;

--Процедура для добавления заказа
CREATE OR REPLACE PROCEDURE AddOrder(
    userId INTEGER,
    carId INTEGER
)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO Orders (user_id, car_id)
    VALUES (userId, carId);
END;
$$;

--Процедура для удаления заказа
CREATE OR REPLACE PROCEDURE DeleteOrder(
    orderId INT
)
LANGUAGE plpgsql
AS $$
BEGIN
    DELETE FROM Orders
    WHERE id = orderId;
END;
$$;

--Процедура для добавления оборудования
CREATE OR REPLACE PROCEDURE AddEquipment(
    transmission VARCHAR(255),
    salon VARCHAR(255),
    stereoSystem VARCHAR(255),
    engineType VARCHAR(255),
    seatsNumber INTEGER,
    weight INTEGER,
    trunkVolume INTEGER
)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO Equipment (transmission, salon, stereo_system, engine_type, seats_number, weight, trunk_volume)
    VALUES (transmission, salon, stereoSystem, engineType, seatsNumber, weight, trunkVolume);
END;
$$;

--Процедура для удаления оборудования
CREATE OR REPLACE PROCEDURE DeleteEquipment(
    equipmentId INT
)
LANGUAGE plpgsql
AS $$
BEGIN
    DELETE FROM Equipment
    WHERE id = equipmentId;
END;
$$;

-- Процедура для добавления пользователя
CREATE OR REPLACE PROCEDURE Add_User(
    role_id INT,
    user_name VARCHAR(255),
    user_surname VARCHAR(255),
    user_age INT,
    user_address VARCHAR(255),
    user_phone_number VARCHAR(20),
    user_email VARCHAR(255),
    consultant_id INT
)
AS $$
BEGIN
    INSERT INTO Users (id_role, name, surname, age, address, phone_number, email, consultant_id)
    VALUES (role_id, user_name, user_surname, user_age, user_address, user_phone_number, user_email, consultant_id);
END;
$$ LANGUAGE plpgsql;

-- Процедура для обновления данных пользователя
CREATE OR REPLACE PROCEDURE Update_User(
    user_id INT,
    user_name VARCHAR(255),
    user_surname VARCHAR(255),
    user_age INT,
    user_address VARCHAR(255),
    user_phone_number VARCHAR(20),
    user_email VARCHAR(255),
    consultant_id INT
)
AS $$
BEGIN
    UPDATE Users
    SET name = user_name,
        surname = user_surname,
        age = user_age,
        address = user_address,
        phone_number = user_phone_number,
        email = user_email,
        consultant_id = consultant_id
    WHERE id = user_id;
END;
$$ LANGUAGE plpgsql;

-- Процедура для удаления пользователя
CREATE OR REPLACE PROCEDURE Delete_User(user_id INT)
AS $$
BEGIN
    DELETE FROM Users
    WHERE id = user_id;
END;
$$ LANGUAGE plpgsql;

-- Процедура для обновления данных консультанта
CREATE OR REPLACE PROCEDURE update_consultant(
    id INTEGER,
    name VARCHAR(255),
    surname VARCHAR(255),
    email VARCHAR(255)
)
LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE Consultants
    SET name = name,
        surname = surname,
        email = email
    WHERE id = id;
END;
$$;

-- Процедура для обновления данных роли
CREATE OR REPLACE PROCEDURE update_role(
    id INTEGER,
    role_name VARCHAR(255)
)
LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE Role
    SET role_name = role_name
    WHERE id_role = id;
END;
$$;

-- Процедура для обновления данных отзывов
CREATE OR REPLACE PROCEDURE update_review(
    id INTEGER,
    user_id INTEGER,
    text TEXT,
    rating INTEGER,
    publication_date DATE
)
LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE Reviews
    SET user_id = user_id,
        text = text,
        rating = rating,
        publication_date = publication_date
    WHERE id = id;
END;
$$;

-- Процедура для обновления данных заказов
CREATE OR REPLACE PROCEDURE update_order(
    id INTEGER,
    user_id INTEGER,
    car_id INTEGER
)
LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE Orders
    SET user_id = user_id,
        car_id = car_id
    WHERE id = id;
END;
$$;

-- Процедура для обновления данных Комплектации
CREATE OR REPLACE PROCEDURE update_equipment(
    id INTEGER,
    transmission VARCHAR(255),
    salon VARCHAR(255),
    stereo_system VARCHAR(255),
    engine_type VARCHAR(255),
    seats_number INTEGER,
    weight INTEGER,
    trunk_volume INTEGER
)
LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE Equipment
    SET transmission = transmission,
        salon = salon,
        stereo_system = stereo_system,
        engine_type = engine_type,
        seats_number = seats_number,
        weight = weight,
        trunk_volume = trunk_volume
    WHERE id = id;
END;
$$;

-- Процедура для обновления данных автомобилей
CREATE OR REPLACE PROCEDURE update_car(
    id INTEGER,
    equipment_id INTEGER,
    brand VARCHAR(255),
    color VARCHAR(255),
    cost DECIMAL,
    sale_availability BOOLEAN,
    model_id INTEGER
)
LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE Cars
    SET equipment_id = equipment_id,
        brand = brand,
        color = color,
        cost = cost,
        sale_availability = sale_availability,
        model_id = model_id
    WHERE id = id;
END;
$$;

