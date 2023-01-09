select tblattendance.nik,tblkaryawan.nama,tblkaryawan.[kode posisi],tblattendance.in30,tblattendance.out30,tblattendance.sts30,tblattendance.lbr130,tblattendance.lbr230,tblattendance.lbr330,tblattendance.lbr430 
       from tblAttendance inner join tblkaryawan
	        on tblattendance.nik = tblkaryawan.nik
			where tblAttendance.tahun='2022' and tblAttendance.bulan='08'  and tblattendance.sts30='H' 
   and (left(tblattendance.out30,2) = 17 and left(tblattendance.out30,2) = 17) and (right(tblattendance.out30,2) >20 and right(tblattendance.out30,2) <=40)     
   and tblkaryawan.[kode posisi] <='G40'

--			where tahun=2022 and bulan=8 and tblkaryawan.[kode posisi] <='G40' and left(out30,2)=15



-- kosongkan lembur dibawah jam 15.30

update tblattendance 
       set tblattendance.lbr130=1,
	       tblattendance.lbr230=1.5,
		   tblattendance.lbr330=0,
		   tblattendance.lbr430=0 
	   from tblAttendance 
inner join tblkaryawan on tblattendance.nik = tblkaryawan.nik
where tblAttendance.tahun='2022' and tblAttendance.bulan='08'  and tblattendance.sts30='H' 
   and (left(tblattendance.out30,2) = 17 and left(tblattendance.out30,2) = 17) and (right(tblattendance.out30,2) >20 and right(tblattendance.out30,2) <=40)     
   and tblkaryawan.[kode posisi] <='G40'


-- Tanggal 31

select tblattendance.nik,tblkaryawan.nama,tblkaryawan.[kode posisi],tblattendance.in31,tblattendance.out31,tblattendance.sts31,tblattendance.lbr131,tblattendance.lbr231,tblattendance.lbr331,tblattendance.lbr431 
       from tblAttendance inner join tblkaryawan
	        on tblattendance.nik = tblkaryawan.nik
			where tblAttendance.tahun='2022' and tblAttendance.bulan='08'  and tblattendance.sts31='H' 
      and (left(tblattendance.out31,2) = 17 and left(tblattendance.out31,2) = 17) and (right(tblattendance.out31,2) >20 and right(tblattendance.out31,2) <=40)     
   and tblkaryawan.[kode posisi] <='G40'



update tblattendance 
       set tblattendance.lbr131=1,
	       tblattendance.lbr231=1.5,
		   tblattendance.lbr331=0,
		   tblattendance.lbr431=0 
	   from tblAttendance 
inner join tblkaryawan on tblattendance.nik = tblkaryawan.nik
where tblAttendance.tahun='2022' and tblAttendance.bulan='08'  and tblattendance.sts31='H' 
      and (left(tblattendance.out31,2) = 17 and left(tblattendance.out31,2) = 17) and (right(tblattendance.out31,2) >20 and right(tblattendance.out31,2) <=40)     
      and tblkaryawan.[kode posisi] <='G40'















-- jam 15.30 - 16.10   Lembur 1= .5 jam
update tblattendance 
       set tblattendance.lbr130=0.5,
	       tblattendance.lbr230=0,
		   tblattendance.lbr301=0,
		   tblattendance.lbr401=0 
	   from tblAttendance 
inner join tblkaryawan on tblattendance.nik = tblkaryawan.nik
where tblAttendance.tahun='2022' and tblAttendance.bulan='07'   
   and (left(tblattendance.out01,2)=16 and (right(tblattendance.out01,2) <= 20)   )   
   and tblkaryawan.[kode posisi] <='G40'
   

-- jam 16.20 - 16.40    Lembur 1 = 1 jam
update tblattendance 
       set tblattendance.lbr101=1,
	       tblattendance.lbr201=0,
		   tblattendance.lbr301=0,
		   tblattendance.lbr401=0 
	   from tblAttendance 
