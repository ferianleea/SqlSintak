SELECT * FROM tblMasaCuti WHERE nik ='" & nik & "'

select * from tblMasaCuti where nik like '%5196%' order by masa,nik
select * from tblMasaCuti where nik like '%sew13681%' order by masa,nik
select * from tblMasaCuti order by masa,nik

select * from tblCuti WHERE NIK = 'K211104IT0468' ORDER BY [Tgl. Mulai Cuti]
SELECT * FROM tblCutikar2 where masa = 3 and nik like '%it2669%'

select * from tblMasaCuti where nik = 'K220705IT5696' order by nik,masa
select * from tblMasaCuti order by masa,nik
SELECT COUNT(*) AS JumlahCuti FROM tblCuti WHERE nik = 'K210801ENG0007' AND [tgl. mulai cuti] BETWEEN '2021-08-01' AND '2022-08-01'
SELECT * FROM tblCutikar2 WHERE nik = 'K210801ENG0007' AND masa = 1 ORDER BY masa DESC
select * from tblCuti WHERE nik = 'K211006OFF0038'
select * from tblMasaCuti WHERE nik = 'K210801ENG0007'  order by masa,nik
select * from tblCuti WHERE nik = 'K230814IT10707' where [tgl. mulai cuti] = 2022-08-01 sampai 2022-11-30
SELECT * FROM tblCutikar2 WHERE nik = 'K220705IT5696' AND masa = 1 ORDER BY masa DESC, nik


SELECT * FROM tblCuti WHERE nik = 'K210801ENG0007' AND [tgl. mulai cuti] BETWEEN '2022-08-01' AND '2023-08-01'
SELECT * FROM tblCuti WHERE nik = 'K230814IT10707' AND [tgl. mulai cuti] BETWEEN '2023-08-14' AND '2024-08-14'
SELECT * FROM tblCuti WHERE nik = 'K220705IT5696' AND [tgl. mulai cuti] BETWEEN '2022-07-05' AND '2023-07-04'



select * from tblCutiKar2 order by nik
SELECT * FROM tblCutikar2 WHERE nik = 'K220705IT5696' AND masa = 2 ORDER BY masa DESC, nik
select * from tblAttendance WHERE tahun = 2022 and bulan = 7

SELECT TA.NIK,TK.NAMA from tblAttendance as TA INNER JOIN tblkaryawan AS TK ON TA.nik = TK.nik WHERE TA.tahun = 2024 and TA.bulan = 2 ORDER BY NIK

SELECT * FROM tblKaryawan WHERE nik='K210801ENG0007'
SELECT MAX([tgl. mulai]) FROM tblmasacuti WHERE nik='K210801ENG0007'

SELECT * FROM tblMasaCuti WHERE nik = 'K210801ENG0007' ORDER BY masa DESC

select * from tblSlipGaji

--QUERY UNTUK DATA YANG DOUBLE
WITH CTE AS (
    SELECT *,
           ROW_NUMBER() OVER(PARTITION BY NIK, Masa ORDER BY [nik]) AS RowNumber
    FROM tblMasaCuti
)
DELETE FROM CTE
WHERE RowNumber > 1;





DECLARE @tgl_mulai DATE
DECLARE @masa_terakhir INT

-- Mengambil tanggal selesai dari masa terakhir untuk nik tertentu
SELECT @tgl_mulai = DATEADD(DAY, 1, MAX([tgl. selesai])), 
       @masa_terakhir = MAX(masa) 
FROM tblmasacuti 
WHERE nik = 'K210801ENG0007';

-- Memasukkan data ke dalam tabel tblmasacuti jika tanggal selesai lebih besar dari tanggal sekarang
INSERT INTO tblmasacuti ([tgl. mulai], masa, nik)
SELECT @tgl_mulai, 
       COALESCE(@masa_terakhir + 1, 1), 
       'K210801ENG0007'
WHERE @tgl_mulai >= GETDATE();

SELECT * FROM tblCutikar2 where nik = 'K220705IT5696' AND masa = (SELECT MAX(masa) FROM tblCutikar2 WHERE nik = 'K220705IT5696') ORDER BY masa DESC, nik
 

