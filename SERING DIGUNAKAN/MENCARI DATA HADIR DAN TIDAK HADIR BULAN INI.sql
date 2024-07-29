/*UNTUK MENYAMAKAN SHIFT BULAN PADA TBLKARYAWAN*/
UPDATE tblkaryawan set tblkaryawan.[shift]=Tblshifbulan.[23],tblkaryawan.[Status Shift]='Y' from tblkaryawan   --merubah status shift
        INNER JOIN Tblshifbulan on tblkaryawan.nik=Tblshifbulan.nik 
		WHERE Tblshifbulan.tahun='2024' and Tblshifbulan.bulan='05' and Tblshifbulan.[23] > '0'


/* UNTUK MENCARI SUMMARY KARYAWAN ALL SHIFT */   
SELECT TA.nik,TK.nama,TD.[Nama Departemen],TB.[Nama Bagian],TB2.[Nama Bagian2],TJ.Jabatan,kategori,
       TA.[in23],TA.[out23],TA.[sts23],/* SESUAIKAN DENGAN TANGGAL SEKARANG (sts01) */
	   TK.Resign,TK.[Tgl. Kerja Lama],ISNULL(TS.[23], 0) AS [23]
FROM tblattendance AS TA WITH(NOLOCK)
			INNER JOIN tblkaryawan AS TK WITH(NOLOCK) ON TA.nik=TK.nik
	        INNER JOIN tbldept AS TD WITH(NOLOCK) ON TD.[Kode Dept] =TK.[Kode Dept]
			INNER JOIN TblJabatan AS TJ WITH(NOLOCK)  ON TJ.JabatanID = TK.[Kode Posisi]
			INNER JOIN tblbagian AS TB WITH(NOLOCK) ON (TB.[Kode Dept] = TK.[Kode Dept] and TB.[Kode Bagian] =TK.[Kode Bagian] )
			INNER JOIN tblbagian2 AS TB2 WITH(NOLOCK) ON (TB2.[Kode Dept] = TK.[Kode Dept] and TB2.[Kode Bagian2] =TK.[kode bagian2] )
			LEFT JOIN Tblshifbulan AS TS WITH(NOLOCK) ON (TS.nik = TK.NIK AND TS.tahun = TA.Tahun AND TS.bulan = TA.Bulan) 

	   where TA.tahun=2024 and TA.bulan='05'
			 --AND TK.Shift IN ('0','1')
			 --AND tk.Shift = '3'
			 AND (TK.Resign = 'N' OR TK.[Resign Date] > '2024-05-23')
             AND CONVERT(VARCHAR(10), TK.[Tgl. Kerja Lama], 120) <= '2024-05-23'
	   order by TA.nik

/* UNTUK MENCARI PER DEPARTMENT */
SELECT TD.[Nama Departemen], 
       SUM(CASE WHEN TA.sts23 IN ('H','O') THEN 1 ELSE 0 END) AS HADIR,/*SESUAIKAN DENGAN TANGGAL SEKARANG (sts01)*/
       SUM(CASE WHEN TA.sts23 IN ('A','I','D','S','Z','L','C','T','U','V','W','X','Y','') THEN 1 ELSE 0 END) AS TIDAK_HADIR/*SESUAIKAN DENGAN TANGGAL SEKARANG (sts01)*/
FROM tblattendance AS TA
INNER JOIN tblkaryawan AS TK ON TA.nik = TK.nik
INNER JOIN tbldept AS TD ON TD.[Kode Dept] = TK.[Kode Dept]
INNER JOIN TblJabatan AS TJ ON TJ.JabatanID = TK.[Kode Posisi]
INNER JOIN tblbagian AS TB ON (TB.[Kode Dept] = TK.[Kode Dept] AND TB.[Kode Bagian] = TK.[Kode Bagian])
WHERE TA.Sts23 IN ('H','A','I','D','S','Z','L','C','T','U','V','W','X','Y','O','')/*SESUAIKAN DENGAN TANGGAL SEKARANG (sts01)*/
		AND TA.BULAN = '05'
		AND TA.TAHUN = 2024
		--AND TK.Shift IN ('0','1')
		AND TK.Shift = '3'
		AND (TK.Resign = 'N' OR TK.[Resign Date] > '2024-05-23')
        AND CONVERT(VARCHAR(10), TK.[Tgl. Kerja Lama], 120) <= '2024-05-23'
GROUP BY TD.[Nama Departemen] ORDER BY [Nama Departemen]

/* UNTUK MENCARI PER BAGIAN */
SELECT TD.[Nama Departemen],TB.[Nama Bagian], 
       SUM(CASE WHEN TA.Sts23 IN ('H','O') THEN 1 ELSE 0 END) AS HADIR,/*SESUAIKAN DENGAN TANGGAL SEKARANG (sts01)*/
       SUM(CASE WHEN TA.Sts23 IN ('A','I','D','S','Z','L','C','T','U','V','W','X','Y','') THEN 1 ELSE 0 END) AS TIDAK_HADIR/*SESUAIKAN DENGAN TANGGAL SEKARANG (sts01)*/
FROM tblattendance AS TA
INNER JOIN tblkaryawan AS TK ON TA.nik = TK.nik
INNER JOIN tbldept AS TD ON TD.[Kode Dept] = TK.[Kode Dept]
INNER JOIN TblJabatan AS TJ ON TJ.JabatanID = TK.[Kode Posisi]
INNER JOIN tblbagian AS TB ON (TB.[Kode Dept] = TK.[Kode Dept] AND TB.[Kode Bagian] = TK.[Kode Bagian])
WHERE TA.Sts23 IN ('H','A','I','D','S','Z','L','C','T','U','V','W','X','Y','O','')/*SESUAIKAN DENGAN TANGGAL SEKARANG (sts01)*/ 
		AND BULAN = '05'
		AND TAHUN = 2024
		--AND TK.Shift IN ('0','1')
		AND (TK.Resign = 'N' OR TK.[Resign Date] > '2024-05-23')
        AND CONVERT(VARCHAR(10), TK.[Tgl. Kerja Lama], 120) <= '2024-05-23'
GROUP BY TB.[Nama Bagian],TD.[Nama Departemen] ORDER BY [Nama Departemen] ASC

select * from tblKaryawan where Resign = 'N'