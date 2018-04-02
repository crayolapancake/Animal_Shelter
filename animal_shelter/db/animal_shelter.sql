DROP TABLE animals;
DROP TABLE owners;

CREATE TABLE owners (
  id SERIAL8 primary key,
  name VARCHAR(255),
  pets VARCHAR(255)     --how will this appear on the table? do I nee a hash of pets?
);

CREATE TABLE animals (
  id SERIAL8 primary key,
  name VARCHAR(255),
  species VARCHAR(255),
  age INT8,
  -- adoptabe BOOLEAN
  owner_id INT8 REFERENCES owners(id)
);
