update tblattendance set 
       tblattendance.in31='',
	   tblattendance.out31='',
	   tblattendance.sts31=''
	   from tblattendance inner join tblkaryawan
	   on tblattendance.nik = tblkaryawan.nik
	   where tblAttendance.tahun=2022 and tblAttendance.bulan=12
	   and tblkaryawan.[Kode Dept] ='O' and [sts31] = 'A'
	   
Update tblokompensasikontak set tblkaryawan.[Kode Bagian]=Karyawanbee.BAGIAN
from tblKaryawan inner join Karyawanbee
on tblKaryawan.NIK=Karyawanbee.NIK
where tblKaryawan.[Kode Dept]='O'

select tahun,bulan,tblkaryawan.nik,In31,Out31,Sts31 from tblAttendance inner join tblKaryawan on tblattendance.nik = tblkaryawan.nik
       where tblAttendance.tahun=2022 and tblAttendance.bulan=12
	   and tblkaryawan.[Kode Dept] ='O'

select tblKaryawan.[kode dept],
	   tblattendance.in31,
	   tblattendance.out31,
	   tblattendance.sts31 
 from tblattendance inner join tblkaryawan 
		on tblattendance.nik = tblkaryawan.nik 
		where tblAttendance.tahun=2022 and tblAttendance.bulan=12 and tblkaryawan.[Kode Dept] ='O' and [sts31] = 'A'