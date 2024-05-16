GRANT SELECT, INSERT, UPDATE ON users TO Manager;
GRANT SELECT, INSERT, UPDATE ON reviews TO Manager;
GRANT SELECT, INSERT, UPDATE ON orders TO Manager;
GRANT SELECT, INSERT, UPDATE ON equipment TO Manager;
GRANT SELECT, INSERT, UPDATE ON cars TO Manager;
GRANT SELECT, INSERT, UPDATE ON consultants TO Manager;


GRANT EXECUTE ON FUNCTION TABLE_USERS() TO Manager;
 GRANT EXECUTE ON FUNCTION get_user(user_id INT) TO Manager;
GRANT EXECUTE ON FUNCTION table_cars()TO Manager;
GRANT EXECUTE ON FUNCTION get_cars(cars_id INT)TO Manager;
GRANT EXECUTE ON FUNCTION get_equipment(equipment_id INT)TO Manager;
GRANT EXECUTE ON FUNCTION table_equipments()TO Manager;
GRANT EXECUTE ON FUNCTION get_orders(order_id INT)TO Manager;
GRANT EXECUTE ON FUNCTION table_orders()TO Manager;
GRANT EXECUTE ON FUNCTION get_reviews(review_id INT)TO Manager;
GRANT EXECUTE ON FUNCTION table_reviews()TO Manager;
GRANT EXECUTE ON FUNCTION get_consultant(consultant_id INT)TO Manager;
GRANT EXECUTE ON FUNCTION table_consultants()TO Manager;

GRANT EXECUTE ON PROCEDURE AddReview(
    userId INTEGER,
    reviewText TEXT,
    rating INTEGER,
    publicationDate DATE
)TO Manager;

GRANT EXECUTE ON PROCEDURE DeleteReview(
    reviewId INT
)TO Manager;


GRANT EXECUTE ON PROCEDURE AddOrder(
    userId INTEGER,
    carId INTEGER
)TO Manager;
	
GRANT EXECUTE ON PROCEDURE DeleteOrder(
    orderId INT
)TO Manager;
	
GRANT EXECUTE ON PROCEDURE Add_User(
    role_id INT,
    user_name VARCHAR(255),
    user_surname VARCHAR(255),
    user_age INT,
    user_address VARCHAR(255),
    user_phone_number VARCHAR(20),
    user_email VARCHAR(255),
    consultant_id INT
)TO Manager;

GRANT EXECUTE ON PROCEDURE Update_User(
    user_id INT,
    user_name VARCHAR(255),
    user_surname VARCHAR(255),
    user_age INT,
    user_address VARCHAR(255),
    user_phone_number VARCHAR(20),
    user_email VARCHAR(255),
    consultant_id INT
)TO Manager;

GRANT EXECUTE ON PROCEDURE Delete_User(user_id INT)TO Consultant;

GRANT EXECUTE ON PROCEDURE update_review(
    id INTEGER,
    user_id INTEGER,
    text TEXT,
    rating INTEGER,
    publication_date DATE
)TO Manager;

GRANT EXECUTE ON PROCEDURE update_order(
    id INTEGER,
    user_id INTEGER,
    car_id INTEGER
)TO Manager;


GRANT EXECUTE ON PROCEDURE AddConsultant(
    name VARCHAR(255),
    surname VARCHAR(255),
    email VARCHAR(255)
)TO Manager;
GRANT EXECUTE ON PROCEDURE DeleteConsultant(
    consultantId INT
)TO Manager;
GRANT EXECUTE ON PROCEDURE AddEquipment(
    transmission VARCHAR(255),
    salon VARCHAR(255),
    stereoSystem VARCHAR(255),
    engineType VARCHAR(255),
    seatsNumber INTEGER,
    weight INTEGER,
    trunkVolume INTEGER
)TO Manager;
GRANT EXECUTE ON PROCEDURE DeleteEquipment(
    equipmentId INT
)TO Manager;


GRANT EXECUTE ON PROCEDURE update_consultant(
    id INTEGER,
    name VARCHAR(255),
    surname VARCHAR(255),
    email VARCHAR(255)
)TO Manager;