CREATE TABLE "category" (
    "category_id" VARCHAR(6)  PRIMARY KEY NOT NULL,
    "category" VARCHAR(25)   NOT NULL
);

CREATE TABLE "subcategory" (
    "subcategory_id" VARCHAR(10) PRIMARY KEY NOT NULL,
    "subcategory" VARCHAR(25)  NOT NULL
);

CREATE TABLE "contacts" (
    "contact_id" INT  PRIMARY KEY NOT NULL,
    "first_name" VARCHAR(25),
    "last_name" VARCHAR(30),
    "email" VARCHAR(50)   
);

CREATE TABLE "campaign" (
    "cf_id" INT PRIMARY KEY NOT NULL,
    "contact_id" INT   NOT NULL,
    "company_name" VARCHAR(60),
    "description" VARCHAR(100),
    "goal" FLOAT,
    "pledged" FLOAT ,
    "outcome" VARCHAR (12),
    "backers_count" INT,
    "country" VARCHAR(3),
    "currency" VARCHAR(5),
    "launch_date" VARCHAR(40),
    "end_date" VARCHAR(40),
    "category_id" VARCHAR(6) NOT NULL,
    "subcategory_id" VARCHAR(10) NOT NULL,
		FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
		FOREIGN KEY (category_id) REFERENCES category(category_id),
		FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);


SELECT * 
FROM category;

SELECT * 
FROM subcategory;

SELECT * 
FROM contacts;

SELECT * 
FROM campaign;