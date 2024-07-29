

select * from tblCuti order by nik
SELECT  C.[Tgl. Mulai Cuti], C.[Tgl. Selesai Cuti], C.[Kode Cuti], M.[Keterangan Cuti], C.[Jumlah Hari], C.Alasan  
           FROM tblCuti C INNER JOIN 
           tblMasterCuti M ON C.[Kode Cuti] = M.[Kode Cuti] 
           WHERE  C.[KODE CUTI] <>'U' And ( C.Tahun = '2024' or year(c.[tgl. selesai cuti]) = '2022' ) and NIK = 'K210507GA0001' 
           order by C.[Tgl. Mulai Cuti]

SELECT c.NIK,c.NAMA, D.[Nama Departemen], B.[Nama Bagian],c.Masa,c.[Cuti Tahunan],c.[Cuti Tahunan Diambil],c.[Hut Cuti],c.[Sisa Cuti], MC.[Tgl. Mulai], MC.[Tgl. Selesai],C.keterangan,K.[Tgl. Kerja Lama] FROM tblCutiKar2 c 
                   INNER JOIN tblKaryawan K ON c.NIK = K.NIK INNER JOIN tblDept D ON K.[Kode Dept] = D.[Kode Dept] INNER JOIN tblBagian B ON K.[Kode Dept] = B.[Kode Dept] AND K.[Kode Bagian] = B.[Kode Bagian] 
                   INNER JOIN tblMasaCuti MC ON MC.NIK = C.NIK WHERE EXISTS ( SELECT 1 FROM tblCutiKar2 WHERE NIK = c.NIK GROUP BY NIK HAVING MAX(Masa) = c.Masa) 
                   AND EXISTS (SELECT 2 FROM tblMasaCuti WHERE NIK = MC.NIK GROUP BY NIK HAVING MAX(Masa) = MC.Masa) ORDER BY NIK 