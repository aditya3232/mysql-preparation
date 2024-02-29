CREATE TABLE barang 
(
    id INT NOT NULL,
    nama VARCHAR(100) NOT NULL,
    harga INT NOT NULL DEFAULT 0,
    jumlah INT NOT NULL DEFAULT 0,
    waktu_dibuat TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE = InnoDB;

CREATE TABLE products
(
	id VARCHAR(100) NOT NULL,
	name VARCHAR(100) NOT NULL,
	description TEXT,
	price INT UNSIGNED NOT NULL,
	quantity INT UNSIGNED NOT NULL DEFAULT 0, -- integer tidak boleh negatif
	created_at TIMESTAMP NOT NULL DEFAULT current_timestamp
	PRIMARY_KEY (id)
) ENGINE = InnoDB;


SHOW TABLES; -- show all table

DESCRIBE barang; -- deskripsi table

SHOW CREATE TABLE barang; -- melihat struktur query cara bikin table