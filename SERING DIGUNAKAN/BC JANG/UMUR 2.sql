SELECT
		 T1.NIK, T10.NAMA, T11.[Nama Departemen], T12.[Nama Bagian], T13.Jabatan,
		 
		 /*T1.Sts01, T1.Sts02, T1.Sts03, T1.Sts04, T1.Sts05, T1.Sts06, T1.Sts07, T1.Sts08, T1.Sts09, T1.Sts10,
	     T1.Sts11, T1.Sts12, T1.Sts13, T1.Sts14,*/ T1.Sts15, T1.Sts16,T1.Sts17/*, T1.Sts18, T1.Sts19, T1.Sts20,
		 T1.Sts22, T1.Sts22, T1.Sts23, T1.Sts24, T1.Sts25, T1.Sts26, T1.Sts27, T1.Sts28, T1.Sts29, T1.Sts30, T1.Sts31*/
		 ,T10.[Tgl. Kerja Lama],T10.[kontrak ke], T10.[Tgl. Lahir], DATEDIFF(year, T10.[Tgl. Lahir], GETDATE()) AS umur

FROM tblAttendance AS T1

INNER JOIN tblKaryawan	AS T10 ON T1.NIK = T10.NIK
INNER JOIN TBLDEPT		AS T11 ON T11.[Kode Dept] = T10.[Kode Dept]
INNER JOIN tblBagian	AS T12 ON T10.[Kode Dept] = T12.[Kode Dept] AND T12.[Kode Bagian] = T10.[Kode Bagian]
INNER JOIN TblJabatan	AS T13 ON T13.JabatanID = T10.[Kode Posisi]
WHERE 1=1
AND T1.Tahun >= '2023' AND T1.Bulan = '05'
AND (T10.Resign = 'N' OR T10.[Resign Date] > '2023-05-17')
AND DATEDIFF(year, T10.[Tgl. Lahir], GETDATE()) > '30'
--AND T10.[Kode Dept] = 'N'
--AND T10.[Kode Dept] = 'O'
--AND T10.[Kode Dept] = 'R'
--AND T10.[Kode Dept] IN ('T','U','S','L','K')
AND T10.[Kode Dept] NOT IN ('T','U','S','L','K','N','O','R')

