--Индекс для таблицы Users, чтобы ускорить поиск по полю name и surname:
CREATE INDEX idx_users_name_surname ON Users (name, surname);

--Индекс для таблицы Reviews, чтобы ускорить поиск по полю publication_date:
CREATE INDEX idx_reviews_publication_date ON Reviews (publication_date);

-- Индекс для таблицы Cars, чтобы ускорить поиск по полю brand
CREATE INDEX idx_cars_brand ON Cars (brand);

-- Индекс для таблицы Users по полю email
CREATE INDEX idx_users_email ON Users (email);

-- Индекс для таблицы Cars по полю cost
CREATE INDEX idx_cars_cost ON Cars (cost);

-- Индекс для таблицы Cars по полю model_id
CREATE INDEX idx_cars_model_id ON Cars (model_id);

-- Индекс для таблицы Equipment по полю transmission
CREATE INDEX idx_equipment_transmission ON Equipment (transmission);

-- Индекс для таблицы Equipment по полю weight
CREATE INDEX idx_equipment_weight ON Equipment (weight);
