select TA.nik,tk.NAMA,TD.[Nama Departemen],Sts29 from tblAttendance as TA
			INNER JOIN tblkaryawan AS TK WITH(NOLOCK) ON TA.nik=TK.nik
	        INNER JOIN tbldept AS TD WITH(NOLOCK) ON TD.[Kode Dept] =TK.[Kode Dept]
where tahun = 2023 and bulan = 7 and TK.[Kode Dept] in ('K','L','S','T','U') AND Sts29 IN ('A','')

select * from tblDept

select nik,in01,Sts01 from tblAttendance where bulan = 8 and tahun = 2023 and nik like '%%'

SELECT nik, in01, Sts01
FROM tblAttendance
WHERE bulan = 8 AND tahun = 2023 AND nik LIKE '%[A-Za-z]9338%'

