select count(*) from tblslipgaji where tahun=2022 and bulan=8 
select count(*) from tblkaryawan where resign='N' or ( resign='Y' and month([resign date])=8 and year([resign date])=2022)
delete from tblslipgaji where tahun=2022 and bulan=8 
