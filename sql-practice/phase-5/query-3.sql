-- Find the name of the cats who have an owner whose first name begins with an "H"
-- Your code here
SELECT name FROM cats JOIN owners JOIN cat_owners
ON(cat_owners.cat_id = cats.id AND cat_owners.owner_id = owners.id)
WHERE owners.first_name LIKE 'h%';