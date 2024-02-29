-- WHERE DI UPDATE HARUS HATI2 JANGAN SAMPAI salah update

UPDATE products 
SET category = 'Makanan'
WHERE id = 'P0001';

-- update multiple kolom
UPDATE products 
SET category = 'Makanan',
	description = 'Mie ayam + ceker'
WHERE id = 'P0003';

-- update dengan value dikolom
UPDATE products 
SET price = price + 5000
WHERE id = 'P0004';