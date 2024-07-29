SELECT  C.NIK, K.NAMA,CASE K.[Jenis Kelamin] WHEN '0' THEN 'Perempuan' WHEN '1' THEN 'Laki-laki' END AS [Jenis Kelamin], D.[Nama Departemen], B.[Nama Bagian], [Tgl. Kerja Lama] = case when left(C.NIK,1) = 'B' then K.[Tgl. Kerja Lama] else K.[Tgl. Kerja Lama] end, C.[Cuti Tahunan], C.[Cuti Tahunan Diambil],C.[Hut Cuti] as [Hut Cuti Thn Lalu],
              CASE WHEN CONVERT(INT, C.[Cuti Tahunan]) - (CONVERT(INT, C.[Cuti Tahunan Diambil])+ CONVERT(INT,C.[Hut Cuti])) >= 12 THEN 12 ELSE CONVERT(INT, C.[Cuti Tahunan]) - (CONVERT(INT, C.[Cuti Tahunan Diambil])+ CONVERT(INT,C.[Hut Cuti])) END AS [Sisa Cuti] , Keterangan 
              FROM tblCutiKar C INNER JOIN tblKaryawan K ON C.[Kode Perusahaan] = K.[Kode Perusahaan] AND ( C.NIK = K.NIK ) INNER JOIN 
              tblDept D ON K.[Kode Dept] = D.[Kode Dept] INNER JOIN 
              tblBagian B ON K.[Kode Dept] = B.[Kode Dept] AND K.[Kode Bagian] = B.[Kode Bagian] 
              WHERE K.Resign <> 'Y' and C.[Kode Perusahaan] = 'B' and Tahun = '2023' AND K.NIK = 'K220224MAT3388' order by C.NIK 



cTxt = "SELECT C.NIK,K.NAMA,C.[Cuti Tahunan],C.[Cuti Tahunan Diambil],C.[Hut Cuti]," & _
"CONVERT(INT, C.[Cuti Tahunan]) AS [Cuti Tahunan Int],CONVERT(INT, C.[Cuti Tahunan Diambil]) AS [Cuti Tahunan Diambil Int],CONVERT(INT, C.[Hut Cuti]) AS [Hut Cuti Int],CONVERT(INT, C.[Cuti Tahunan]) - (CONVERT(INT, C.[Cuti Tahunan Diambil]) + CONVERT(INT, C.[Hut Cuti])) AS [Sisa Cuti]" & _
"FROM tblCutiKar C INNER JOIN tblKaryawan K ON C.[Kode Perusahaan] = K.[Kode Perusahaan] AND (C.NIK = K.NIK) INNER JOIN tblDept D ON K.[Kode Dept] = D.[Kode Dept] INNER JOIN tblBagian B ON K.[Kode Dept] = B.[Kode Dept] AND K.[Kode Bagian] = B.[Kode Bagian]" & _
"WHERE K.Resign <> 'Y' and C.[Kode Perusahaan] = '" & Left(CmbPrsh.Text, 1) & "' and Tahun = '" & TDBMask2.Text & "' order by C.NIK"


cTxt = "SELECT  C.NIK, K.NAMA,CASE K.[Jenis Kelamin] WHEN '0' THEN 'Perempuan' WHEN '1' THEN 'Laki-laki' END AS [Jenis Kelamin], D.[Nama Departemen], B.[Nama Bagian], [Tgl. Kerja Lama] = case when left(C.NIK,1) = 'B' then K.[Tgl. Kerja Lama] else K.[Tgl. Kerja Lama] end, C.[Cuti Tahunan], C.[Cuti Tahunan Diambil],C.[Hut Cuti] as [Hut Cuti Thn Lalu]," & _
              "CASE WHEN CONVERT(INT, C.[Cuti Tahunan]) - (CONVERT(INT, C.[Cuti Tahunan Diambil])+ CONVERT(INT,C.[Hut Cuti])) >= 12 THEN 12 ELSE CONVERT(INT, C.[Cuti Tahunan]) - (CONVERT(INT, C.[Cuti Tahunan Diambil])+ CONVERT(INT,C.[Hut Cuti])) END AS [Sisa Cuti] , Keterangan " & _
              "FROM tblCutiKar C INNER JOIN tblKaryawan K ON C.[Kode Perusahaan] = K.[Kode Perusahaan] AND ( C.NIK = K.NIK ) INNER JOIN " & _
              "tblDept D ON K.[Kode Dept] = D.[Kode Dept] INNER JOIN " & _
              "tblBagian B ON K.[Kode Dept] = B.[Kode Dept] AND K.[Kode Bagian] = B.[Kode Bagian] " & _
              "WHERE K.Resign <> 'Y' and C.[Kode Perusahaan] = '" & Left(CmbPrsh.Text, 1) & "' and Tahun = '" & TDBMask2.Text & "' order by C.NIK"

cTxt = " SELECT C.NIK, K.NAMA, C.[Cuti Tahunan], C.[Cuti Tahunan Diambil], C.[Hut Cuti]," & _
   "CONVERT(INT, C.[Cuti Tahunan]) - (CONVERT(INT, C.[Cuti Tahunan Diambil]) + CONVERT(INT, C.[Hut Cuti])) AS [Sisa Cuti] FROM tblCutiKar C INNER JOIN tblKaryawan K ON C.[Kode Perusahaan] = K.[Kode Perusahaan] AND (C.NIK = K.NIK) INNER JOIN" & _
   "tblDept D ON K.[Kode Dept] = D.[Kode Dept] INNER JOIN tblBagian B ON K.[Kode Dept] = B.[Kode Dept] AND K.[Kode Bagian] = B.[Kode Bagian] WHERE K.Resign <> 'Y' AND C.[Kode Perusahaan] = '" & Left(CmbPrsh.Text, 1) & "' AND Tahun = '" & TDBMask2.Text & "' ORDER BY C.NIK"


SELECT
   C.NIK,
   K.NAMA,
   CASE K.[Jenis Kelamin] WHEN '0' THEN 'Perempuan' WHEN '1' THEN 'Laki-laki' END AS [Jenis Kelamin],
   D.[Nama Departemen],
   B.[Nama Bagian],
   [Tgl. Kerja Lama] = case when left(C.NIK,1) = 'B' then K.[Tgl. Kerja Lama] else K.[Tgl. Kerja Lama] end,
   C.[Cuti Tahunan],
   C.[Cuti Tahunan Diambil],
   C.[Hut Cuti],
   CONVERT(INT, C.[Cuti Tahunan]) AS [Cuti Tahunan Int],
   CONVERT(INT, C.[Cuti Tahunan Diambil]) AS [Cuti Tahunan Diambil Int],
   CONVERT(INT, C.[Hut Cuti]) AS [Hut Cuti Int],
   CONVERT(INT, C.[Cuti Tahunan]) - (CONVERT(INT, C.[Cuti Tahunan Diambil]) + CONVERT(INT, C.[Hut Cuti])) AS [Sisa Cuti]
FROM
   tblCutiKar C
INNER JOIN
   tblKaryawan K ON C.[Kode Perusahaan] = K.[Kode Perusahaan] AND (C.NIK = K.NIK)
INNER JOIN
   tblDept D ON K.[Kode Dept] = D.[Kode Dept]
INNER JOIN
   tblBagian B ON K.[Kode Dept] = B.[Kode Dept] AND K.[Kode Bagian] = B.[Kode Bagian]
WHERE
   K.Resign <> 'Y' AND C.[Kode Perusahaan] = 'B' AND Tahun = '2023'
ORDER BY
   C.NIK

   select * from tblCutiKar

