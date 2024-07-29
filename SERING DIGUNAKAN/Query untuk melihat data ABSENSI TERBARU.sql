select TA.tahun,TA.Bulan,TA.nik,TK.nama,TD.[Kode Dept],TD.[Nama Departemen],TB.[Kode Bagian],TB.[Nama Bagian],
	   TK.[Kode Posisi],TJ.Jabatan,
       TA.[in16],TA.[out16],TA.[sts16],/*TA.Lbr129,TA.Lbr229,TA.Lbr329,TA.Lbr329,*/
	   TK.Resign,TK.[Resign Date],TK.[Tgl. Kerja Lama],TK.Shift
FROM tblattendance AS TA
			inner join tblkaryawan AS TK ON TA.nik=TK.nik
	        inner join tbldept AS TD ON TD.[Kode Dept] =TK.[Kode Dept]
			inner join TblJabatan AS TJ  ON TJ.JabatanID = TK.[Kode Posisi]
			inner join tblbagian AS TB ON (TB.[Kode Dept] = TK.[Kode Dept] and TB.[Kode Bagian] =TK.[Kode Bagian] )
			
	   where TA.tahun=2023 and TA.bulan=5
			 AND (TK.Resign = 'N' OR TK.[Resign Date] > '2023-05-12')
             AND CONVERT(VARCHAR(10), TK.[Tgl. Kerja Lama], 120) <= '2023-05-12' /*AND tblkaryawan.[kode dept]='Q' AND tblKaryawan.Resign = 'N'*/
	   order by TA.nik

SELECT * FROM tblAttendance
INNER JOIN tblKaryawan ON tblAttendance.NIK = tblKaryawan.NIK
WHERE (tblKaryawan.Resign = 'N' OR tblKaryawan.[Resign Date] > '2023-05-16')
		AND CONVERT(VARCHAR(10), tblKaryawan.[Tgl. Kerja Lama], 120) <= '2023-05-16'






