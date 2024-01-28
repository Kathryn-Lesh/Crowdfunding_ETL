-- Drop the table if it exists
DROP TABLE IF EXISTS contacts, category, subcategory, 
campaign CASCADE;

-- Create the contacts table
CREATE TABLE contacts (
    contact_id INT NOT NULL,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20) NOT NULL,
    email VARCHAR(50) NOT NULL,
    PRIMARY KEY (contact_id)
);

-- Select all rows from the contacts table
SELECT * FROM contacts;

-- Create the category table
CREATE TABLE category (
    category_id CHAR(4) NOT NULL,
    category VARCHAR(20) NOT NULL,
    PRIMARY KEY (category_id)
);

-- Select all rows from the category table
SELECT * FROM category;

-- Create the subcategory table
CREATE TABLE subcategory (
    subcategory_id VARCHAR(8) NOT NULL,
    subcategory VARCHAR(20) NOT NULL,
    PRIMARY KEY (subcategory_id)
);

-- Select all rows from the subcategory table
SELECT * FROM subcategory;

-- Create the campaign table
CREATE TABLE campaign (
    cf_id INT NOT NULL,
    contact_id INT NOT NULL,
    company_name VARCHAR(100) NOT NULL,
	description VARCHAR(100) NOT NULL,
    goal DECIMAL NOT NULL,
    pledged DECIMAL NOT NULL,
    outcome VARCHAR(20) NOT NULL,
    backers_count INT NOT NULL,
    country CHAR(2) NOT NULL,
    currency CHAR(3) NOT NULL,
    launched_date DATE NOT NULL,
    end_date DATE NOT NULL,
    category_id CHAR(4) NOT NULL,
    subcategory_id VARCHAR(8) NOT NULL,
    PRIMARY KEY (cf_id),
    FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
    FOREIGN KEY (category_id) REFERENCES category(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);

-- Select all rows from the campaign table
SELECT * FROM campaign;

