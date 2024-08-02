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
-- Besser: PWDs verschlüsselt mit SHA1! 

INSERT INTO boo.users(userName,firstName,familyName,userpwd)
VALUES("soraya","Sorayya","Khawari",SHA1('1234'));

INSERT INTO boo.users(userName,firstName,familyName,userpwd)
VALUES("johndoe123","John","Doe",SHA1('7#55'));

INSERT INTO boo.users(userName,firstName,familyName,userpwd)
VALUES("emilybrown22","Emily","Brown",SHA1('user12345'));
/* Inhalte : Ergebnistabelle */
-- SELECT * FROM boo.users;

/* Änderungen an bestehender Tabelle / Struktur*/
ALTER TABLE
    boo.users
ADD
    userPLZ VARCHAR(5) NOT NULL DEFAULT "00000"
;

/* Struktur */
DESCRIBE boo.users;
SELECT * FROM boo.users;

/*update von Daten*/
-- 


UPDATE boo.users SET userPLZ = "80199" WHERE id = 1;
UPDATE boo.users SET userPLZ = "80193" WHERE firstName = 'John';
UPDATE boo.users SET userPLZ = "80194" WHERE familyName = 'Brown';
SELECT * FROM boo.users;