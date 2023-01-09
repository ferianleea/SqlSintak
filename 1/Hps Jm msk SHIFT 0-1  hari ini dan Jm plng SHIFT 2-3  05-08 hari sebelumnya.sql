--1. Untuk melihat data SHift 2 dan 3 yang akan dihapus
select tblAttendance.In21,tblAttendance.out21,tblAttendance.lbr121,tblAttendance.lbr221,tblshifbulan.[22] from tblAttendance inner join tblkaryawan
       on tblattendance.nik= tblkaryawan.nik  inner join Tblshifbulan on tblattendance.nik =Tblshifbulan.nik 
	   where tblAttendance.tahun=2022 and tblAttendance.bulan=10 and left(tblAttendance.out21,2) < '08'
	       and Tblshifbulan.[22]>=2 

--2. Untuk menghapus data pulang SHift 2 dan 3 tanggal sebelum tanggal error 
update tblattendance set tblAttendance.out21='',tblAttendance.lbr121=0,tblAttendance.lbr221=0 from tblAttendance inner join tblkaryawan
       on tblattendance.nik= tblkaryawan.nik  inner join Tblshifbulan on tblattendance.nik =Tblshifbulan.nik 
	   where tblAttendance.tahun=2022 and tblAttendance.bulan=10 and left(tblAttendance.out21,2) < '08'
	       and Tblshifbulan.[22]>=2 

--3. Untuk menghapus data masuk  tanggal yang error
update tblattendance set in22='',sts22='' from tblattendance where tblattendance.tahun=2022 and tblAttendance.bulan=10
       and (tblAttendance.sts22='H'  or tblAttendance.sts22='A')
	    
        
