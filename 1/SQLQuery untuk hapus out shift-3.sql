select tblAttendance.nik,tblkaryawan.nama,
       tblattendance.in12,tblattendance.out12,tblattendance.sts12,tblattendance.lbr112,tblattendance.lbr212 from tblAttendance
	   inner join tblkaryawan on tblattendance.nik = tblkaryawan.nik
	   inner join Tblshifbulan on tblattendance.nik =tblshifbulan.nik
	   where (tblattendance.tahun=2022 and tblattendance.bulan=10) and
	         (Tblshifbulan.tahun=2022 and Tblshifbulan.bulan =10 and tblshifbulan.[12]=3)

			 
update tblAttendance set
       tblattendance.out12='' ,tblattendance.lbr112=0,tblattendance.lbr212=0 from tblAttendance	   
	   inner join Tblshifbulan on tblattendance.nik =tblshifbulan.nik
	   where tblattendance.tahun=2022 and tblattendance.bulan=10 and
	         Tblshifbulan.tahun=2022 and Tblshifbulan.bulan =10 and tblshifbulan.[12]=3
