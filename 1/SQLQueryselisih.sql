select nik,nama from payrollmanu.dbo.tblkaryawan where nik not in ( select nik from payrollmanu.dbo.tblSlipGaji where bulan=9 and tahun=2022)

select *  from payrollmanu.dbo.tblkaryawan where nik not in ( select nik from payrollmanu.dbo.tblSlipGaji where bulan=9 and tahun=2022)


-- mGJKotor = Round(((mGJDasar + rsGaji!Revisi + mJbt + mskill + mPremiHadir + mL1 + mL2 + mL3 + mL4 + mUkerajinan + mUshift + mUshift1 - mPotong - mPotOff + mbpjsP + mbpjstkp + mastek)), 4) ' Yg lama  ini yg dipakai ( untuk hitung Pph Pribadi )
                                                                                                                                                                                                                                                                        -- mGJBersih = (((mGJKotor - mastek - mPajak - mDendaPJK - mspn - mbpjs - mpensiun)))
select sum([gaji pokok]) as gapok ,sum([t jabatan]) as jabatan ,sum([skill]) as skill,sum([transport]) as transport,sum([permi hadir]) as premi_hadir,sum([upah lbr 1]+[upah lbr 2]+[upah lbr 3]+[upah lbr 4]) as lembur ,sum([pot. absen]) as potongan,sum([Gator]) as Gator,sum(bpjskes) as bpjskes,sum(astek) as astek,sum(pensiun) as pensiun,sum([pph21total]+[PJK Denda]) as pph21,sum([Gaji Bersih]) as Gaji_bersih from tblslipgaji where tahun=2022 and (bulan=9)
select sum([gaji pokok]) as gapok ,sum([t jabatan]) as jabatan ,sum([skill]) as skill,sum([transport]) as transport,sum([permi hadir]) as premi_hadir,sum([upah lbr 1]+[upah lbr 2]+[upah lbr 3]+[upah lbr 4]) as lembur ,sum([pot. absen]) as potongan,sum([Gator]) as Gator,sum(bpjskes) as bpjskes,sum(astek) as astek,sum(pensiun) as pensiun,sum([pph21total]+[PJK Denda]) as pph21,sum([Gaji Bersih]) as Gaji_bersih from payroll.dbo.tblslipgaji where tahun=2022 and (bulan=9)

select sum([gaji pokok]),sum([upah lbr 1]+[upah lbr 2]+[upah lbr 3]+[upah lbr 4]),sum([Gator] ),sum([pot. absen]),sum([Gaji Bersih]) from payroll.dbo.tblSlipGaji where tahun=2022 and (bulan=9)