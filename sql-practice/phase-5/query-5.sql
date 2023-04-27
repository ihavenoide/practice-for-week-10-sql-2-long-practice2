-- Find names of the cats whose owners are both George Beatty and Melynda Abshire, or just George Beatty, or just Melynda Abshire
-- Your code here
-- SELECT * FROM cats JOIN owners JOIN cat_owners
-- ON(cat_owners.cat_id = cats.id AND cat_owners.owner_id = owners.id);
-- SELECT cats.name FROM cats JOIN owners JOIN cat_owners
-- ON(cat_owners.cat_id = cats.id AND cat_owners.owner_id = owners.id)
-- WHERE owners.first_name = "George" and owners.first_name = "Melynda"
-- WHERE owners.first_name IN('George' , 'Melynda') AND owners.last_name IN( 'Beatty','Abshire')
SELECT cats.name
FROM cats
JOIN cat_owners ON (cats.id = cat_owners.cat_id)
JOIN owners ON (owners.id = cat_owners.owner_id)
WHERE owners.first_name IN ('George', 'Melynda')
GROUP BY cats.id;
