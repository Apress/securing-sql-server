CREATE TABLE ##Passwords
(
[Password]	NVARCHAR(128)	
) ;

INSERT INTO ##Passwords
VALUES ('123456'),
('password'),
('12345678'),
('qwerty'),
('12345'),
('123456789'),
('football'),
('1234'),
('1234567'),
('baseball'),
('welcome'),
('1234567890'),
('abc123'),
('111111'),
('1qaz2wsx'),
('dragon'),
('master'),
('monkey'),
('letmein'),
('login'),
('princess'),
('qwertyuiop'),
('solo'),
('passw0rd'),
('starwars') ;

SELECT l.name,
       p.[password]
FROM sys.sql_logins l
CROSS JOIN ##Passwords p
WHERE PWDCOMPARE(p.Password,l.password_hash) = 1 ;


DROP TABLE ##Passwords ;
