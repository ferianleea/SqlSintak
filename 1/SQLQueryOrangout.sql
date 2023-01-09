select tblkaryawan.nik,tblkaryawan.nama,tbldept.[Nama Departemen],tblbagian.[Nama Bagian],tblkaryawan.[Tgl. Kerja Lama] as tgl_masuk,tblkaryawan.[Resign Date]
       from tblkaryawan inner join tbldept on tblkaryawan.[Kode Dept]=tblDept.[Kode Dept] 
	                    inner join tblbagian on (tblkaryawan.[Kode Dept] = tblbagian.[Kode Dept] and tblkaryawan.[Kode Bagian] = tblbagian.[Kode Bagian] )
						where tblkaryawan.[Resign] ='Y' and (tblkaryawan.[Resign Date] >='2021-10-01' and tblkaryawan.[resign date] <='2022-09-30')
						order by tbldept.[Nama Departemen],tblbagian.[Nama Bagian],tblkaryawan.nik, tblkaryawan.[Tgl. Kerja Lama] ,tblkaryawan.[Resign Date] 
