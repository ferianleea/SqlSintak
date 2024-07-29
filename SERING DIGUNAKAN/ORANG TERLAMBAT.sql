SELECT A.tahun, A.bulan, K.nik, K.NAMA, A.In29 AS [JAM MASUK], K.Shift,s.[29], H.kdhari_1 
FROM tblAttendance A 
INNER JOIN tblkaryawan K ON A.nik = K.nik
INNER JOIN tblkdhari H ON A.nik = H.nik
inner join Tblshifbulan S on a.NIK = s.nik
WHERE A.Bulan = 3 AND H.Bulan = 3 AND s.bulan = 3 and
    CASE 
        WHEN K.Shift in ('1','0') AND CONVERT(time, A.In29) BETWEEN '07:00:00' AND '12:00:00' THEN 1
		WHEN K.Shift = '2' AND A.In29 > '15:00' - '' AND H.kdhari_1 = '5' THEN 1
        WHEN K.Shift = '2' AND A.In29 > '20:00' AND H.kdhari_1 = '6' THEN 1
		WHEN K.Shift = '3' AND A.In29 > '23:00' AND H.kdhari_1 = '5' THEN 1
        ELSE 0
    END = 1

SELECT * FROM tblKdHari WHERE Bulan = 3 and nik like '%5696%'
select * from Tblshifbulan where 


SELECT A.tahun,A.bulan,K.nik,In29 AS [JAM MASUK],K.Shift FROM 
    tblAttendance A 
	inner join tblkaryawan K on A.nik = K.nik
WHERE A.Bulan = 3 and
    CASE 
        WHEN K.Shift = '2' THEN
            CASE WHEN A.In29 > '15:00' THEN 1
			ELSE 0
			END
        WHEN K.Shift = '2' THEN
            CASE WHEN A.In29 > '19:00' THEN 1
			ELSE 0
			END
		ELSE 0
    END = 1


SELECT A.tahun, A.bulan, K.nik, K.NAMA, A.In29 AS [JAM MASUK], K.Shift, s.[29], H.kdhari_1 
FROM tblAttendance A 
INNER JOIN tblkaryawan K ON A.nik = K.nik
INNER JOIN tblkdhari H ON A.nik = H.nik
INNER JOIN Tblshifbulan S ON A.NIK = S.nik
WHERE A.Bulan = 3 AND H.Bulan = 3 AND S.Bulan = 3 AND 
(
        K.Shift IN ('1', '0') AND CONVERT(time, A.In29) BETWEEN '07:00:00' AND '12:00:00'
        OR
        K.Shift = '2' AND CONVERT(time, A.In29) BETWEEN '15:00:00' AND '23:00:00' AND H.kdhari_1 = '5'
        OR
        K.Shift = '2' AND (CONVERT(time, A.In29) BETWEEN '19:00:00' AND '23:59:59' OR CONVERT(time, A.In30) BETWEEN '00:00:00' AND '04:00:00') AND H.kdhari_1 = '6'
        OR
        K.Shift = '3' AND (CONVERT(time, A.In29) BETWEEN '23:00:00' AND '23:59:59' OR CONVERT(time, A.In29) BETWEEN '00:00:00' AND '07:00:00') AND H.kdhari_1 = '5'
)