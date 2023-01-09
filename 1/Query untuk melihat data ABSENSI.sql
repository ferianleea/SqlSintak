-- Untuk melihat Data Absensi
select tblattendance.tahun,bulan,tblattendance.nik,tblkaryawan.nama,tbldept.[Kode Dept],tbldept.[Nama Departemen],tblbagian.[Kode Bagian],tblbagian.[Nama Bagian], 
       tblattendance.[in01],tblattendance.[out01],tblattendance.[sts01]
	   from tblattendance inner join tblkaryawan on tblattendance.nik=tblkaryawan.nik
	        inner join tbldept on tbldept.[Kode Dept] =tblkaryawan.[Kode Dept] 
			inner join tblbagian on (tblbagian.[Kode Dept] = tblkaryawan.[Kode Dept] and tblBagian.[Kode Bagian] =tblkaryawan.[Kode Bagian] )
	   where tblattendance.tahun=2022 and tblattendance.bulan=10  -- AND tblkaryawan.[kode dept]='A' --- (utk lihat hanya departemen tertentu) 
	   order by tblkaryawan.[kode dept],tblkaryawan.[kode bagian],tblattendance.nik


-- Untuk melihat Data Absensi yang NON SHIFT saja
select tblattendance.tahun,bulan,tblattendance.nik,tblkaryawan.nama,
       tbldept.[Kode Dept],tbldept.[Nama Departemen],tblbagian.[Kode Bagian],tblbagian.[Nama Bagian], tblkaryawan.[Status Shift],
       tblattendance.[in01],tblattendance.[out01],tblattendance.[sts01]
	   from tblattendance inner join tblkaryawan on tblattendance.nik=tblkaryawan.nik
	        inner join tbldept on tbldept.[Kode Dept] =tblkaryawan.[Kode Dept] 
			inner join tblbagian on (tblbagian.[Kode Dept] = tblkaryawan.[Kode Dept] and tblBagian.[Kode Bagian] =tblkaryawan.[Kode Bagian] )
	   where tblattendance.tahun=2022 and tblattendance.bulan=10  and tblkaryawan.[Status Shift] ='N' -- AND tblkaryawan.[kode dept]='A' --- (utk lihat hanya departemen tertentu) 
	   order by tblkaryawan.[kode dept],tblkaryawan.[kode bagian],tblattendance.nik

-- Untuk melihat Data Absensi yang SHIFT saja
select tblattendance.tahun,bulan,tblattendance.nik,tblkaryawan.nama,
       tbldept.[Kode Dept],tbldept.[Nama Departemen],tblbagian.[Kode Bagian],tblbagian.[Nama Bagian], tblkaryawan.[Status Shift],tblkaryawan.[Shift], 
       tblattendance.[in01],tblattendance.[out01],tblattendance.[sts01]
	   from tblattendance inner join tblkaryawan on tblattendance.nik=tblkaryawan.nik
	        inner join tbldept on tbldept.[Kode Dept] =tblkaryawan.[Kode Dept] 
			inner join tblbagian on (tblbagian.[Kode Dept] = tblkaryawan.[Kode Dept] and tblBagian.[Kode Bagian] =tblkaryawan.[Kode Bagian] )
	   where tblattendance.tahun=2022 and tblattendance.bulan=10  and tblkaryawan.[Status Shift] ='Y' -- AND tblkaryawan.[kode dept]='A' --- (utk lihat hanya departemen tertentu) 
	   order by tblkaryawan.[kode dept],tblkaryawan.[kode bagian],tblattendance.nik