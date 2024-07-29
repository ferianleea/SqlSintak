select	LTRIM(RTRIM(TA.nik)) AS NIK,
		LTRIM(RTRIM(TK.NAMA)) AS NAMA,
		LTRIM(RTRIM(TD.[Nama Departemen])) AS DEPARTMEN,
		LTRIM(RTRIM(TB.[Nama Bagian])) AS BAGIAN,
		LTRIM(RTRIM(TB2.[Nama Bagian2])) AS BAGIAN_2,
		LTRIM(RTRIM(TJ.Jabatan)) AS JABATAN,
		TA.* from tblAttendance AS TA
INNER JOIN tblkaryawan AS TK WITH(NOLOCK) ON TA.nik=TK.nik
INNER JOIN tbldept AS TD WITH(NOLOCK) ON TD.[Kode Dept] =TK.[Kode Dept]
INNER JOIN TblJabatan AS TJ WITH(NOLOCK)  ON TJ.JabatanID = TK.[Kode Posisi]
INNER JOIN tblbagian AS TB WITH(NOLOCK) ON (TB.[Kode Dept] = TK.[Kode Dept] and TB.[Kode Bagian] =TK.[Kode Bagian] )
INNER JOIN tblbagian2 AS TB2 WITH(NOLOCK) ON (TB2.[Kode Dept] = TK.[Kode Dept] and TB2.[Kode Bagian2] =TK.[kode bagian2] )
where tahun = 2024 and bulan IN ('04','05') and TK.[Kode Dept] IN ('A','D','Q') ORDER BY TK.[Kode Dept],Bulan,TA.NIK

select * from tblDept

select * from tblKaryawan where resign = 'N' order by nik

select * from tblSlipGaji where tahun = 2024 and bulan = 5
SELECT * FROM tblSlipGaji WHERE TAHUN = 2024 AND BULAN = 5 AND NIK = 'K240510OFF14436'
SELECT * FROM tblSlipGaji WHERE TAHUN = 2024 AND BULAN = 5 AND NIK = 'K211005OFF0029'
SELECT * FROM tblAttendance WHERE TAHUN = 2024 AND BULAN = 5 AND NIK = 'K211005OFF0029'
SELECT * FROM tblAttendance WHERE TAHUN = 2024 AND BULAN = 5 AND NIK = 'K240510OFF14436'
SELECT * FROM tblKaryawan WHERE NIK = 'K211022SEW0108'
select * from TmpRptSlipGaji02 where TAHUN = 2024 AND BULAN = 5

SELECT * FROM tblSlipGaji WHERE TAHUN = 2024 AND BULAN = 5 AND NIK LIKE '%5696%'
Select * from tbllbrallin WHERE TAHUN = 2024 AND BULAN = 5

