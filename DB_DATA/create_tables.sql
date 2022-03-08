CREATE TABLE app_user(
   id INT AUTO_INCREMENT,
   email VARCHAR(255),
   password VARCHAR(255),
   deleted BOOLEAN,
   PRIMARY KEY(id, email)
);

CREATE TABLE list(
   id INT AUTO_INCREMENT,
   name VARCHAR(50),
   color VARCHAR(50),
   last_edit DATE,
   deleted BOOLEAN,
   app_user_id INT NOT NULL,
   email VARCHAR(255) NOT NULL,
   PRIMARY KEY(id),
   FOREIGN KEY(app_user_id) REFERENCES app_user(id)
);

CREATE TABLE item(
   id INT AUTO_INCREMENT,
   content TEXT,
   done BOOLEAN,
   deleted BOOLEAN,
   list_id INT NOT NULL,
   PRIMARY KEY(id),
   FOREIGN KEY(list_id) REFERENCES list(id)
);
