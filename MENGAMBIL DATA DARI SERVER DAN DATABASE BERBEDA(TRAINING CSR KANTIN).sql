EXEC sp_addlinkedserver 
   @server = 'LinkedServerName',  -- Nama server yang ditautkan
   @srvproduct = '',  -- Nama produk server
   @provider = 'SQLOLEDB',  -- Penyedia OLE DB
   @datasrc = '192.168.120.7'  -- Alamat IP server yang ditautkan
GO

EXEC sp_addlinkedsrvlogin 
   @rmtsrvname = 'LinkedServerName',  -- Nama server yang ditautkan
   @useself = 'FALSE',  -- Impersonate
   @rmtuser = 'sa',  -- Nama pengguna jarak jauh
   @rmtpassword = 'leea#2022'  -- Kata sandi pengguna jarak jauh
GO

delete payroll.dbo.tblBagian Insert into payroll.dbo.tblBagian select * from LinkedServerName.Payroll.dbo.tblBagian
delete payroll.dbo.tblDept Insert into payroll.dbo.tblDept select * from LinkedServerName.Payroll.dbo.tblDept
delete payroll.dbo.tblKaryawan Insert into payroll.dbo.tblKaryawan select * from LinkedServerName.Payroll.dbo.tblKaryawan
delete payroll.dbo.tblKdHari Insert into payroll.dbo.tblKdHari select * from LinkedServerName.Payroll.dbo.tblKdHari
delete payroll.dbo.Tblshifbulan Insert into payroll.dbo.Tblshifbulan select * from LinkedServerName.Payroll.dbo.Tblshifbulan
delete payroll.dbo.tblCutiVerifikasi Insert into payroll.dbo.tblCutiVerifikasi select * from LinkedServerName.Payroll.dbo.tblCutiVerifikasi
delete payroll.dbo.tbllog insert into payroll.dbo.tbllog select*from LinkedServerName.Payroll.dbo.tbllog