select * from Tblshifbulan where nik like '%6361%' AND bulan = 12

select shift from tblKaryawan where nik like '%3032%'

update tblkaryawan set tblkaryawan.[shift]=Tblshifbulan.[09],tblkaryawan.[Status Shift]='N' from tblkaryawan         --merubah status shift
        inner join Tblshifbulan on tblkaryawan.nik=Tblshifbulan.nik 
		where Tblshifbulan.tahun='2023' and Tblshifbulan.bulan='01' and Tblshifbulan.[09] > '0'
		
UPDATE Tblshifbulan SET [kode dept] = 'S',[kode bagian] = '9000' where nik like '%6361%' AND bulan = 12

UPDATE Tblshifbulan SET [kode dept] = 'S',[kode bagian] = '9000' where nik = 'K220221CUT3296' AND BULAN = '12'
UPDATE Tblshifbulan SET [kode dept] = 'S',[kode bagian] = '9000' where nik = 'K220301CUT3417' AND BULAN = '12'
UPDATE Tblshifbulan SET [kode dept] = 'S',[kode bagian] = '9000' where nik = 'K220221CUT3296' AND BULAN = '12'
UPDATE Tblshifbulan SET [kode dept] = 'S',[kode bagian] = '9000' where nik = 'K220718SEW5997' AND BULAN = '12'
UPDATE Tblshifbulan SET [kode dept] = 'S',[kode bagian] = '9000' where nik = 'K220718CUT6024' AND BULAN = '12'
UPDATE Tblshifbulan SET [kode dept] = 'S',[kode bagian] = '9000' where nik = 'K220304CUT3594' AND BULAN = '12'
UPDATE Tblshifbulan SET [kode dept] = 'S',[kode bagian] = '9000' where nik = 'K220304CUT3533' AND BULAN = '12'
UPDATE Tblshifbulan SET [kode dept] = 'S',[kode bagian] = '9000' where nik = 'K220912CUT7656' AND BULAN = '12'
UPDATE Tblshifbulan SET [kode dept] = 'S',[kode bagian] = '9000' where nik = 'K220202CUT3000' AND BULAN = '12'
UPDATE Tblshifbulan SET [kode dept] = 'S',[kode bagian] = '9000' where nik = 'K220725CUT6367' AND BULAN = '12'
