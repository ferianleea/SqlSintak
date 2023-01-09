SELECT tblKaryawan.NIK FROM tblKaryawan WHERE tblKaryawan.NIK NOT IN (SELECT NIK FROM tblAttendance WHERE Tahun = '2022'
AND BULAN = '07') AND tblKaryawan.Resign = 'N' OR (tblKaryawan.Resign = 'Y' AND tblKaryawan.[Resign Date] >= '2022-07-01')
