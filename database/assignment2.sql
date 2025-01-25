-- insert tony stark into account table
INSERT INTO public.account (account_firstname, account_lastname, account_email, account_password)
VALUES ('Tony', 'Stark', 'tony@starkent.com', 'Iam1ronM@n');

-- make tony an admin
UPDATE public.account 
SET account_type = 'Admin' 
WHERE account_firstname = 'Tony' AND account_lastname = 'Stark';

-- delete tony from account table
DELETE FROM public.account 
WHERE account_email = 'tony@starkent.com';

-- update GM Hummer to be "a huge interior"
UPDATE public.inventory
SET inv_description = REPLACE(inv_description, 'small interiors', 'a huge interior') 
WHERE inv_make = 'GM' AND inv_model = 'Hummer';

-- get all vehicles that are in the sport category
SELECT inv_make, inv_model
FROM public.inventory
INNER JOIN public.classification ON public.inventory.classification_id = public.classification.classification_id
WHERE public.classification.classification_name = 'Sport';

-- update image path for all vehicles
UPDATE public.inventory 
UPDATE public.inventory 
SET inv_image = REPLACE(inv_image, 'images/', 'images/vehicles/'),
	inv_thumbnail = REPLACE(inv_thumbnail, 'images/', 'images/vehicles/');