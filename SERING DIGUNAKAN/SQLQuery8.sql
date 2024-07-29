select nik,nama,[Tgl. Lahir] from tblKaryawan where nik like '%stf3093%'
select nik,nama,[Tgl. Lahir] from tblKaryawan where nik like '%mat3290%'

SELECT * FROM tblHariLibur WHERE CONVERT(varchar, Tanggal, 120) LIKE '2024-02%'
Select * from tblHariLibur where Tanggal = cast('02/08/2024' as smalldatetime)

SELECT nik,nama,absen,[H Kerja],[H Libur],[Gaji Pokok],[T Jabatan],Skill,[Tj Masa Kerja],basic,[Permi Hadir],
		Gator,[Pot. Absen],[Gaji Bersih],Resign,[Kode Dept]
FROM tblSlipGaji WHERE TAHUN = 2024 and [resign date] <> '1900-01-01' AND [H Kerja] = 21 and [Kode Dept] = 'P'
ORDER BY NIK

select * from tblSlipGaji where tahun = 2024 and bulan = 01 and nik like '%MAT0083%'

SELECT 
    nik,
    nama,
    [Tgl. Lahir],
    DATEDIFF(YEAR, [Tgl. Lahir], GETDATE()) - 
    CASE WHEN DATEADD(YEAR, DATEDIFF(YEAR, [Tgl. Lahir], GETDATE()), [Tgl. Lahir]) > GETDATE() 
    THEN 1 
    ELSE 0 END AS Umur
FROM tblKaryawan 
WHERE nik LIKE '%9291%';

select nik,nama,pensiun,pensiunp from tblSlipGaji where bulan = 12 and tahun = 2023 and nik like '%stf3093%'
