select * from tblkompensasikontak where bulan = '11'

UPDATE tblkompensasikontak 
SET tblkompensasikontak.nama = TBLKARyawan.NAMA,
	tblkompensasikontak.[gaji pokok] = TBLKARyawan.[Gaji Pokok]
FROM tblkompensasikontak inner join TBLKARyawan
	on tblkompensasikontak.NIK = TBLKARyawan.NIK
	where Bulan = '11'

INSERT INTO tblKompensasikontak (Tahun,Bulan,nik,nama,[kompensasi kontrak]) VALUES ('2022','11','K211116OFF0879','INDAH KOMARIAH','500000')
