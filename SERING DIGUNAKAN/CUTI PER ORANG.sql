SELECT  C.NIK, K.NAMA,CASE K.[Jenis Kelamin] WHEN '0' THEN 'Perempuan' WHEN '1' THEN 'Laki-laki' END AS [Jenis Kelamin], D.[Nama Departemen], B.[Nama Bagian], [Tgl. Kerja Lama] = case when left(C.NIK,1) = 'B' then K.[Tgl. Kerja Lama] else K.[Tgl. Kerja Lama] end, C.[Cuti Tahunan], C.[Cuti Tahunan Diambil],C.[Hut Cuti] as [Hut Cuti Thn Lalu],
              CASE WHEN CONVERT(INT, C.[Cuti Tahunan]) - CONVERT(INT, C.[Cuti Tahunan Diambil])+ CONVERT(INT,C.[Hut Cuti]) >= 12 THEN 12 ELSE CONVERT(INT, C.[Cuti Tahunan]) - CONVERT(INT, C.[Cuti Tahunan Diambil])+ CONVERT(INT,C.[Hut Cuti]) END AS [Sisa Cuti] , K.[Resign Date] 
              FROM tblCutiKar C INNER JOIN tblKaryawan K ON C.[Kode Perusahaan] = K.[Kode Perusahaan] AND ( C.NIK = K.NIK ) INNER JOIN 
              tblDept D ON K.[Kode Dept] = D.[Kode Dept] INNER JOIN 
              tblBagian B ON K.[Kode Dept] = B.[Kode Dept] AND K.[Kode Bagian] = B.[Kode Bagian] 
              WHERE K.Resign <> 'Y' and Tahun = '2024' order by C.NIK

