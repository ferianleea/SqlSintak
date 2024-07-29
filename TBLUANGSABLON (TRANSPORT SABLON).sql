SELECT * FROM TblUangSablon WHERE TAHUN = 2024 AND BULAN = 3 and nik = 'K211022SEW0108'

SELECT * FROM TblUangSablon WHERE TAHUN = 2023 AND BULAN = 11 AND NIK = 'K211108CMP0474'

insert into TblUangSablon (nik,tahun,bulan,jumlah,jam) values ('K220124ASS2559','2023','09','902673.00','0')

UPDATE TblUangSablon 
SET TblUangSablon.nama = TBLKARyawan.NAMA,
	TblUangSablon.kodep = TBLKARyawan.[Kode Dept],
	TblUangSablon.kobag = TBLKARyawan.[Kode Bagian]
FROM TblUangSablon inner join TBLKARyawan
	on TblUangSablon.NIK = TBLKARyawan.NIK
	where TblUangSablon.bulan = '03' and TblUangSablon.tahun = '2024'

SELECT SUM(jumlah)
FROM TblUangSablon
WHERE TAHUN = 2024 AND BULAN = 3
