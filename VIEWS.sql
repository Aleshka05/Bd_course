--Представление для отображения информации о пользователях (Users) вместе с их ролью (Role):
CREATE VIEW UsersWithRoleView AS
SELECT u.id, u.name, u.surname, u.email, r.role_name
FROM Users u
JOIN Role r ON u.id_role = r.id_role;

SELECT *
FROM UsersWithRoleView;

--Представление для отображения информации о заказах (Orders) вместе с деталями автомобиля (Cars):
CREATE VIEW OrdersWithCarDetailsView AS
SELECT o.id, u.name AS user_name, u.surname AS user_surname, c.brand, c.model_id, c.color, c.cost
FROM Orders o
JOIN Users u ON o.user_id = u.id
JOIN Cars c ON o.car_id = c.id;

SELECT * FROM OrdersWithCarDetailsView;

--Представление для отображения информации о пользователе (Users) и его отзывах (Reviews):
CREATE VIEW UserReviewsView AS
SELECT u.id, u.name, u.surname, r.text, r.rating, r.publication_date
FROM Users u
JOIN Reviews r ON u.id = r.user_id;

SELECT *
FROM UserReviewsView;