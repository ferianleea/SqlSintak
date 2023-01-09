select tblslipgaji.[kode dept],tbldept.[Nama Departemen],tblslipgaji.[kode bagian],tblbagian.[nama bagian],count(*) as Orang ,sum(tblslipgaji.[gaji pokok]) as Gaji_Pokok,sum(tblslipgaji.[t jabatan]) as T_jabatan,sum(tblslipgaji.skill) as T_SKill,
      sum(tblslipgaji.[permi hadir]) as Premi_hadir,sum(tblslipgaji.[T kerajinan]) as Ins_mgu,sum(tblslipgaji.kop_wajib) as Ins_Qc,
	  sum(tblslipgaji.[upah lbr 1]) as L_150,sum(tblslipgaji.[upah lbr 2]) as L_200,sum(tblslipgaji.[upah lbr 3]) as L_300, sum(tblslipgaji.[Upah Lbr 4]) as L_400,
	  sum([Pot. Absen]) as Pot_absen,sum(gator) as Gaji_kotor,sum(pph21total) as PPH21,sum(astek+pensiun) as BPJS_TK_PENSIUN,
	  sum(round(((tblslipgaji.[gaji pokok]+tblslipgaji.[t jabatan])* 0.0424)+tblslipgaji. pensiunp,0)) as BPJSTK_6_89,sum(tblslipgaji.bpjskes) as BPJS_KES,sum(tblslipgaji.bpjsp) as BPJS_4,
	  sum(tblslipgaji.astek+tblslipgaji.pensiun) +sum(round(((tblslipgaji.[gaji pokok]+tblslipgaji.[t jabatan])* 0.0424)+ tblslipgaji.pensiunp,0)) +sum(tblslipgaji.bpjskes) +sum(tblslipgaji.bpjsp) as BPJS_Total,
	  sum(tblslipgaji.[gaji diterima])

 from tblslipgaji inner join tbldept
      on tblslipgaji.[kode dept] = tbldept.[Kode Dept]
	  inner join tblbagian
	  on (tblslipgaji.[kode dept] = tblbagian.[Kode Dept] and tblslipgaji.[kode bagian] = tblbagian.[Kode bagian])
	  where tblslipgaji.tahun=2022 and tblslipgaji.bulan=8
group by tblslipgaji.[kode dept],tblslipgaji.[kode bagian],tbldept.[Nama Departemen],tblbagian.[nama bagian] order by tblslipgaji.[kode dept],tblslipgaji.[Kode Bagian]
