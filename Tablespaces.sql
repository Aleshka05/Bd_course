CREATE TABLESPACE consultants_tablespace
LOCATION 'D:/PostgreSQL/data/consultants';

CREATE TABLESPACE roles_tablespace 
LOCATION 'D:/PostgreSQL/data/role';

CREATE TABLESPACE users_tablespace
LOCATION 'D:/PostgreSQL/data/users';  

CREATE TABLESPACE reviews_tablespace
LOCATION 'D:/PostgreSQL/data/reviews';

CREATE TABLESPACE orders_tablespace
LOCATION 'D:/PostgreSQL/data/orders';

CREATE TABLESPACE equipment_tablespace
LOCATION 'D:/PostgreSQL/data/equipment';

CREATE TABLESPACE cars_tablespace
LOCATION 'D:/PostgreSQL/data/cars';

SHOW data_directory;


ALTER TABLE Consultants SET TABLESPACE consultants_tablespace;
ALTER TABLE Role SET TABLESPACE roles_tablespace;
ALTER TABLE Users SET TABLESPACE users_tablespace;
ALTER TABLE Reviews SET TABLESPACE reviews_tablespace;
ALTER TABLE Orders SET TABLESPACE orders_tablespace;
ALTER TABLE Equipment SET TABLESPACE equipment_tablespace;
ALTER TABLE Cars SET TABLESPACE cars_tablespace;