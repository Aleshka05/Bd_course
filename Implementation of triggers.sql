-- Вставка автомобиля с положительной стоимостью (без ошибки)
INSERT INTO Cars (equipment_id, brand, color, cost, sale_availability, model_id)
VALUES (1, 'Toyota', 'Black', 25000, true, 1);

-- Вставка автомобиля с отрицательной стоимостью (с ошибкой)
INSERT INTO Cars (equipment_id, brand, color, cost, sale_availability, model_id)
VALUES (2, 'Ford', 'Blue', -5000, true, 2);
-- Output: ERROR 1644 (45000): Car cost cannot be negative.

-- Вставка пользователя с возрастом 20 лет (без ошибки)
INSERT INTO Users (id_role, name, surname, age, address, phone_number, email, consultant_id)
VALUES (1, 'John', 'Doe', 20, '123 Main St', '555-1234', 'john@example.com', 1);

-- Вставка пользователя с возрастом 16 лет (с ошибкой)
INSERT INTO Users (id_role, name, surname, age, address, phone_number, email, consultant_id)
VALUES (2, 'Alice', 'Smith', 16, '456 Elm St', '555-5678', 'alice@example.com', 2);
-- Output: ERROR 1644 (45000): User must be at least 18 years old.

-- Вставка нового отзыва
INSERT INTO Reviews (user_id, text, rating, publication_date)
VALUES (1, 'Great service!', 5, NULL);

-- Проверка даты публикации
SELECT * FROM Reviews;
-- Output: id | user_id |       text        | rating | publication_date 
--        1 |       1 | Great service!    |      5 | 2024-05-06

-- Вставка заказа, где пользователь и автомобиль разные (без ошибки)
INSERT INTO Orders (user_id, car_id)
VALUES (1, 1);

-- Вставка заказа, где пользователь и автомобиль одинаковые (с ошибкой)
INSERT INTO Orders (user_id, car_id)
VALUES (2, 2);
-- Output: ERROR 1644 (45000): A user cannot order their own car.

-- Обновление статуса доступности продажи автомобиля
UPDATE Cars SET sale_availability = false WHERE id = 1;

-- Проверка удаления заказа при недоступности продажи
SELECT * FROM Orders;
-- Output: id | user_id | car_id 
--        (no rows)