inner join tblkaryawan on tblattendance.nik = tblkaryawan.nik
where tblAttendance.tahun='2022' and tblAttendance.bulan='07'
   and (left(tblattendance.out01,2)=16 and (right(tblattendance.out01,2) > 20) and right(tblattendance.out01,2) <= 40)   
   and tblkaryawan.[kode posisi] <='G40'
  

-- jam 16.40 - 17.10     Lembur 1 = 1 and lembur 2 = .5 jam
update tblattendance 
       set tblattendance.lbr101=1,
	       tblattendance.lbr201=0.5 ,
		   tblattendance.lbr301=0,
		   tblattendance.lbr401=0 
	   from tblAttendance 
inner join tblkaryawan on tblattendance.nik = tblkaryawan.nik
where tblAttendance.tahun='2022' and tblAttendance.bulan='07'
   and (left(tblattendance.out01,2)=16 and (right(tblattendance.out01,2) > 40 ))
   or (left(tblattendance.out01,2)=17 and (right(tblattendance.out01,2) <= 10 ))
   and tblkaryawan.[kode posisi] <='G40'
   

--jam 17.10 - 17.40    Lembur 1 = 1 and lembur 2 = 1 jam
update tblattendance 
       set tblattendance.lbr101=1,
	       tblattendance.lbr201=1,
		   tblattendance.lbr301=0,
		   tblattendance.lbr401=0 
	   from tblAttendance 
inner join tblkaryawan on tblattendance.nik = tblkaryawan.nik
where tblAttendance.tahun='2022' and tblAttendance.bulan='07'
   and left(tblattendance.out01,2)=17 and (right(tblattendance.out01,2) > 10 and right(tblattendance.out01,2) <= 40 )
   and tblkaryawan.[kode posisi] <='G40'
   
--jam 17.41 - 18.10      Lembur 1 = 1 and lembur 2 = 1.5 jam
update tblattendance 
       set tblattendance.lbr101=1,
	       tblattendance.lbr201=1.5,
		   tblattendance.lbr301=0,
		   tblattendance.lbr401=0 
	   from tblAttendance 
inner join tblkaryawan on tblattendance.nik = tblkaryawan.nik
where tblAttendance.tahun='2022' and tblAttendance.bulan='07'
   and (left(tblattendance.out01,2)=17 and (right(tblattendance.out01,2) > 40 ))
   or (left(tblattendance.out01,2)=18 and (right(tblattendance.out01,2) <= 10 ))
   and tblkaryawan.[kode posisi] <='G40'
   
-- jam 11.11 - 11.40    Lembur 1 = 1 and lembur 2 = 2 jam
update tblattendance 
       set tblattendance.lbr101=1,
	       tblattendance.lbr201=2,
		   tblattendance.lbr301=0,
		   tblattendance.lbr401=0 
	   from tblAttendance 
inner join tblkaryawan on tblattendance.nik = tblkaryawan.nik
where tblAttendance.tahun='2022' and tblAttendance.bulan='07'
   and (left(tblattendance.out01,2)=18 and (right(tblattendance.out01,2) > 10 and right(tblattendance.out01,2) <= 40 ))
   and tblkaryawan.[kode posisi] <='G40'
  
-- jam 11.41 - 19.10    Lembur 1 = 1 and lembur 2 = 2.5 jam

update tblattendance 
       set tblattendance.lbr101=1,
	       tblattendance.lbr201=2.5,
		   tblattendance.lbr301=0,
		   tblattendance.lbr401=0 
	   from tblAttendance 
inner join tblkaryawan on tblattendance.nik = tblkaryawan.nik
where tblAttendance.tahun='2022' and tblAttendance.bulan='07'
   and (left(tblattendance.out01,2)=18 and (right(tblattendance.out01,2) > 40 ))
   or (left(tblattendance.out01,2)=19 and (right(tblattendance.out01,2) <= 10 ))
   and tblkaryawan.[kode posisi] <='G40'
  
-- jam 19.11 - 19.40     -- jam 11.41 - 19.10    Lembur 1 = 1 and lembur 2 = 3 jam
update tblattendance 
       set tblattendance.lbr101=1,
	       tblattendance.lbr201=3,
		   tblattendance.lbr301=0,
		   tblattendance.lbr401=0 
	   from tblAttendance 
