WITH ResultQuery AS (
    SELECT
        TD.[Nama Departemen] AS [DEPARTMENT],
		TB.[Nama Bagian] AS [BAGIAN 1],
        TB2.[Nama Bagian2] AS [BAGIAN 2],
        COUNT(*) AS [TOTAL KARYAWAN],
        COUNT(DISTINCT CASE WHEN TK.kategori = 'DIRECT' THEN TK.nik END) AS [DIRECT],
        COUNT(DISTINCT CASE WHEN TK.kategori = 'INDIRECT' THEN TK.nik END) AS [INDIRECT],
        COUNT(DISTINCT CASE WHEN TK.kategori = 'SUPPORT' THEN TK.nik END) AS [SUPPORT]
    FROM
        tblkaryawan AS TK WITH (NOLOCK)
        INNER JOIN tbldept AS TD WITH (NOLOCK) ON TD.[Kode Dept] = TK.[Kode Dept]
		INNER JOIN tblbagian AS TB WITH (NOLOCK) ON (TB.[Kode Dept] = TK.[Kode Dept] AND TB.[Kode Bagian] = TK.[kode bagian])
        INNER JOIN tblbagian2 AS TB2 WITH (NOLOCK) ON (TB2.[Kode Dept] = TK.[Kode Dept] AND TB2.[Kode Bagian2] = TK.[kode bagian2])
    WHERE	
        (TK.Resign = 'N' OR TK.[Resign Date] > '2023-10-31')
        AND CONVERT(VARCHAR(10), TK.[Tgl. Kerja Lama], 120) <= '2023-10-31'
    GROUP BY
        TD.[Nama Departemen], TB.[Nama Bagian],TB2.[Nama Bagian2]
)

SELECT
    [DEPARTMENT],
	[BAGIAN 1],
    [BAGIAN 2],
    [TOTAL KARYAWAN],
    [DIRECT],
    [INDIRECT],
    [SUPPORT]
FROM
    ResultQuery

UNION ALL

SELECT
    'TOTAL ALL DEPARTMENT',
    '',
	' = ',
    SUM([Total Karyawan]),
    SUM([DIRECT]),
    SUM([INDIRECT]),
    SUM([SUPPORT])
FROM
    ResultQuery;
