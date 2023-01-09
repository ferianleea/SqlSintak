update tblattendance 
       set tblattendance.Sts27=''
	   from tblAttendance 
inner join tblkaryawan on tblattendance.nik = tblkaryawan.nik
where tblAttendance.tahun='2022' and tblAttendance.bulan='12' AND tblKaryawan.Resign ='Y' and tblKaryawan.[Resign Date] <= '2022-12-27'


select tblAttendance.NIK,tblAttendance.Sts28,tblKaryawan.[Resign Date] from tblAttendance inner join tblKaryawan on tblAttendance.NIK = tblKaryawan.NIK
where tblAttendance.Tahun = 2022 and tblAttendance.Bulan = 12 and tblKaryawan.Resign ='Y' and tblKaryawan.[Resign Date] <= '2022-12-28' and Sts28 = 'A'


select * from tblKaryawan where NIK LIKE '%5319%'

SELECT * FROM tblAttendance