inner join tblkaryawan on tblattendance.nik = tblkaryawan.nik
where tblAttendance.tahun='2022' and tblAttendance.bulan='07'
   and (left(tblattendance.out01,2)=19 and (right(tblattendance.out01,2) > 10 and  right(tblattendance.out01,2) <= 40 ))
   and tblkaryawan.[kode posisi] <='G40'
      
-- jam 19.41 - 20.10        -- jam 11.41 - 19.10    Lembur 1 = 1 and lembur 2 = 3.5 jam

update tblattendance 
       set tblattendance.lbr101=1,
	       tblattendance.lbr201=3.5,
		   tblattendance.lbr301=0,
		   tblattendance.lbr401=0 
	   from tblAttendance 
inner join tblkaryawan on tblattendance.nik = tblkaryawan.nik
where tblAttendance.tahun='2022' and tblAttendance.bulan='07'
   and (left(tblattendance.out01,2)=19 and (right(tblattendance.out01,2) > 40 ))
   or ( left(tblattendance.out01,2)=20 and (right(tblattendance.out01,2) <= 10 ))
   and tblkaryawan.[kode posisi] <='G40'

-- jam 20.11 - 20.41     -- jam 11.41 - 19.10    Lembur 1 = 1 and lembur 2 = 4 jam
update tblattendance 
       set tblattendance.lbr101=1,
	       tblattendance.lbr201=4,
		   tblattendance.lbr301=0,
		   tblattendance.lbr401=0 
	   from tblAttendance 
inner join tblkaryawan on tblattendance.nik = tblkaryawan.nik
where tblAttendance.tahun='2022' and tblAttendance.bulan='07'
   and (left(tblattendance.out01,2)=20 and (right(tblattendance.out01,2) > 10 and right(tblattendance.out01,2) <= 40 ))
   and tblkaryawan.[kode posisi] <='G40'

-- jam 20.41 - 21.10     -- jam 11.41 - 19.10    Lembur 1 = 1 and lembur 2 = 4.5 jam
update tblattendance 
       set tblattendance.lbr101=1,
	       tblattendance.lbr201=4.5,
		   tblattendance.lbr301=0,
		   tblattendance.lbr401=0 
	   from tblAttendance 
inner join tblkaryawan on tblattendance.nik = tblkaryawan.nik
where tblAttendance.tahun='2022' and tblAttendance.bulan='07'
   and (left(tblattendance.out01,2)=20 and (right(tblattendance.out01,2) > 40 ))
   or (left(tblattendance.out01,2)=21 and (right(tblattendance.out01,2) <= 10 ))
   and tblkaryawan.[kode posisi] <='G40'


-- jam 21.41 - 22.10     -- jam 11.41 - 19.10    Lembur 1 = 1 and lembur 2 = 3.5 jam 
update tblattendance 
       set tblattendance.lbr202=3.5  from tblattendance
	   inner join tblkaryawan
	   on tblAttendance.nik = tblkaryawan.nik
where tblAttendance.tahun=2022 and tblAttendance.bulan=7 and
      tblkaryawan.[kode posisi] <= 'G40' and
	  left(tblattendance.out02,2) >21 and (right(tblattendance.out02,2) < 40) 
	  and left(tblattendance.in01,2) <= 8
	 -- and tblattendance.lbr201=3

-- jam 22.10 - 22.40     -- jam 11.41 - 19.10    Lembur 1 = 1 and lembur 2 = 3 jam
update tblattendance 
       set tblattendance.lbr202=4  from tblattendance
	   inner join tblkaryawan
	   on tblAttendance.nik = tblkaryawan.nik
where tblAttendance.tahun=2022 and tblAttendance.bulan=7 and
      tblkaryawan.[kode posisi] <= 'G40' and
	  (left(tblattendance.out02,2)=22 and (right(tblattendance.out02,2) > 40 ))
   or (left(tblattendance.out02,2)=23 and (right(tblattendance.out02,2) <= 10 ))
	  and left(tblattendance.in01,2) <= 8

