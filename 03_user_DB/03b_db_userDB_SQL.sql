/* USER TAB. Version 2 */

/* Table users */
DROP TABLE IF EXISTS boo.users;

CREATE TABLE IF NOT EXISTS boo.users
(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    userName VARCHAR(20) NOT NULL UNIQUE,
    userPwd VARCHAR(40) NOT NULL,
    familyName VARCHAR(20) NOT NULL,
    firstName VARCHAR(20) NOT NULL
);

/* Struktur */
DESCRIBE boo.users;

/* Daten */
-- Nachteil: PWDs liegen offen! 

INSERT INTO boo.users(userName,firstName,familyName,userpwd)
VALUES("soraya","Sorayya","Khawari",'1234');

INSERT INTO boo.users(userName,firstName,familyName,userpwd)
VALUES("johndoe123","Doe","John",'7#55');

INSERT INTO boo.users(userName,firstName,familyName,userpwd)
VALUES("emilybrown22","Brown","Emily",'user12345');
/* Inhalte : Ergebnistabelle */
SELECT * FROM boo.users;