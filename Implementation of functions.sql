-- Вывод таблицы пользователей
SELECT * FROM table_users();

-- Выборка данных пользователя по идентификатору
SELECT * FROM get_user(1);

-- Вывод таблицы консультантов
SELECT * FROM table_consultants();

-- Выборка данных консультанта по идентификатору
SELECT * FROM get_consultant(1);

-- Вывод таблицы автомобилей
SELECT * FROM table_cars();

-- Выборка данных автомобиля по идентификатору
SELECT * FROM get_cars(1);

-- Выборка данных комплектации по идентификатору
SELECT * FROM get_equipment(1);

-- Вывод таблицы комплектаций
SELECT * FROM table_equipments();

-- Выборка данных заказа по идентификатору
SELECT * FROM get_orders(1);

-- Вывод таблицы заказов
SELECT * FROM table_orders();

-- Выборка данных отзыва по идентификатору
SELECT * FROM get_reviews(1);

-- Вывод таблицы отзывов
SELECT * FROM table_reviews();

-- Выборка данных роли по идентификатору
SELECT * FROM get_role(1);

-- Вывод таблицы ролей
SELECT * FROM table_role();