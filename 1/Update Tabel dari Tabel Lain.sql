UPDATE tblKaryawan 
SET TBLKARyawan.[Kode Dept] = 'F' 
FROM tblkaryawan
INNER JOIN maskar
ON tblkaryawan.nik = maskar.nik
where maskar.dept='CSR'

UPDATE tblKaryawan 
SET TBLKARyawan.[Kode Bagian]  = KARYAWANBEE.[BAGIAN] 
FROM tblkaryawan
INNER JOIN Karyawanbee 
ON tblkaryawan.nik = Karyawanbee .nik


INSERT INTO KARYAWANBEE(NIK,NAMA,POSISI,BAGIAN) VALUES(


UPDATE tblKaryawan 
SET TBLKARyawan.[gaji Pokok]  = tblgpbaru.[gaji pokok], 
    TBLKARyawan.[tunjangan jabatan] =tblgpbaru.jabatan,
	tblkaryawan.[tunjangan skill] = tblgpbaru.skill,
	tblkaryawan.[premi hadir] = tblgpbaru.kehadiran,
	tblkaryawan.catering = tblgpbaru.makan,
	tblkaryawan.accno = tblgpbaru.rekno,
	tblkaryawan.npwp = tblgpbaru.npwp,
	tblkaryawan.bpjstk = tblgpbaru.bpjstk,
	tblkaryawan.bpjs_kes = tblgpbaru.bpjskes
FROM tblkaryawan