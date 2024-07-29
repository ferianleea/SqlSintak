select tblKaryawan.NIK,tblKaryawan.NAMA,tblKaryawan.ALAMAT,tbldept.[Nama Departemen],tblbagian.[Nama Bagian],TblJabatan.Jabatan,tblKaryawan.[Tgl. Kerja Lama],
		tblKaryawan.[Gaji Pokok],tblKaryawan.[Tunjangan Jabatan],tblKaryawan.[Tunjangan Skill],tblKaryawan.[Tunjangan Transport],tblKaryawan.[Premi Hadir],tblKaryawan.Jamsostek,Resign,[Resign Date],[kontrak ke] from tblKaryawan 
	        inner join tbldept on tbldept.[Kode Dept] =tblkaryawan.[Kode Dept]
			inner join TblJabatan on TblJabatan.JabatanID = tblKaryawan.[Kode Posisi]
			inner join tblbagian on (tblbagian.[Kode Dept] = tblkaryawan.[Kode Dept] and tblBagian.[Kode Bagian] =tblkaryawan.[Kode Bagian] ) order by NIK


select tbldept.[Nama Departemen],tblKaryawan.NIK,tblKaryawan.NAMA,tblKaryawan.ALAMAT,tblbagian.[Nama Bagian],TblJabatan.Jabatan,tblKaryawan.[Tgl. Kerja Lama],
        tblKaryawan.[Gaji Pokok],tblKaryawan.[Tunjangan Jabatan],tblKaryawan.[Tunjangan Skill],tblKaryawan.[Tunjangan Transport],tblKaryawan.[Premi Hadir],tblKaryawan.Jamsostek,[kontrak ke] from tblKaryawan
            inner join tbldept on tbldept.[Kode Dept] =tblkaryawan.[Kode Dept]
            inner join TblJabatan on TblJabatan.JabatanID = tblKaryawan.[Kode Posisi]
            inner join tblbagian on (tblbagian.[Kode Dept] = tblkaryawan.[Kode Dept] and tblBagian.[Kode Bagian] =tblkaryawan.[Kode Bagian] ) where resign = 'N' order by tblKaryawan.[Kode Dept]