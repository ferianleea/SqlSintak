UPDATE tblKompensasi 
SET tblkompensasi.nama = tblKaryawan.NAMA, 
    tblkompensasi.Departemen = tblDept.[Nama Departemen],
	tblkompensasi.Jabatan = TblJabatan.Jabatan,
	tblkompensasi.[gaji pokok] = tblKaryawan.[Gaji Pokok],
	tblkompensasi.[tunjangan jabatan] = tblKaryawan.[Tunjangan Jabatan]

FROM tblKompensasi 
	inner join tblKaryawan on tblKaryawan.NIK = tblKompensasi.NIK
	inner join tbldept on tbldept.[Kode Dept] = tblkaryawan.[Kode Dept]
	inner join TblJabatan on TblJabatan.JabatanID = tblKaryawan.[Kode Posisi]

where Bulan = 12