if (select count(NIK) from tblCutiKar where ( NIK = 'K210812OFF0010') and Tahun = '2023' and [Kode Perusahaan] = 'B') = 0 begin 
                                          Insert into tblCutiKar ( Tahun, [Kode Perusahaan], NIK, [Cuti Tahunan], [Cuti Tahunan Diambil], Keterangan ) Values ('
                                          rsAbsen!Tahun & "','" & rsBio![Kode Perusahaan] & "', '" & rsBio!nik & "',16,1,'') end else begin Update tblCutiKar set [Cuti Tahunan Diambil] = [Cuti Tahunan Diambil] + 1 where 
                                          (NIK = '" & Trim(rsBio!nik) & "' ) and Tahun = '" & rsAbsen!Tahun & "' and [Kode Perusahaan] = '" & Trim(rsBio![Kode Perusahaan]) & "' end


Select * from tblAttendance where (NIK = 'K220705IT5696' ) and Tahun = '2024' and Bulan = '01' order by NIK

WITH nik_list AS ( SELECT DISTINCT NIK FROM tblattendance ) 
SELECT SUM(CASE WHEN Sts01 = 'C' THEN 1 ELSE 0 END + CASE WHEN Sts02 = 'C' THEN 1 ELSE 0 END + CASE WHEN Sts03 = 'C' THEN 1 ELSE 0 END + CASE WHEN Sts04 = 'C' THEN 1 ELSE 0 END +
           CASE WHEN Sts05 = 'C' THEN 1 ELSE 0 END + CASE WHEN Sts06 = 'C' THEN 1 ELSE 0 END + CASE WHEN Sts07 = 'C' THEN 1 ELSE 0 END + CASE WHEN Sts08 = 'C' THEN 1 ELSE 0 END +
		   CASE WHEN Sts09 = 'C' THEN 1 ELSE 0 END + CASE WHEN Sts10 = 'C' THEN 1 ELSE 0 END + CASE WHEN Sts11 = 'C' THEN 1 ELSE 0 END + CASE WHEN Sts12 = 'C' THEN 1 ELSE 0 END +
		   CASE WHEN Sts13 = 'C' THEN 1 ELSE 0 END + CASE WHEN Sts14 = 'C' THEN 1 ELSE 0 END + CASE WHEN Sts15 = 'C' THEN 1 ELSE 0 END + CASE WHEN Sts16 = 'C' THEN 1 ELSE 0 END +
		   CASE WHEN Sts17 = 'C' THEN 1 ELSE 0 END + CASE WHEN Sts18 = 'C' THEN 1 ELSE 0 END + CASE WHEN Sts19 = 'C' THEN 1 ELSE 0 END + CASE WHEN Sts20 = 'C' THEN 1 ELSE 0 END +
		   CASE WHEN Sts21 = 'C' THEN 1 ELSE 0 END + CASE WHEN Sts22 = 'C' THEN 1 ELSE 0 END + CASE WHEN Sts23 = 'C' THEN 1 ELSE 0 END + CASE WHEN Sts24 = 'C' THEN 1 ELSE 0 END +
		   CASE WHEN Sts25 = 'C' THEN 1 ELSE 0 END + CASE WHEN Sts26 = 'C' THEN 1 ELSE 0 END + CASE WHEN Sts27 = 'C' THEN 1 ELSE 0 END + CASE WHEN Sts28 = 'C' THEN 1 ELSE 0 END +
		   CASE WHEN Sts29 = 'C' THEN 1 ELSE 0 END + CASE WHEN Sts30 = 'C' THEN 1 ELSE 0 END + CASE WHEN Sts31 = 'C' THEN 1 ELSE 0 END) AS TotalC,
		   MAX(CASE WHEN DATEDIFF(MONTH, TK.[Tgl. Kerja Lama], GETDATE()) >= 12 THEN 1 ELSE 0 END) AS [Cuti Tahunan],
		   DATEDIFF(YEAR, TK.[Tgl. Kerja Lama], GETDATE()) AS [PERIODE KERJA PERTAHUN]
FROM tblattendance AS TA
INNER JOIN tblkaryawan AS TK ON TA.nik = TK.nik
WHERE TA.NIK IN (SELECT NIK FROM nik_list) AND 
      (TA.Tahun = '2022' AND TA.Bulan >= '11' OR
       TA.Tahun = '2023' AND TA.Bulan <= '11')
	   AND TA.NIK = 'K211104IT0468'
GROUP BY TK.[Tgl. Kerja Lama]

WITH nik_list AS (SELECT DISTINCT NIK FROM tblattendance)
SELECT
    TA.NIK,
    TK.NAMA,
    TD.[Nama Departemen],
    TK.[Tgl. Kerja Lama],
    MAX(CASE WHEN Sts01='C' THEN 'C' ELSE '' END) AS [1],
	MAX(CASE WHEN Sts02='C' THEN 'C' ELSE '' END) AS [2],
	MAX(CASE WHEN Sts03='C' THEN 'C' ELSE '' END) AS [3],
	MAX(CASE WHEN Sts04='C' THEN 'C' ELSE '' END) AS [4],
	MAX(CASE WHEN Sts05='C' THEN 'C' ELSE '' END) AS [5],
	MAX(CASE WHEN Sts06='C' THEN 'C' ELSE '' END) AS [6],
	MAX(CASE WHEN Sts07='C' THEN 'C' ELSE '' END) AS [7],
	MAX(CASE WHEN Sts08='C' THEN 'C' ELSE '' END) AS [8],
	MAX(CASE WHEN Sts09='C' THEN 'C' ELSE '' END) AS [9],
	MAX(CASE WHEN Sts10='C' THEN 'C' ELSE '' END) AS [10],
	MAX(CASE WHEN Sts11='C' THEN 'C' ELSE '' END) AS [11],
	MAX(CASE WHEN Sts12='C' THEN 'C' ELSE '' END) AS [12],
	MAX(CASE WHEN Sts13='C' THEN 'C' ELSE '' END) AS [13],
	MAX(CASE WHEN Sts14='C' THEN 'C' ELSE '' END) AS [14],
	MAX(CASE WHEN Sts15='C' THEN 'C' ELSE '' END) AS [15],
	MAX(CASE WHEN Sts16='C' THEN 'C' ELSE '' END) AS [16],
	MAX(CASE WHEN Sts17='C' THEN 'C' ELSE '' END) AS [17],
	MAX(CASE WHEN Sts18='C' THEN 'C' ELSE '' END) AS [18],
	MAX(CASE WHEN Sts19='C' THEN 'C' ELSE '' END) AS [19],
	MAX(CASE WHEN Sts20='C' THEN 'C' ELSE '' END) AS [20],
	MAX(CASE WHEN Sts21='C' THEN 'C' ELSE '' END) AS [21],
	MAX(CASE WHEN Sts22='C' THEN 'C' ELSE '' END) AS [22],
	MAX(CASE WHEN Sts23='C' THEN 'C' ELSE '' END) AS [23],
	MAX(CASE WHEN Sts24='C' THEN 'C' ELSE '' END) AS [24],
	MAX(CASE WHEN Sts25='C' THEN 'C' ELSE '' END) AS [25],
	MAX(CASE WHEN Sts26='C' THEN 'C' ELSE '' END) AS [26],
	MAX(CASE WHEN Sts27='C' THEN 'C' ELSE '' END) AS [27],
	MAX(CASE WHEN Sts28='C' THEN 'C' ELSE '' END) AS [28],
	MAX(CASE WHEN Sts29='C' THEN 'C' ELSE '' END) AS [29],
	MAX(CASE WHEN Sts30='C' THEN 'C' ELSE '' END) AS [30],
	MAX(CASE WHEN Sts31='C' THEN 'C' ELSE '' END) AS [31],
    SUM(
		   CASE WHEN Sts01 = 'C' THEN 1 ELSE 0 END + CASE WHEN Sts02 = 'C' THEN 1 ELSE 0 END + CASE WHEN Sts03 = 'C' THEN 1 ELSE 0 END + CASE WHEN Sts04 = 'C' THEN 1 ELSE 0 END +
                   CASE WHEN Sts05 = 'C' THEN 1 ELSE 0 END + CASE WHEN Sts06 = 'C' THEN 1 ELSE 0 END + CASE WHEN Sts07 = 'C' THEN 1 ELSE 0 END + CASE WHEN Sts08 = 'C' THEN 1 ELSE 0 END +
		   CASE WHEN Sts09 = 'C' THEN 1 ELSE 0 END + CASE WHEN Sts10 = 'C' THEN 1 ELSE 0 END + CASE WHEN Sts11 = 'C' THEN 1 ELSE 0 END + CASE WHEN Sts12 = 'C' THEN 1 ELSE 0 END +
		   CASE WHEN Sts13 = 'C' THEN 1 ELSE 0 END + CASE WHEN Sts14 = 'C' THEN 1 ELSE 0 END + CASE WHEN Sts15 = 'C' THEN 1 ELSE 0 END + CASE WHEN Sts16 = 'C' THEN 1 ELSE 0 END +
		   CASE WHEN Sts17 = 'C' THEN 1 ELSE 0 END + CASE WHEN Sts18 = 'C' THEN 1 ELSE 0 END + CASE WHEN Sts19 = 'C' THEN 1 ELSE 0 END + CASE WHEN Sts20 = 'C' THEN 1 ELSE 0 END +
		   CASE WHEN Sts21 = 'C' THEN 1 ELSE 0 END + CASE WHEN Sts22 = 'C' THEN 1 ELSE 0 END + CASE WHEN Sts23 = 'C' THEN 1 ELSE 0 END + CASE WHEN Sts24 = 'C' THEN 1 ELSE 0 END +
		   CASE WHEN Sts25 = 'C' THEN 1 ELSE 0 END + CASE WHEN Sts26 = 'C' THEN 1 ELSE 0 END + CASE WHEN Sts27 = 'C' THEN 1 ELSE 0 END + CASE WHEN Sts28 = 'C' THEN 1 ELSE 0 END +
		   CASE WHEN Sts29 = 'C' THEN 1 ELSE 0 END + CASE WHEN Sts30 = 'C' THEN 1 ELSE 0 END + CASE WHEN Sts31 = 'C' THEN 1 ELSE 0 END
    ) AS [Cuti Tahunan Diambil November],
    TK.[Resign Date],
	MAX(CASE WHEN DATEDIFF(MONTH, TK.[Tgl. Kerja Lama], GETDATE()) >= 12 THEN 1 ELSE 0 END) AS [Cuti Tahunan],
	DATEDIFF(YEAR, TK.[Tgl. Kerja Lama], GETDATE()) AS [PERIODE KERJA PERTAHUN]
    --CASE WHEN DATEDIFF(MONTH, TK.[Tgl. Kerja Lama], GETDATE()) >= 12 THEN 12 ELSE 0 END AS [Cuti Tahunan],
    --DATEDIFF(YEAR, TK.[Tgl. Kerja Lama], GETDATE()) AS [PERIODE KERJA PERTAHUN]
FROM tblattendance AS TA
INNER JOIN tblkaryawan AS TK ON TA.nik = TK.nik
INNER JOIN tblDept AS TD ON TK.[Kode Dept] = TD.[Kode Dept]
--WHERE TA.NIK IN (SELECT NIK FROM nik_list) AND TA.Tahun = '2024' AND TA.BULAN = '01'--AND TA.Bulan IN ('01','02','03','05','06','07','08','09','10')
WHERE TA.NIK IN (SELECT NIK FROM nik_list) AND 
      (TA.Tahun = '2022' AND TA.Bulan >= '11' OR
       TA.Tahun = '2023' AND TA.Bulan <= '11')
	   AND TA.NIK = 'K211104IT0468'
GROUP BY TA.NIK, TK.NAMA, TK.[Resign Date], TD.[Nama Departemen], TK.[Tgl. Kerja Lama]
ORDER BY TA.NIK;

WITH nik_list AS (SELECT DISTINCT NIK FROM tblattendance)
SELECT
    TA.NIK,
    TK.NAMA,
    TD.[Nama Departemen],
    TK.[Tgl. Kerja Lama],
    SUM(
		   CASE WHEN Sts01 = 'C' THEN 1 ELSE 0 END + CASE WHEN Sts02 = 'C' THEN 1 ELSE 0 END + CASE WHEN Sts03 = 'C' THEN 1 ELSE 0 END + CASE WHEN Sts04 = 'C' THEN 1 ELSE 0 END +
           CASE WHEN Sts05 = 'C' THEN 1 ELSE 0 END + CASE WHEN Sts06 = 'C' THEN 1 ELSE 0 END + CASE WHEN Sts07 = 'C' THEN 1 ELSE 0 END + CASE WHEN Sts08 = 'C' THEN 1 ELSE 0 END +
		   CASE WHEN Sts09 = 'C' THEN 1 ELSE 0 END + CASE WHEN Sts10 = 'C' THEN 1 ELSE 0 END + CASE WHEN Sts11 = 'C' THEN 1 ELSE 0 END + CASE WHEN Sts12 = 'C' THEN 1 ELSE 0 END +
		   CASE WHEN Sts13 = 'C' THEN 1 ELSE 0 END + CASE WHEN Sts14 = 'C' THEN 1 ELSE 0 END + CASE WHEN Sts15 = 'C' THEN 1 ELSE 0 END + CASE WHEN Sts16 = 'C' THEN 1 ELSE 0 END +
		   CASE WHEN Sts17 = 'C' THEN 1 ELSE 0 END + CASE WHEN Sts18 = 'C' THEN 1 ELSE 0 END + CASE WHEN Sts19 = 'C' THEN 1 ELSE 0 END + CASE WHEN Sts20 = 'C' THEN 1 ELSE 0 END +
		   CASE WHEN Sts21 = 'C' THEN 1 ELSE 0 END + CASE WHEN Sts22 = 'C' THEN 1 ELSE 0 END + CASE WHEN Sts23 = 'C' THEN 1 ELSE 0 END + CASE WHEN Sts24 = 'C' THEN 1 ELSE 0 END +
		   CASE WHEN Sts25 = 'C' THEN 1 ELSE 0 END + CASE WHEN Sts26 = 'C' THEN 1 ELSE 0 END + CASE WHEN Sts27 = 'C' THEN 1 ELSE 0 END + CASE WHEN Sts28 = 'C' THEN 1 ELSE 0 END +
		   CASE WHEN Sts29 = 'C' THEN 1 ELSE 0 END + CASE WHEN Sts30 = 'C' THEN 1 ELSE 0 END + CASE WHEN Sts31 = 'C' THEN 1 ELSE 0 END
    ) AS [Cuti Tahunan Diambil],
    TK.[Resign Date],
    CASE WHEN DATEDIFF(MONTH, TK.[Tgl. Kerja Lama], GETDATE()) >= 12 THEN 12 ELSE 0 END AS [Cuti Tahunan],
    DATEDIFF(YEAR, TK.[Tgl. Kerja Lama], GETDATE()) AS [Lama Bekerja (Tahun)],
    (CASE WHEN DATEDIFF(MONTH, TK.[Tgl. Kerja Lama], GETDATE()) >= 12 THEN 12 ELSE 0 END) - (SUM(
           CASE WHEN Sts01 = 'C' THEN 1 ELSE 0 END + CASE WHEN Sts02 = 'C' THEN 1 ELSE 0 END + CASE WHEN Sts03 = 'C' THEN 1 ELSE 0 END + CASE WHEN Sts04 = 'C' THEN 1 ELSE 0 END +
           CASE WHEN Sts05 = 'C' THEN 1 ELSE 0 END + CASE WHEN Sts06 = 'C' THEN 1 ELSE 0 END + CASE WHEN Sts07 = 'C' THEN 1 ELSE 0 END + CASE WHEN Sts08 = 'C' THEN 1 ELSE 0 END +
		   CASE WHEN Sts09 = 'C' THEN 1 ELSE 0 END + CASE WHEN Sts10 = 'C' THEN 1 ELSE 0 END + CASE WHEN Sts11 = 'C' THEN 1 ELSE 0 END + CASE WHEN Sts12 = 'C' THEN 1 ELSE 0 END +
		   CASE WHEN Sts13 = 'C' THEN 1 ELSE 0 END + CASE WHEN Sts14 = 'C' THEN 1 ELSE 0 END + CASE WHEN Sts15 = 'C' THEN 1 ELSE 0 END + CASE WHEN Sts16 = 'C' THEN 1 ELSE 0 END +
		   CASE WHEN Sts17 = 'C' THEN 1 ELSE 0 END + CASE WHEN Sts18 = 'C' THEN 1 ELSE 0 END + CASE WHEN Sts19 = 'C' THEN 1 ELSE 0 END + CASE WHEN Sts20 = 'C' THEN 1 ELSE 0 END +
		   CASE WHEN Sts21 = 'C' THEN 1 ELSE 0 END + CASE WHEN Sts22 = 'C' THEN 1 ELSE 0 END + CASE WHEN Sts23 = 'C' THEN 1 ELSE 0 END + CASE WHEN Sts24 = 'C' THEN 1 ELSE 0 END +
		   CASE WHEN Sts25 = 'C' THEN 1 ELSE 0 END + CASE WHEN Sts26 = 'C' THEN 1 ELSE 0 END + CASE WHEN Sts27 = 'C' THEN 1 ELSE 0 END + CASE WHEN Sts28 = 'C' THEN 1 ELSE 0 END +
		   CASE WHEN Sts29 = 'C' THEN 1 ELSE 0 END + CASE WHEN Sts30 = 'C' THEN 1 ELSE 0 END + CASE WHEN Sts31 = 'C' THEN 1 ELSE 0 END
       )) AS [Sisa Cuti]
FROM tblattendance AS TA
INNER JOIN tblkaryawan AS TK ON TA.nik = TK.nik
INNER JOIN tblDept AS TD ON TK.[Kode Dept] = TD.[Kode Dept]
WHERE TA.NIK IN (SELECT NIK FROM nik_list) AND TA.Tahun = '2023' and TA.BULAN = '02'  --AND TA.Bulan IN ('01','02','03','05','06','07','08','09','10')
		--AND (TK.Resign = 'N' OR TK.[Resign Date] > '2022-07-01')
        --AND CONVERT(VARCHAR(10), TK.[Tgl. Kerja Lama], 120) <= '2022-07-01'
		AND TA.nik = 'K211104IT0468'
GROUP BY TA.NIK, TK.NAMA, TK.[Resign Date], TD.[Nama Departemen], TK.[Tgl. Kerja Lama]
ORDER BY TA.NIK;


