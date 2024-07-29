Insert into tblSlipGaji ( 
              Absen, [H Kerja], [H Libur], [Gaji Pokok], [T Jabatan], Skill, [Tj Masa Kerja], [basic], Transport,[Permi Hadir]
			  , Lembur1, Lembur2, Lembur3, Lembur4, [Upah Per Jam], [Upah Lbr 1], [Upah Lbr 2], [Upah Lbr 3], [Upah Lbr 4]
			  , [Biaya Jabatan], PTKP, PPH21Pct35,PPH21Total, Astek
			  , [Pot. Absen], [Gaji Bersih], Pembulatan, [Gaji Diterima]
			  , AccNo
			  ,Insentif_Allin, Gator
			  , Resign, [Tgl. Kerja]
			  , Grade, Revisi
			  , HUMP, UMP,THR, POTGP
			  , DayOff, AmtDayOff
			  , NPWP, [PJK Insentif], [PJK Denda]
			  , iuran_serikat, Kop_Wajib, Pot_Pinjaman_Kop,pensiun,pensiunp,serikat,norut
			  ,bpjskes,pcn_bpjs,bpjsp,[T Kerajinan]
			  ,[H Puasa],[U Puasa],[resign date]
			  ,[cuti hutang hari],[cuti hutang uang],[tgl proses] )
Values (
             " & mAbsen & "," & hkerja & "," & mlibur & "," & rsGaji![gaji pokok] & "," & mJbt & "," & mskill & "," & mtjmasakerja & "," & mtjbasic & "," & 0 & "," & mPremiHadir & "
			 ," & mLbr1 & "," & mLbr2 & "," & mLbr3 & "," & mLbr4 & "," & mLbrPerJam & "," & mL1 & "," & mL2 & "," & mL3 & "," & mL4 & "
			 ," & Round(mbjab, 0) & "," & mPTKP & "," & mpphPt & "," & mPajak & "," & mastek & "
			 ," & mPotong & "," & mGJBersih & "," & mBulat & "," & mGJBersih1 & "
			 ,'" & IIf(rsGaji![Kode Bagian] = "OUT", Left(mAccNo, 20), IIf(rsGaji!resign = "Y" Or mGJBersih < 201000, "", Left(mAccNo, 20))) & "'
			 ," & mULbrAllin & "," & mGJKotor & "
			 , '" & Trim(mResign) & "', cast('Format(rsGaji![tgl. kerja lama], "MM/dd/yyyy") & "' as smalldatetime )
			 , " & mHadir & "," & mrevisi & "
			 ," & mUshift & "," & mUshift1 & "," & rsGaji![uang makan] & "," & 0 & "
			 ," & IIf(IsNull(mOff), 0, mOff) & "," & mPotOff & "
			 ,'" & Left(rsGaji!NPWP, 20) & "', " & mIncPJK & "," & mDendaPJK & "
			 ," & mspn & "," & minsqc & "," & 0 & "," & mpensiun & "," & mpensiunp & ",'" & rsGaji!serikat & "' ," & mnorut & "
			 ," & mbpjs & "," & mpct & "," & mbpjsP & "," & mtjkerajinan & ",
             mHariPuasa & "," & mUangPuasa & ",'" & rsGaji![Resign Date] & "'
			 ," & 0 & "," & 0 & ",'" & prodate & "')"

Insert into tblSlipGaji 
			( Status, Absen, [H Kerja], [H Libur],
			 [Gaji Pokok], [T Jabatan], Skill, [Tj Masa Kerja], basic , Transport,[Permi Hadir],
			 Lembur1, Lembur2, Lembur3, Lembur4, [Upah Per Jam],
			 [Upah Lbr 1], [Upah Lbr 2], [Upah Lbr 3],[Upah Lbr 4],
			 [Biaya Jabatan], PTKP, PPH21Pct35,PPH21Total, Astek,
			 [Pot. Absen], [Gaji Bersih], Pembulatan, [Gaji Diterima],
			 AccNo,
			 Insentif_Allin, Gator, Resign,
			 [Tgl. Kerja],
			 Grade, Revisi,
			 HUMP, UMP,THR, POTGP,
			 DayOff, AmtDayOff, NPWP,
			 [PJK Insentif], [PJK Denda], iuran_serikat, Kop_Wajib, Pot_Pinjaman_Kop,
			 pensiun,pensiunp,serikat,norut,
			 bpjskes,pcn_bpjs,bpjsp,[T Kerajinan],
			 [H Puasa],[U Puasa],[resign date],
			 [cuti hutang hari],[cuti hutang uang],[tgl proses])
Values ('" & mstatus & "'," & mAbsen & "," & hkerja & "," & mlibur & ",
		" & rsGaji![gaji pokok] & "," & mJbt & "," & mskill & "," & mtjmasakerja & "," & mtjbasic & "," & 0 & "," & mPremiHadir & ",
		" & mLbr1 & "," & mLbr2 & "," & mLbr3 & "," & mLbr4 & "," & mLbrPerJam & ",
		" & mL1 & "," & mL2 & "," & mL3 & ", mL4 & ",
		" & Round(mbjab, 0) & "," & mPTKP & "," & mpphPt & "," & mPajak & "," & mastek & ",
		" & mPotong & "," & mGJBersih & "," & mBulat & "," & mGJBersih1 & ",
		'" & IIf(rsGaji![Kode Bagian] = "OUT", Left(mAccNo, 20), IIf(rsGaji!resign = "Y" Or mGJBersih < 201000, "", Left(mAccNo, 20))) & "',
		" & mULbrAllin & "," & mGJKotor & ", '" & Trim(mResign) & "',
		cast('" Format(rsGaji![tgl. kerja lama], "MM/dd/yyyy") & "' as smalldatetime ),
		 " & mHadir & "," & mrevisi & ",
		 " & mUshift & "," & mUshift1 & "," & rsGaji![uang makan] & "," & 0 & ",
		 " & IIf(IsNull(mOff), 0, mOff) & "," & mPotOff & ",'" & Left(rsGaji!NPWP, 20) & "',
		 " & mIncPJK & "," & mDendaPJK & "," & mspn & "," & minsqc & "," & 0 & ",
		 " & mpensiun & "," & mpensiunp & ",'" & rsGaji!serikat & "' ," & mnorut & ",
		 " & mbpjs & "," & mpct & "," & mbpjsP & "," & mtjkerajinan & ",
		 " & mHariPuasa & "," & mUangPuasa & ",'" & rsGaji![Resign Date] & "',
		 " & 0 & "," & 0 & ",'" & prodate & "')"