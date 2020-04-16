CREATE TABLE ProjectCountry (
    country VARCHAR(50) NOT NULL PRIMARY KEY
    );


CREATE TABLE ProjectCategory (
    main_category VARCHAR(50) NOT NULL PRIMARY KEY
    );
    
    
CREATE TABLE Project (
    projectid NUMBER(20,0) NOT NULL PRIMARY KEY,
    title VARCHAR(50) NOT NULL,
    country VARCHAR(20) NOT NULL REFERENCES ProjectCountry(country),
    main_category VARCHAR(25) NOT NULL REFERENCES ProjectCategory(main_category)
    );




CREATE TABLE CollectionTime (
    projectid NUMBER(20,0) NOT NULL PRIMARY KEY,
    launched TIMESTAMP NOT NULL
    );
       

CREATE TABLE CollectionStatus (
    status VARCHAR(50) NOT NULL PRIMARY KEY
    ); 


CREATE TABLE Collection(
    projectid NUMBER(20,0) NOT NULL PRIMARY KEY,
    collected NUMBER(20,0) NOT NULL,
    goal NUMBER(20,0) NOT NULL CHECK (goal > 0),
    currancy VARCHAR(15) NOT NULL,
    status VARCHAR(20) NOT NULL    
    );
