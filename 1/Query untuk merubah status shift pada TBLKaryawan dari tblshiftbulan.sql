select nik,nama,tahun,bulan,[kode dept],[09] from Tblshifbulan  where tahun='2022' and bulan='12' and [09] = '0'


update tblkaryawan set tblkaryawan.[shift]=Tblshifbulan.[29],tblkaryawan.[Status Shift]='N' from tblkaryawan         --merubah status shift
        inner join Tblshifbulan on tblkaryawan.nik=Tblshifbulan.nik 
		where Tblshifbulan.tahun='2022' and Tblshifbulan.bulan='12' and Tblshifbulan.[29] > '0'    


update tblkaryawan set tblkaryawan.[shift]=Tblshifbulan.[10],tblkaryawan.[Status Shift]='N' from tblkaryawan         -- merubah status shift menjadi non shift
        inner join Tblshifbulan on tblkaryawan.nik=Tblshifbulan.nik 
		where Tblshifbulan.tahun='2022' and Tblshifbulan.bulan='10' and Tblshifbulan.[10] = '0'    