-- Find All the Toys for Hermione's cats
-- Your code here

SELECT toys.name FROM toys JOIN owners JOIN cat_owners JOIN cats
ON (cats.id = cat_owners.cat_id and owners.id = cat_owners.owner_id and toys.cat_id = cats.id )
WHERE owners.first_name = 'Hermione'
