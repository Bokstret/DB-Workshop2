CREATE TABLE ProjectCountry (
    country VARCHAR(50) NOT NULL PRIMARY KEY
    );


CREATE TABLE ProjectCategory (
    category VARCHAR(50) NOT NULL PRIMARY KEY
    );
    
    
CREATE TABLE Project (
    id NUMBER(20,0) NOT NULL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    country VARCHAR(20) NOT NULL REFERENCES ProjectCountry(country),
    category VARCHAR(25) NOT NULL REFERENCES ProjectCategory(category)
    );




CREATE TABLE CollectionTime (
    id NUMBER(20,0) NOT NULL PRIMARY KEY,
    launched VARCHAR(50) NOT NULL,
    deadline VARCHAR(50) NOT NULL
    );
       

CREATE TABLE CollectionStatus (
    status VARCHAR(50) NOT NULL PRIMARY KEY
    ); 


CREATE TABLE Collection(
    id NUMBER(20,0) NOT NULL PRIMARY KEY,
    pledged NUMBER(20,0) NOT NULL,
    goal NUMBER(20,0) NOT NULL CHECK (goal > 0),
    currancy VARCHAR(15) NOT NULL,
    status VARCHAR(20) NOT NULL    
    );
