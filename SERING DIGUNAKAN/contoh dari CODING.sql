insert into TmpRpttblKaryawan select '4567890' as waktu, left(tblPerusahaan.Initial,1),left(tblKaryawan.NIK,14),left(tblKaryawan.NAMA,50),left(tblKaryawan.ALAMAT,150), 
               left(tbldaerah.[nama daerah],25),CASE tblKaryawan.[Jenis Kelamin] WHEN '0' THEN 'Perempuan' WHEN '1' THEN 'Laki-laki' END AS [Jenis Kelamin], 
               left(tblagama.Keterangan,15) ,tblkaryawan.[Kode Pendidikan] , tblKaryawan.kewarganegaraan, 
               CASE tblKaryawan.Marital WHEN '0' THEN 'Belum Menikah' WHEN '1' THEN 'Menikah' END AS Status, 
               tblKaryawan.Child,left(tblKaryawan.[tempat lahir],100), tblKaryawan.[tgl. lahir], tblKaryawan.[Tgl. Kerja],
               left(tblDept.[Nama Departemen],25), left(tblbagian.[nama Bagian],24), left(tbljabatan.[jabatan],25), 
               tblkaryawan.[gaji pokok], tblkaryawan.[tunjangan jabatan], tblkaryawan.[tunjangan skill], tblkaryawan.[tunjangan transport],
               tblkaryawan.[premi hadir], tblkaryawan.catering, tblkaryawan.jamsostek, tblkaryawan.resign, tblkaryawan.[resign date], 
               tblkaryawan.alasan, tblkaryawan.[kode bank], tblkaryawan.AccNo, tblkaryawan.[status shift], tblkaryawan.Shift,tblkaryawan.[check roll id],
               left(tblkaryawan.NPWP,25),left(tblkaryawan.[nomor identitas],25), tblkaryawan.[masa berlaku identitas], tblkaryawan.[tgl. kerja lama], 
               left(tblkaryawan.[ibu kandung],50),tblserikat.initial, tblkaryawan.BPJSTK , tblkaryawan.bpjs_kes, tblkaryawan.bpjs_tanggung,
               left(tblkaryawan.bpjsno,25), tblkaryawan.pensiun, tblkaryawan.[kontrak ke], left(tblkaryawan.[no hp],27),tblkaryawan.karir 
               from tblkaryawan left outer join tbldept on tblkaryawan.[kode dept]= tbldept.[kode dept] 
               inner join tblperusahaan on tblkaryawan.[kode perusahaan] = tblperusahaan.[kode perusahaan]
               left outer join tblagama on tblagama.[Kode Agama] =tblkaryawan.[Kode Agama] 
               left outer join tbljabatan on tblkaryawan.[kode posisi] = tbljabatan.[jabatanid] 
               left outer join tblbagian on tblkaryawan.[kode dept] = tblbagian.[kode dept] and tblkaryawan.[kode bagian] = tblbagian.[kode bagian] 
               left outer join tbldaerah on tbldaerah.[Kode Daerah] = tblkaryawan.[Kode Daerah]  left outer join tblserikat on tblserikat.[kode serikat] = tblkaryawan.serikat 
                where tblkaryawan.[kode perusahaan]='B'