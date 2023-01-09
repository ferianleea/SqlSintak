select nik,nama,[gaji pokok],[tunjangan jabatan],[tunjangan skill],[premi hadir],resign,[Resign Date] from tblkaryawan    
       where ([gaji pokok] = null or [Tunjangan Jabatan]= null or [tunjangan skill]= null or [premi hadir] =null)
