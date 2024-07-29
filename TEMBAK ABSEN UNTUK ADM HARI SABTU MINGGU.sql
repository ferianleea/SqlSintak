select ta.nik,In07,out07,sts07,Lbr107,Lbr207,lbr307,lbr407,TH.[07]
from tblAttendance as TA
inner join tblKaryawan as TK on Tk.NIK = TA.NIK 
inner join Tblshifbulan as TH on TA.NIK = TH.NIK
where TA.tahun = 2024 and TA.bulan = 7 and TH.tahun = 2024 and TH.bulan = 7 and TK.[Kode Dept] = 'T' and Sts07 <> ''

UPDATE tblAttendance SET In07 = '',OUT07 = '',STS07 = '',Lbr107 = '0',Lbr207 = '0',Lbr307 = '0',Lbr407 = '0' from tblAttendance as TA
inner join tblKaryawan as TK on Tk.NIK = TA.NIK 
inner join Tblshifbulan as TH on TA.NIK = TH.NIK
where TA.tahun = 2024 and TA.bulan = 7 and TH.tahun = 2024 and TH.bulan = 7 and TK.[Kode Dept] = 'T' and Sts07 = 'L'