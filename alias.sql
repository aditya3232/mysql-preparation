SELECT
	p.id AS 'Kode',
	p.name AS 'Nama',
	p.category AS 'Kategori',
	p.price AS 'Harga',
	p.quantity AS 'Stok'
FROM products AS p;