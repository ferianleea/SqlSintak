select TAHUN,BULAN,TA.NIK,TK.[Kode Dept],In23,Sts23 from tblAttendance AS TA
INNER JOIN tblkaryawan AS TK WITH(NOLOCK) ON TA.nik=TK.nik
where TA.bulan = 9 and TA.tahun = 2023 AND TK.[Kode Dept] IN ('K','S') AND TA.Sts23 IN ('A','')

UPDATE tblAttendance SET Sts23 = 'C' WHERE bulan = 9 and tahun = 2023 AND NIK = ''

select * from tblAttendance  WHERE bulan = 9 and tahun = 2023 AND NIK = 'K211101OS0304'

select * from tblDept