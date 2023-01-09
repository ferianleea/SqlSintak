select nik,nama,[gaji pokok],[tgl. kerja lama],[Kode Posisi]  from tblkaryawan where resign='N' and [gaji pokok]=0

select distinct([gaji pokok]) from tblkaryawan where resign='N' 
select distinct([tunjangan jabatan]) from tblkaryawan where resign='N' 
select distinct([Tunjangan Skill] ) from tblkaryawan where resign='N' 
select distinct([premi hadir]) from tblkaryawan where resign='N' 
select distinct([tunjangan transport]) from tblkaryawan where resign='N' 