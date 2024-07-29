SELECT * FROM tblLbrAllin WHERE TAHUN = 2024 AND BULAN = 6 and nik = 'K211124ASS1030'

SELECT * FROM tblLbrAllin WHERE TAHUN = 2023 AND BULAN = 11 AND NIK = 'K211108CMP0474'

insert into tblLbrAllin (nik,tahun,bulan,jumlah,jam) values ('K220124ASS2559','2023','09','902673.00','0')

UPDATE tblLbrAllin 
SET tblLbrAllin.nama = TBLKARyawan.NAMA,
	tblLbrAllin.kodep = TBLKARyawan.[Kode Dept],
	tblLbrAllin.kobag = TBLKARyawan.[Kode Bagian]
FROM tblLbrAllin inner join TBLKARyawan
	on tblLbrAllin.NIK = TBLKARyawan.NIK
	where tblLbrAllin.bulan = '06' and tblLbrAllin.tahun = '2024'

SELECT SUM(jumlah)
FROM tblLbrAllin
WHERE TAHUN = 2024 AND BULAN = 6

