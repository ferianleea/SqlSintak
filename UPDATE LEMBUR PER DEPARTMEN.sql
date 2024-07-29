SELECT * FROM tblAttendance AS A
INNER JOIN tblKaryawan AS K ON K.NIK = A.NIK
WHERE K.[Kode Dept] = 'I' AND TAHUN = 2023 AND BULAN = 11 AND A.NIK LIKE '%0128%'

UPDATE tblAttendance SET LBR113 = '0',LBR213 = '0',LBR313 = '0',LBR413 = '0',
						LBR114 = '0',LBR214 = '0',LBR314 = '0',LBR414 = '0',
						LBR115 = '0',LBR215 = '0',LBR315 = '0',LBR415 = '0',
						LBR116 = '0',LBR216 = '0',LBR316 = '0',LBR416 = '0',
						LBR117 = '0',Lbr217 = '0',LBR317 = '0',LBR417 = '0',
						LBR118 = '0',Lbr218 = '0',LBR318 = '0',LBR418 = '0',
						LBR119 = '0',Lbr219 = '0',LBR319 = '0',LBR419 = '0',
						Lbr120 = '0',LBR220 = '0',LBR320 = '0',LBR420 = '0',
						LBR121 = '0',LBR221 = '0',LBR321 = '0',LBR421 = '0',
						LBR122 = '0',LBR222 = '0',LBR322 = '0',LBR422 = '0',
						LBR123 = '0',LBR223 = '0',LBR323 = '0',LBR423 = '0'
FROM tblAttendance AS A
INNER JOIN tblKaryawan AS K ON K.NIK = A.NIK
WHERE K.[Kode Dept] = 'I' AND TAHUN = 2023 AND BULAN = 11