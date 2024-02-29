-- untuk merubah table

ALTER TABLE barang 
	ADD	COLUMN nama_column TEXT, -- menambah kolom
	ADD COLUMN nama_column ENUM ('Makanan', 'Minuman', 'Lain-lain') AFTER nama_column,
	ADD PRIMARY KEY (id), -- add primary key
	DROP COLUMN nama, -- hapus kolom
	RENAME COLUMN nama to nama_baru, -- merubah nama kolom
	MODIFY nama VARCHAR(100) AFTER jumlah, -- merubah tipe data kolom, dan menggeser posisi kolom setelah atau sebelum kolom(jumlah)
	MODIFY nama VARCHAR(100) FIRST, -- menggeser posisi ke pertama
    MODIFY jumlah INT NOT NULL DEFAULT 0; -- merubah default value

