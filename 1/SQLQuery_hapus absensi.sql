update tblattendance set 
       tblattendance.lbr101=0, tblattendance.lbr201=0, tblattendance.lbr301=0
	   from tblattendance inner join tblkaryawan
	   on tblattendance.nik = tblkaryawan.nik
	   where tblAttendance.tahun=2022 and tblAttendance.bulan=9
	   and tblkaryawan.[Kode Dept] ='O'  

select tblAttendance.nik,tblKaryawan.nama,tblkaryawan.[kode dept],  
       tblattendance.lbr101, tblattendance.lbr201, tblattendance.lbr301
	   from tblattendance inner join tblkaryawan
	   on tblattendance.nik = tblkaryawan.nik
	   where tblAttendance.tahun=2022 and tblAttendance.bulan=9
	   and tblkaryawan.[Kode Dept] ='O'  
