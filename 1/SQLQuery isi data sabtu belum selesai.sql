insert into TmpRpttblKaryawan 
       SELECT '1010101' as Waktu, tblPerusahaan.Initial, tblPerusahaan.[Nama Perusahaan], 
               tblKaryawan.NIK, left(tblKaryawan.NAMA,50), left(tblKaryawan.ALAMAT,150), tbldaerah.[nama daerah],CASE tblKaryawan.[Jenis Kelamin] WHEN '0' THEN 'Perempuan' WHEN '1' THEN 'Laki-laki' END AS [Jenis Kelamin],
               CASE tblKaryawan.Marital WHEN '0' THEN 'Belum Menikah' WHEN '1' THEN 'Menikah' END AS Status, tblKaryawan.Child,  
               tblKaryawan.[kode agama],tblkaryawan.[Kode Pendidikan],tblKaryawan.kewarganegaraan,tblKaryawan.[tempat lahir],tblKaryawan.[tgl. lahir], 
               tblKaryawan.[Tgl. Kerja], tblKaryawan.[Kode Dept], tblDept.[Nama Departemen], tblKaryawan.[Kode Bagian], 
               tblKaryawan.[kode posisi],tblkaryawan.[gaji pokok],tblkaryawan.[tunjangan jabatan],tblkaryawan.[tunjangan skill],tblkaryawan.[tunjangan transport],
               tblkaryawan.[premi hadir],tblkaryawan.[premi hadir],tblkaryawan.catering,tblkaryawan.jamsostek,tblkaryawan.resign,tblkaryawan.[resign date],tblkaryawan.alasan,
               tblkaryawan.[kode bank],tblkaryawan.[kode bank],tblkaryawan.AccNo,tblkaryawan.[status shift],tblkaryawan.Shift,tblkaryawan.[check roll id],tblkaryawan.NPWP,  
               tblkaryawan.[nomor identitas],tblkaryawan.[masa berlaku identitas],tblkaryawan.[tgl. kerja lama],tblkaryawan.[ibu kandung],tblkaryawan.serikat,tblkaryawan.BPJSTK , 
               tblkaryawan.bpjs_kes,tblkaryawan.bpjs_tanggung,tblkaryawan.bpjsno from tblkaryawan left outer join tbldept on tblkaryawan.[kode dept]= tbldept.[kode dept]
			   inner join tblperusahaan on tblkaryawan.[kode perusahaan] = tblperusahaan.[kode perusahaan] left outer join 
			   tbljabatan on tblkaryawan.[kode posisi] = tbljabatan.[jabatanid] left outer join tblbagian on tblkaryawan.[kode dept] = tblbagian.[kode dept] and tblkaryawan.[kode bagian] = tblbagian.[kode bagian] left outer join
			   tbldaerah on tbldaerah.[Kode Daerah] = tblkaryawan.[Kode Daerah] 
			   where tblkaryawan.[kode perusahaan]='B'


insert into TmpRptKaryawan04 SELECT 'XXXX' as Waktu, tblPerusahaan.Initial, tblPerusahaan.[Nama Perusahaan], 
                tblKaryawan.NIK, left(tblKaryawan.NAMA,50), left(tblKaryawan.ALAMAT,150), CASE tblKaryawan.[Jenis Kelamin] WHEN '0' THEN 'Perempuan' WHEN '1' THEN 'Laki-laki' END AS [Jenis Kelamin], 
               CASE tblKaryawan.Marital WHEN '0' THEN 'Belum Menikah' WHEN '1' THEN 'Menikah' END AS Status, tblKaryawan.Child,  
               tblKaryawan.[Tgl. Kerja], tblKaryawan.[Kode Dept], tblDept.[Nama Departemen], tblKaryawan.[Kode Bagian], tblBagian.[Nama Bagian], 
               left(tbljabatan.jabatan,20) AS Posisi,  tblKaryawan.[Resign Date],  left(tblKaryawan.Alasan,25), tblKaryawan.[Kode Pendidikan], tblKaryawan.[Tgl. Kerja Lama]  
               FROM tblKaryawan left outer join tblDept ON tblKaryawan.[Kode Dept] = tblDept.[Kode Dept] inner join 
               tblPerusahaan ON tblKaryawan.[Kode Perusahaan] = tblPerusahaan.[Kode Perusahaan] left outer JOIN 
               tbljabatan ON tblKaryawan.[Kode Posisi] = tbljabatan.jabatanid   
                left outer JOIN tblBagian ON tblKaryawan.[Kode Dept] = tblBagian.[Kode Dept] AND tblKaryawan.[Kode Bagian] = tblBagian.[Kode Bagian] Where tblKaryawan.[Kode Perusahaan] = 'B'
               IIf(Combo4(1).ListIndex = 0, " and tblKaryawan.[Tgl. Kerja] ", " and tblKaryawan.[Resign Date] ") & " >= Cast('" & Format(DTPicker1(2).Value, "MM/dd/yyyy") & _
               "' as smalldatetime) and " & IIf(Combo4(1).ListIndex = 0, "tblKaryawan.[Tgl. Kerja] ", "tblKaryawan.[Resign Date] ") & " <= Cast('" & Format(DTPicker1(3).Value, "MM/dd/yyyy") & _
               "' as smalldatetime)  " & IIf(Left(ComboSourcing(3).Text, 1) <> "Z", " and tblKaryawan.[Kode Sourcing] = '" & Left(ComboSourcing(3).Text, 1) & "' ", "")
    