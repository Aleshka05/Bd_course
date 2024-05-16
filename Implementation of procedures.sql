-- Вызов процедуры AddCar
CALL AddCar(1, 'Toyota', 'Red', 25000, true, 1);

-- Вызов процедуры DeleteCar
CALL DeleteCar(1);

-- Вызов процедуры AddConsultant
CALL AddConsultant('John', 'Doe', 'john@example.com');

-- Вызов процедуры DeleteConsultant
CALL DeleteConsultant(1);

-- Вызов процедуры AddRole
CALL AddRole('Admin');

-- Вызов процедуры DeleteRole
CALL DeleteRole(1);

-- Вызов процедуры AddReview
CALL AddReview(1, 'Great car!', 5, '2024-05-06');

-- Вызов процедуры DeleteReview
CALL DeleteReview(1);

-- Вызов процедуры AddOrder
CALL AddOrder(1, 1);

-- Вызов процедуры DeleteOrder
CALL DeleteOrder(1);

-- Вызов процедуры AddEquipment
CALL AddEquipment('Automatic', 'Leather', 'Premium sound system', 'Petrol', 5, 1500, 500);

-- Вызов процедуры DeleteEquipment
CALL DeleteEquipment(1);

-- Вызов процедуры Add_User
CALL Add_User(1, 'John', 'Doe', 30, '123 Main St', '123-456-7890', 'john@example.com', 1);

-- Вызов процедуры Update_User
CALL Update_User(1, 'John', 'Doe', 35, '456 Elm St', '987-654-3210', 'john@example.com', 2);

-- Вызов процедуры Delete_User
CALL Delete_User(1);

-- Вызов процедуры update_consultant
CALL update_consultant(1, 'John', 'Smith', 'john@example.com');

-- Вызов процедуры update_role
CALL update_role(1, 'Superuser');

-- Вызов процедуры update_review
CALL update_review(1, 2, 'Updated review text', 4, '2024-05-06');

-- Вызов процедуры update_order
CALL update_order(1, 2, 2);

-- Вызов процедуры update_equipment
CALL update_equipment(1, 'Manual', 'Fabric', 'Standard sound system', 'Diesel', 4, 1200, 400);

-- Вызов процедуры update_car
CALL update_car(1, 1, 'Toyota', 'Blue', 28000, false, 1);