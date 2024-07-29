select tk.nik,tk.nama,In13,Out13,Sts13,Lbr113,Lbr213,Lbr313,Lbr413,In14,Out14,Sts14,Lbr114,Lbr214,Lbr314,Lbr414,TS.[13] from tblAttendance as ta
inner join tblKaryawan as tk on tk.NIK = ta.NIK
inner join Tblshifbulan as ts on ta.NIK = ts.nik
where ta.tahun = 2024 and ta.bulan = 7 and ts.tahun = 2024 and ts.bulan = 7 and tk.[Kode Dept] = 'T' AND TS.[13] = '3' and Sts14 = 'L'

UPDATE tblAttendance SET IN13 = '16:30',Out13 = '21:30',Sts13 = 'H',Lbr113 = '0',Lbr213 = '0',Lbr313 = '0',Lbr413 = '0',IN14 = '',Out14 = '',Sts14 = '',Lbr114 = '0',Lbr214 = '0',Lbr314 = '0',Lbr414 = '0' FROM tblAttendance AS TA
inner join tblKaryawan as tk on tk.NIK = ta.NIK
inner join Tblshifbulan as ts on ta.NIK = ts.nik
where ta.tahun = 2024 and ta.bulan = 7 and ts.tahun = 2024 and ts.bulan = 7 and tk.[Kode Dept] = 'T' AND TS.[13] = '3' and Sts14 = 'L'