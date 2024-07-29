INSERT INTO tblmasacuti ([tgl. mulai], masa, nik)
SELECT DATEADD(DAY, 1, [tgl. selesai]), '3', 'K210801ENG0007'
FROM tblmasacuti
WHERE [tgl. selesai] < GETDATE() AND nik = 'K210801ENG0007';

INSERT INTO tblmasacuti ([tgl. mulai], masa, nik)
SELECT DATEADD(DAY, 1, [tgl. selesai]), 
       (SELECT MAX(masa) + 1 FROM tblmasacuti), 
       'K210801ENG0007'
FROM tblmasacuti
WHERE [tgl. selesai] < GETDATE() AND nik = 'K210801ENG0007';

INSERT INTO tblmasacuti ([tgl. mulai], masa, nik)
SELECT DATEADD(DAY, 1, [tgl. selesai]), 
       (SELECT MAX(masa) + 1 FROM tblmasacuti), 
       'K210801ENG0007'
FROM tblmasacuti
WHERE [tgl. selesai] < GETDATE() AND nik = 'K210801ENG0007'
ORDER BY [tgl. selesai] DESC
OFFSET 0 ROWS
FETCH FIRST 1 ROW ONLY;


IF (SELECT MAX([tgl. selesai]) FROM tblmasacuti WHERE nik = 'K210801ENG0007') < GETDATE()
BEGIN
    INSERT INTO tblmasacuti ([tgl. mulai], masa, nik)
    SELECT 
        DATEADD(DAY, 1, MAX([tgl. selesai])),
        (SELECT CASE WHEN MAX(masa) IS NULL THEN 1 ELSE MAX(masa) + 1 END FROM tblmasacuti),
        'K210801ENG0007'
    FROM 
        tblmasacuti
    WHERE 
        nik = 'K210801ENG0007';
END









WITH RankedMasa AS (
    SELECT
        [tgl. mulai],
        [tgl. selesai],
        masa,
        nik,
        ROW_NUMBER() OVER (PARTITION BY nik ORDER BY masa DESC) AS RowNum
    FROM
        tblmasacuti
    WHERE
        nik = 'K210801ENG0007'
)
UPDATE RankedMasa
SET [tgl. selesai] = DATEADD(YEAR, 1, [tgl. mulai])
WHERE
    RowNum = 1;


