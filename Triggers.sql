-- Создание триггера для таблицы Cars
CREATE OR REPLACE FUNCTION check_car_cost()
RETURNS TRIGGER AS $$
BEGIN
  IF NEW.cost < 0 THEN
    RAISE EXCEPTION 'Car cost cannot be negative.';
  END IF;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_cars_check_cost
BEFORE INSERT OR UPDATE ON Cars
FOR EACH ROW
EXECUTE FUNCTION check_car_cost();


-- Создание функции для проверки возраста пользователя
CREATE OR REPLACE FUNCTION check_user_age()
RETURNS TRIGGER AS $$
BEGIN
  IF NEW.age < 18 THEN
    RAISE EXCEPTION 'User must be at least 18 years old.';
  END IF;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Создание триггера для таблицы Users
CREATE TRIGGER trigger_users_check_age
BEFORE INSERT OR UPDATE ON Users
FOR EACH ROW
EXECUTE FUNCTION check_user_age();

-- Создание функции для установки даты публикации отзыва
CREATE OR REPLACE FUNCTION set_review_publication_date()
RETURNS TRIGGER AS $$
BEGIN
  NEW.publication_date = CURRENT_DATE;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Создание триггера для таблицы Reviews
CREATE TRIGGER trigger_reviews_set_publication_date
BEFORE INSERT ON Reviews
FOR EACH ROW
EXECUTE FUNCTION set_review_publication_date();

-- Создание функции для проверки пользователя при оформлении заказа
CREATE OR REPLACE FUNCTION check_order_user()
RETURNS TRIGGER AS $$
BEGIN
  IF NEW.user_id = (SELECT user_id FROM Cars WHERE id = NEW.car_id) THEN
    RAISE EXCEPTION 'A user cannot order their own car.';
  END IF;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Создание триггера для таблицы Orders
CREATE TRIGGER trigger_orders_check_user
BEFORE INSERT ON Orders
FOR EACH ROW
EXECUTE FUNCTION check_order_user();

-- Создание функции для проверки доступности продажи автомобиля
CREATE OR REPLACE FUNCTION check_car_sale_availability()
RETURNS TRIGGER AS $$
BEGIN
  IF NEW.sale_availability = FALSE AND OLD.sale_availability = TRUE THEN
    DELETE FROM Orders WHERE car_id = NEW.id;
  END IF;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Создание триггера для таблицы Cars
CREATE TRIGGER trigger_cars_check_sale_availability
BEFORE UPDATE ON Cars
FOR EACH ROW
EXECUTE FUNCTION check_car_sale_availability();