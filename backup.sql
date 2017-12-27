
CREATE DATABASE CondorTest;

USE CondorTest;

CREATE TABLE User_profile( id_user int PRIMARY KEY NOT NULL,
                          nm_first varchar(30)  NULL,
                          nm_middle varchar(30)  NULL,
                          nm_last varchar(30)  NULL);
                          

CREATE TABLE User_address(id_address int PRIMARY KEY NOT NULL,
                          id_user int ,
                          CONSTRAINT FK_id_user FOREIGN KEY(id_user)
                          REFERENCES User_profile(id_user));

                          
CREATE TABLE User_role(id_user int NOT NULL,
                       cd_role_type varchar(30)  NOT NULL,
                       id_entity int  NOT NULL,
                       in_status int NOT NULL, 
                       PRIMARY KEY(id_user,cd_role_type,id_entity),
                       CONSTRAINT FK_user FOREIGN KEY (id_user)
                       REFERENCES User_profile(id_user));

                          