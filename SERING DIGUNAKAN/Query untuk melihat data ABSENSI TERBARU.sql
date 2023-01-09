select tblattendance.tahun,tblAttendance.Bulan,tblattendance.nik,tblkaryawan.nama,tbldept.[Kode Dept],tbldept.[Nama Departemen],tblbagian.[Kode Bagian],tblbagian.[Nama Bagian],
	   --tblKaryawan.[Kode Posisi],TblJabatan.Jabatan, 
       tblattendance.[in06],tblattendance.[out06],tblattendance.[sts06],--tblAttendance.Lbr129,tblAttendance.Lbr229,tblAttendance.Lbr329,tblAttendance.Lbr329,
	   tblKaryawan.Resign,tblKaryawan.[Resign Date],tblKaryawan.[Tgl. Kerja Lama],tblKaryawan.Shift
	   from tblattendance 
			inner join tblkaryawan on tblattendance.nik=tblkaryawan.nik
	        inner join tbldept on tbldept.[Kode Dept] =tblkaryawan.[Kode Dept]
			inner join TblJabatan on TblJabatan.JabatanID = tblKaryawan.[Kode Posisi]
			inner join tblbagian on (tblbagian.[Kode Dept] = tblkaryawan.[Kode Dept] and tblBagian.[Kode Bagian] =tblkaryawan.[Kode Bagian] )
			
	   where tblattendance.tahun=2023 and tblattendance.bulan=1 --AND tblkaryawan.[kode dept]='N' AND tblKaryawan.Resign = 'N'
	   order by tblattendance.nik

SELECT * FROM tblAttendance WHERE Tahun = 2022 AND Bulan = 12 ORDER BY NIK

select nik,nama,[Tgl. Kerja],[Tgl. Kerja Baru],[Tgl. Kerja Lama] from tblKaryawan where nik like '%5696%'



