SELECT TD.[Nama Departemen], 
       SUM(CASE WHEN TA.sts25 IN ('H','O') THEN 1 ELSE 0 END) AS HADIR,
       SUM(CASE WHEN TA.sts25 IN ('A','I','D','S','Z','L','C','T','U','V','W','X','Y','') THEN 1 ELSE 0 END) AS TIDAK_HADIR
FROM tblattendance AS TA
INNER JOIN tblkaryawan AS TK ON TA.nik = TK.nik
INNER JOIN tbldept AS TD ON TD.[Kode Dept] = TK.[Kode Dept]
INNER JOIN TblJabatan AS TJ ON TJ.JabatanID = TK.[Kode Posisi]
INNER JOIN tblbagian AS TB ON (TB.[Kode Dept] = TK.[Kode Dept] AND TB.[Kode Bagian] = TK.[Kode Bagian])
WHERE TA.sts25 IN ('H','A','I','D','S','Z','L','C','T','U','V','W','X','Y','O','')
    AND BULAN = '09'
    AND TAHUN = '2023'
    AND TK.Shift IN ('0','1')
    AND TK.Resign = 'N'
    AND (TK.Resign = 'N' OR TK.[Resign Date] > '2023-09-25')
    AND CONVERT(VARCHAR(10), TK.[Tgl. Kerja Lama], 120) <= '2023-09-25'
GROUP BY TD.[Nama Departemen]

UNION ALL

SELECT 'TOTAL' AS [Nama Departemen], 
       SUM(CASE WHEN TA.sts25 IN ('H','O') THEN 1 ELSE 0 END) AS HADIR,
       SUM(CASE WHEN TA.sts25 IN ('A','I','D','S','Z','L','C','T','U','V','W','X','Y','') THEN 1 ELSE 0 END) AS TIDAK_HADIR
FROM tblattendance AS TA
INNER JOIN tblkaryawan AS TK ON TA.nik = TK.nik
INNER JOIN tbldept AS TD ON TD.[Kode Dept] = TK.[Kode Dept]
INNER JOIN TblJabatan AS TJ ON TJ.JabatanID = TK.[Kode Posisi]
INNER JOIN tblbagian AS TB ON (TB.[Kode Dept] = TK.[Kode Dept] AND TB.[Kode Bagian] = TK.[Kode Bagian])
WHERE TA.sts25 IN ('H','A','I','D','S','Z','L','C','T','U','V','W','X','Y','O','')
    AND BULAN = '09'
    AND TAHUN = '2023'
    AND TK.Shift IN ('0','1')
    AND TK.Resign = 'N'
    AND (TK.Resign = 'N' OR TK.[Resign Date] > '2023-09-25')
    AND CONVERT(VARCHAR(10), TK.[Tgl. Kerja Lama], 120) <= '2023-09-25';






 /* LANJUTAN */
---------------------------------------------------------------------------------------------------------



SELECT [Nama Departemen],
       [Nama Bagian],
       HADIR,
       TIDAK_HADIR,
       FORMAT(CAST(HADIR AS DECIMAL) / (HADIR + TIDAK_HADIR), 'P') AS PERS_HADIR,
       FORMAT(CAST(TIDAK_HADIR AS DECIMAL) / (HADIR + TIDAK_HADIR), 'P') AS PERS_TIDAK_HADIR
FROM (
    SELECT CASE
               WHEN TB.[Nama Bagian] IS NULL THEN '' + TD.[Nama Departemen] + ''
               ELSE TD.[Nama Departemen]
           END AS [Nama Departemen],
           CASE
               WHEN TB.[Nama Bagian] IS NULL THEN 'TOTAL ' + TD.[Nama Departemen] + ''
               ELSE TB.[Nama Bagian]
           END AS [Nama Bagian],
           SUM(CASE WHEN TA.sts25 IN ('H','O') THEN 1 ELSE 0 END) AS HADIR,
           SUM(CASE WHEN TA.sts25 IN ('A','I','D','S','Z','L','C','T','U','V','W','X','Y','') THEN 1 ELSE 0 END) AS TIDAK_HADIR
    FROM tblattendance AS TA
    INNER JOIN tblkaryawan AS TK ON TA.nik = TK.nik
    INNER JOIN tbldept AS TD ON TD.[Kode Dept] = TK.[Kode Dept]
    INNER JOIN TblJabatan AS TJ ON TJ.JabatanID = TK.[Kode Posisi]
    INNER JOIN tblbagian AS TB ON (TB.[Kode Dept] = TK.[Kode Dept] AND TB.[Kode Bagian] = TK.[Kode Bagian])
    WHERE TA.sts25 IN ('H','A','I','D','S','Z','L','C','T','U','V','W','X','Y','O','')
        AND BULAN = '09'
        AND TAHUN = 2023
        AND TK.Shift IN ('0','1')
        AND (TK.Resign = 'N' OR TK.[Resign Date] > '2023-09-25')
        AND CONVERT(VARCHAR(10), TK.[Tgl. Kerja Lama], 120) <= '2023-09-25'
    GROUP BY ROLLUP (TD.[Nama Departemen], TB.[Nama Bagian])
) AS Subquery;
