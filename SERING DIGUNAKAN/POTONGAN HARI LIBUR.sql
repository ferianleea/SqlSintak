SELECT nik,nama,absen,[H Kerja],[H Libur],[Gaji Pokok],[T Jabatan],Skill,[Tj Masa Kerja],basic,[Permi Hadir],
		Gator,[Pot. Absen],[Gaji Bersih],Resign,[Kode Dept]
FROM tblSlipGaji WHERE TAHUN = 2024 and [resign date] <> '1900-01-01' AND [H Kerja] = 21 and [Kode Dept] = 'P'
ORDER BY NIK

SELECT * FROM tbllog WHERE aktifitas LIKE '%K220218ENG3087%' ORDER BY dt_waktu DESC

select * from tblAttendance where tahun = 2024 and bulan = 1 and nik ='K240102ASS12441'

select * from tblKdHari where tahun = 2024 and bulan = 1 and nik ='K220218ENG3087'

select * from tblSlipGaji where tahun = 2024 and NIK = 'K240102ASS12442'

select * from tblKaryawan where NIK like '%ASS6758%'

SELECT * FROM tblDept
Select * from tblHariLibur where Tanggal = cast('01/01/2024' as smalldatetime)