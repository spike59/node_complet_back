CREATE TABLE app_user(
   id INT AUTO_INCREMENT,
   email VARCHAR(255),
   password VARCHAR(255),
   role VARCHAR(50) NOT NULL DEFAULT 'User',
   deleted BOOLEAN DEFAULT '0',
   PRIMARY KEY(id, email)
);

CREATE TABLE list(
   id INT AUTO_INCREMENT,
   name VARCHAR(50),
   color VARCHAR(50),
   last_edit DATE,
   deleted BOOLEAN DEFAULT '0',
   app_user_id INT NOT NULL,
   email VARCHAR(255) NOT NULL,
   PRIMARY KEY(id),
   FOREIGN KEY(app_user_id) REFERENCES app_user(id)
);

CREATE TABLE item(
   id INT AUTO_INCREMENT,
   content TEXT,
   done BOOLEAN,
   deleted BOOLEAN DEFAULT '0',
   list_id INT NOT NULL,
   PRIMARY KEY(id),
   FOREIGN KEY(list_id) REFERENCES list(id)
);
