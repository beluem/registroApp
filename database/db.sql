CREATE DATABASE database_registro;

use database_registro;

CREATE TABLE users(
    id INT(11) NOT NULL,
    username VARCHAR(16) NOT NULL,
    password VARCHAR(60) NOT NULL,
    fullname VARCHAR(100) NOT NULL
);

ALTER TABLE users
    ADD PRIMARY KEY(id);


     

CREATE TABLE registro(
    id_registro INT(11) NOT NULL,
    medio VARCHAR(30) NOT NULL,
    sistema VARCHAR(30) NOT NULL,
    origen_inconveniente VARCHAR(30) NOT NULL,
    motivo VARCHAR(300),
    solucion VARCHAR(300),
    user_id INT(11),
    created_at TIMESTAMP NOT NULL DEFAULT current_timestamp,
    CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES users(id)
);

ALTER TABLE registro 
    ADD PRIMARY KEY(id_registro);

 

