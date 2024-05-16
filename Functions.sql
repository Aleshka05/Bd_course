-- Функция для вывода таблицы пользователей
CREATE OR REPLACE FUNCTION TABLE_USERS()
  RETURNS SETOF PUBLIC.USERS
AS $$
BEGIN
  RETURN QUERY
    SELECT *
    FROM USERS;
END;
$$ LANGUAGE plpgsql;

-- Функция для выборки данных пользователя
CREATE OR REPLACE FUNCTION Get_User(user_id INT)
RETURNS SETOF PUBLIC.USERS
AS $$
BEGIN
RETURN QUERY 
    SELECT *
    FROM Users
    WHERE "id" = user_id;
END;
$$ LANGUAGE plpgsql;

-- Функция для вывода таблицы консультанотов
CREATE OR REPLACE FUNCTION TABLE_CONSULTANTS()
  RETURNS SETOF PUBLIC.CONSULTANTS
AS $$
BEGIN
  RETURN QUERY
    SELECT *
    FROM CONSULTANTS;
END;
$$ LANGUAGE plpgsql;

-- Функция для выборки данных консультанта
CREATE OR REPLACE FUNCTION Get_Consultant(consultant_id INT)
RETURNS SETOF PUBLIC.CONSULTANTS
AS $$
BEGIN
RETURN QUERY 
    SELECT *
    FROM Consultants
    WHERE "id" = consultant_id;
END;
$$ LANGUAGE plpgsql;

-- Функция для вывода таблицы автомобилей
CREATE OR REPLACE FUNCTION TABLE_Cars()
  RETURNS SETOF PUBLIC.CARS
AS $$
BEGIN
  RETURN QUERY
    SELECT *
    FROM CARS;
END;
$$ LANGUAGE plpgsql;

-- Функция для выборки данных автомобилей
CREATE OR REPLACE FUNCTION Get_Cars(cars_id INT)
RETURNS SETOF PUBLIC.CARS
AS $$
BEGIN
RETURN QUERY 
    SELECT *
    FROM Cars
    WHERE "id" = cars_id;
END;
$$ LANGUAGE plpgsql;

-- Функция для выборки данных комплектации 
CREATE OR REPLACE FUNCTION Get_Equipment(equipment_id INT)
RETURNS SETOF PUBLIC.EQUIPMENT
AS $$
BEGIN
	RETURN QUERY
	SELECT * 
	FROM Equipment
	where "id" = equipment_id;
END;
$$ LANGUAGE plpgsql;

-- Функция для вывода таблицы комплектации
CREATE OR REPLACE FUNCTION Table_Equipments()
  RETURNS SETOF PUBLIC.EQUIPMENT
AS $$
BEGIN
  RETURN QUERY
    SELECT *
    FROM Equipment;
END;
$$ LANGUAGE plpgsql;

-- Функция для выборки данных заказа
CREATE OR REPLACE FUNCTION Get_Orders(order_id INT)
RETURNS SETOF PUBLIC.ORDERS
AS $$
BEGIN
	RETURN QUERY
	SELECT * 
	FROM Orders
	where "id" = order_id;
END;
$$ LANGUAGE plpgsql;

-- Функция для вывода таблицы заказов
CREATE OR REPLACE FUNCTION Table_Orders()
RETURNS SETOF PUBLIC.ORDERS
AS $$
BEGIN 
	RETURN QUERY
	SELECT *
	FROM ORDERS;
END;
$$ LANGUAGE plpgsql;


-- Функция для выборки данных отзыва
CREATE OR REPLACE FUNCTION Get_Reviews(review_id INT)
RETURNS SETOF PUBLIC.Reviews
AS $$
BEGIN
	RETURN QUERY
	SELECT * 
	FROM Reviews
	where "id" = review_id;
END;
$$ LANGUAGE plpgsql;

-- Функция для вывода таблицы отзывов
CREATE OR REPLACE FUNCTION Table_Reviews()
RETURNS SETOF PUBLIC.Reviews
AS $$
BEGIN 
	RETURN QUERY
	SELECT *
	FROM Reviews;
END;
$$ LANGUAGE plpgsql;

-- Функция для выборки данных роли
CREATE OR REPLACE FUNCTION Get_Role(role_id INT)
RETURNS SETOF PUBLIC.Role
AS $$
BEGIN
	RETURN QUERY
	SELECT * 
	FROM Role
	where "id" = role_id;
END;
$$ LANGUAGE plpgsql;

-- Функция для вывода таблицы роли
CREATE OR REPLACE FUNCTION Table_Role()
RETURNS SETOF PUBLIC.Role
AS $$
BEGIN 
	RETURN QUERY
	SELECT *
	FROM Role;
END;
$$ LANGUAGE plpgsql;




