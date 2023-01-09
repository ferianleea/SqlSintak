select tblkaryawan.nik,In01,Out01,Sts01,tblKaryawan.Shift from tblAttendance
inner join tblKaryawan on tblKaryawan.NIK = tblAttendance.NIK
where Bulan = 12 and tblKaryawan.Shift = '3'

--update tblAttendance set tblAttendance.In01 = '',tblAttendance.Sts01 = '' from tblAttendance
inner join tblKaryawan on tblKaryawan.NIK = tblAttendance.NIK
where Bulan = 12 and tblKaryawan.Shift = '3'


SELECT nik,nama,bulan,[kode dept],[kode bagian],[01] FROM Tblshifbulan where bulan = 12 and [01] = '3'
 
select * from tblAttendance where nik like '%8689%' and bulan = 12