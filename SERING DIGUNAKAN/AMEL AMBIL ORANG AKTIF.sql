SELECT 
    RTRIM(LTRIM(TK.NIK)) AS NIK,
    RTRIM(LTRIM(TK.NAMA)) AS NAMA,
    RTRIM(LTRIM(TD.[Nama Departemen])) AS [Nama Departemen],
    RTRIM(LTRIM(TB.[Nama Bagian])) AS [Nama Bagian],
    RTRIM(LTRIM(TB2.[Nama Bagian2])) AS [Nama Bagian2],
    RTRIM(LTRIM(TJ.Jabatan)) AS Jabatan 
FROM tblKaryawan AS TK
	INNER JOIN tblDept AS TD WITH (NOLOCK) ON TD.[Kode Dept] = TK.[Kode Dept]
	INNER JOIN TblJabatan AS TJ WITH (NOLOCK) ON TJ.JabatanID = TK.[Kode Posisi]
	INNER JOIN tblBagian AS TB WITH (NOLOCK) ON TB.[Kode Dept] = TK.[Kode Dept] AND TB.[Kode Bagian] = TK.[Kode Bagian]
	INNER JOIN tblBagian2 AS TB2 WITH (NOLOCK) ON TB2.[Kode Dept] = TK.[Kode Dept] AND TB2.[Kode Bagian2] = TK.[Kode Bagian2]
WHERE TK.Resign = 'N' 
ORDER BY NIK;
