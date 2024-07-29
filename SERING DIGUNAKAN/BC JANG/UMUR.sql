SELECT
    COUNT(CASE WHEN Sts15 IN ('A', 'S', 'I') THEN 1 END) +
    COUNT(CASE WHEN Sts16 IN ('A', 'S', 'I') THEN 1 END) +
    COUNT(CASE WHEN Sts17 IN ('A', 'S', 'I') THEN 1 END) AS TOTAL_JUMLAH_ASI
FROM tblAttendance AS T1
INNER JOIN tblKaryawan AS T10 ON T1.NIK = T10.NIK
INNER JOIN TBLDEPT AS T11 ON T11.[Kode Dept] = T10.[Kode Dept]
INNER JOIN tblBagian AS T12 ON T10.[Kode Dept] = T12.[Kode Dept] AND T12.[Kode Bagian] = T10.[Kode Bagian]
INNER JOIN TblJabatan AS T13 ON T13.JabatanID = T10.[Kode Posisi]
WHERE 1 = 1
    AND T1.Tahun >= '2023' AND T1.Bulan = '05'
    AND (T10.Resign = 'N' OR T10.[Resign Date] > '2023-05-17')
	--AND DATEDIFF(year, T10.[Tgl. Lahir], GETDATE()) < 20
	AND DATEDIFF(year, T10.[Tgl. Lahir], GETDATE()) BETWEEN 20 AND 24
    --AND DATEDIFF(year, T10.[Tgl. Lahir], GETDATE()) BETWEEN 25 AND 30
	--AND DATEDIFF(year, T10.[Tgl. Lahir], GETDATE()) > 30
    --AND T10.[Kode Dept] = 'N'
    --AND T10.[Kode Dept] = 'O'
    --AND T10.[Kode Dept] = 'R'
    AND T10.[Kode Dept] IN ('T','U','S','L','K')
    --AND T10.[Kode Dept] NOT IN ('T','U','S','L','K','N','O','R')

