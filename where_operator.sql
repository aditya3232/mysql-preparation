-- operator where, perbandingan
--  =, <>, !=, <, <=, >, >=

-- operator where, AND, OR (boolean)
-- AND, OR

-- prioritas dengan tanda kurung ()
-- akan membandingkan didalam kurung terlebih dahulu, baru dikombinasikan dengan perbandingan lainnya
-- untuk banyak perbandingan, maka secara otomatis yang diprioritaskan adalah AND dulu

-- operator where, LIKE
-- mencari sebagian kata dalam string
-- namun operator LIKE sangat lambat, tidak disarankan jika datanya terlalu besar ditabel
-- LIKE 'b%', string dengan awalan b
-- LIKE '%a', string dengan akhiran a
-- LIKE '%adit%', string berisi adit
-- NOT LIKE, tidak LIKE

-- operator where, NULL
-- IS NULL, mencari NULL
-- NOT NULL, mencari tidak NULL

-- operator where, BETWEEN, NOT BETWEEN
-- untuk mencari data >= dan <= secara sekaligus
-- misal harga antara 10000 sampai 20000
-- where price >= 10000 AND price <= 20000 (daripada pakai operator AND bisa pakai between)
-- where price BETWEEN 10000 AND 20000

-- operator where, IN, NOT IN
-- untuk mencari data dengan beberapa nilai
-- misal mencari data products dengan category (makanan & minuman)

SELECT
	p.id,
	p.name,
	p.category,
	p.price,
	p.quantity
FROM products AS p
WHERE quantity > 100;

SELECT
	p.id,
	p.name,
	p.category,
	p.price,
	p.quantity
FROM products AS p
WHERE quantity > 100 AND price > 10000; -- true AND true, yang akan dicari

SELECT
	p.id,
	p.name,
	p.category,
	p.price,
	p.quantity
FROM products AS p
WHERE quantity > 100 OR price > 20000; -- true OR false, false OR true, true OR true, yang akan dicari

SELECT
	p.id,
	p.name,
	p.category,
	p.price,
	p.quantity
FROM products AS p
WHERE (category = 'Makanan' OR quantity > 500) AND price > 20000;

SELECT
	p.id,
	p.name,
	p.category,
	p.price,
	p.quantity
FROM products AS p
WHERE name LIKE '%Mie%';

SELECT
	p.id,
	p.name,
	p.category,
	p.description,
	p.price,
	p.quantity
FROM products AS p
WHERE description IS NULL;

SELECT
	p.id,
	p.name,
	p.category,
	p.description,
	p.price,
	p.quantity
FROM products AS p
WHERE price BETWEEN 10000 AND 20000;

SELECT
	p.id,
	p.name,
	p.category,
	p.description,
	p.price,
	p.quantity
FROM products AS p
WHERE price NOT BETWEEN 10000 AND 20000;

SELECT
	p.id,
	p.name,
	p.category,
	p.description,
	p.price,
	p.quantity
FROM products AS p
WHERE category IN ('Makanan', 'Minuman'); -- daripada pakai OR mending pakai IN



