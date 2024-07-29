select COUNT(*) AS TOTAL from tblAttendance 
	inner join tblkaryawan on tblattendance.nik = tblkaryawan.nik
	inner join tbldept on tbldept.[Kode Dept] = tblkaryawan.[Kode Dept]
where tblAttendance.bulan = 12 AND tblKaryawan.[Kode Dept] = ('D')


select COUNT(*) AS DINKURANGI from tblAttendance 
	inner join tblkaryawan on tblattendance.nik = tblkaryawan.nik
	inner join tbldept on tbldept.[Kode Dept] = tblkaryawan.[Kode Dept]
where tblAttendance.bulan = 12 AND tblKaryawan.[Kode Dept] = ('D') AND tblKaryawan.[Resign Date] <= '2022-11-30'