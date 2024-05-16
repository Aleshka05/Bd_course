GRANT SELECT, INSERT, UPDATE ON users TO Consultant;
GRANT SELECT, INSERT, UPDATE ON reviews TO Consultant;
GRANT SELECT, INSERT, UPDATE ON orders TO Consultant;
GRANT SELECT, INSERT, UPDATE ON equipment TO Consultant;
GRANT SELECT, INSERT, UPDATE ON cars TO Consultant;

GRANT EXECUTE ON FUNCTION TABLE_USERS() TO Consultant;
 GRANT EXECUTE ON FUNCTION get_user(user_id INT) TO Consultant;
GRANT EXECUTE ON FUNCTION table_cars()TO Consultant;
GRANT EXECUTE ON FUNCTION get_cars(cars_id INT)TO Consultant;
GRANT EXECUTE ON FUNCTION get_equipment(equipment_id INT)TO Consultant;
GRANT EXECUTE ON FUNCTION table_equipments()TO Consultant;
GRANT EXECUTE ON FUNCTION get_orders(order_id INT)TO Consultant;
GRANT EXECUTE ON FUNCTION table_orders()TO Consultant;
GRANT EXECUTE ON FUNCTION get_reviews(review_id INT)TO Consultant;
GRANT EXECUTE ON FUNCTION table_reviews()TO Consultant;

GRANT EXECUTE ON PROCEDURE AddReview(
    userId INTEGER,
    reviewText TEXT,
    rating INTEGER,
    publicationDate DATE
)TO Consultant;

GRANT EXECUTE ON PROCEDURE DeleteReview(
    reviewId INT
)TO Consultant;


GRANT EXECUTE ON PROCEDURE AddOrder(
    userId INTEGER,
    carId INTEGER
)TO Consultant;
	
GRANT EXECUTE ON PROCEDURE DeleteOrder(
    orderId INT
)TO Consultant;
	
GRANT EXECUTE ON PROCEDURE Add_User(
    role_id INT,
    user_name VARCHAR(255),
    user_surname VARCHAR(255),
    user_age INT,
    user_address VARCHAR(255),
    user_phone_number VARCHAR(20),
    user_email VARCHAR(255),
    consultant_id INT
)TO Consultant;

GRANT EXECUTE ON PROCEDURE Update_User(
    user_id INT,
    user_name VARCHAR(255),
    user_surname VARCHAR(255),
    user_age INT,
    user_address VARCHAR(255),
    user_phone_number VARCHAR(20),
    user_email VARCHAR(255),
    consultant_id INT
)TO Consultant;

GRANT EXECUTE ON PROCEDURE Delete_User(user_id INT)TO Consultant;

GRANT EXECUTE ON PROCEDURE update_review(
    id INTEGER,
    user_id INTEGER,
    text TEXT,
    rating INTEGER,
    publication_date DATE
)TO Consultant;

GRANT EXECUTE ON PROCEDURE update_order(
    id INTEGER,
    user_id INTEGER,
    car_id INTEGER
)TO Consultant;
