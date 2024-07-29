select * from tblSchedKontrak

select * from tblKontrak where nik = 'K220705IT5696' and [No.] = '9'

select * from tblKompensasi where tahun = 2023 and bulan = 12 and nama like '%nadia aulia%'

Insert into tblkontrak (nik,[no.],[mulai kontrak],[selesai kontrak],[gaji pokok],[tunjangan jabatan],[premi hadir],[skill],[bagian],[jabatan],[nomor kontrak],[sts_kompensasi]) 
		values('rsAbs2!nik & "'," & rsAbs2!No & ",'" & rsAbs2![mulai kontrak] & "','" & rsAbs2![selesai kontrak] & "'," & rsabs1!gpokok & "," & rsabs1!tjjabatan & "," & rsAbs2![Premi Hadir] & "," & rsAbs2!skill & ",
		'Trim(rsAbs2!Departemen) & "','" & Trim(rsAbs2!jabatan) & "','" & rsAbs2![nomor kontrak] & "','" & "Y" & "')

select * from tblCloskompen where date_1 = '" & Format(DTPicker1.Value, "YYYY-MM-DD") & "' and date_2='" & Format(DTPicker2.Value, "YYYY-MM-DD") & "'

select * from tblcloskompen where tahun = 2023 and bulan = 12

select * from tblKompensasi where tahun = 2023 and bulan = 12 and nik like '%11904%'

update tblKompensasi set [kompensasi kontrak] = '468750' where tahun = 2023 and bulan = 12 and nik like '%11904%'