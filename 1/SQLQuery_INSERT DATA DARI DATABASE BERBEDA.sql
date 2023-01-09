USE [DBLeea]
GO

/****** Object:  Table [dbo].[tblSlipGaji]    Script Date: 09/06/2022 03:24:28 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[tblSlipGaji](
	[Tahun] [char](4) NOT NULL,
	[Bulan] [char](2) NOT NULL,
	[Kode Perusahaan] [char](1) NULL,
	[Nama Perusahaan] [nvarchar](50) NULL,
	[Alamat Perusahaan] [nvarchar](150) NULL,
	[Kode Sourcing] [char](1) NULL,
	[Nama Sourcing] [nvarchar](50) NULL,
	[Alamat Sourcing] [nvarchar](150) NULL,
	[NIK] [char](14) NOT NULL,
	[Nama] [nvarchar](50) NULL,
	[Kode Dept] [char](1) NULL,
	[Kode Bagian] [char](5) NULL,
	[Nama Dept] [nvarchar](50) NULL,
	[Nama Bagian] [nvarchar](50) NULL,
	[Kode Posisi] [varchar](3) NULL,
	[Nama Posisi] [nvarchar](15) NULL,
	[Jenis Kelamin] [char](1) NULL,
	[Status] [char](3) NULL,
	[Absen] [int] NULL,
	[H Kerja] [int] NULL,
	[H Libur] [int] NULL,
	[Gaji Pokok] [float] NULL,
	[T Jabatan] [float] NULL,
	[Skill] [float] NULL,
	[Transport] [float] NULL,
	[Permi Hadir] [float] NULL,
	[Lembur1] [float] NULL,
	[Lembur2] [float] NULL,
	[Lembur3] [float] NULL,
	[Lembur4] [float] NULL,
	[Upah Per Jam] [float] NULL,
	[Upah Lbr 1] [float] NULL,
	[Upah Lbr 2] [float] NULL,
	[Upah Lbr 3] [float] NULL,
	[Upah Lbr 4] [float] NULL,
	[Insentif_Allin] [float] NULL,
	[Gator] [float] NULL,
	[Biaya Jabatan] [float] NULL,
	[PTKP] [float] NULL,
	[PPH21Pct5] [float] NULL,
	[PPH21Pct10] [float] NULL,
	[PPH21Pct15] [float] NULL,
	[PPH21Pct25] [float] NULL,
	[PPH21Pct35] [float] NULL,
	[PPH21Total] [float] NULL,
	[Astek] [float] NULL,
	[Pot. Absen] [float] NULL,
	[Gaji Bersih] [float] NULL,
	[Pembulatan] [float] NULL,
	[Gaji Diterima] [float] NULL,
	[Init] [char](3) NULL,
	[AccNo] [nvarchar](20) NULL,
	[Resign] [char](30) NULL,
	[Tgl. Kerja] [smalldatetime] NULL,
	[Grade] [int] NULL,
	[Revisi] [float] NULL,
	[HUMP] [float] NULL,
	[UMP] [float] NULL,
	[THR] [float] NULL,
	[POTGP] [float] NULL,
	[DayOff] [int] NULL,
	[AmtDayOff] [float] NULL,
	[NPWP] [char](20) NULL,
	[PJK Insentif] [float] NULL,
	[PJK Denda] [float] NULL,
	[Tgl. Kerja Lama] [datetime] NULL,
	[Kop_Pokok] [int] NULL,
	[Kop_Wajib] [int] NULL,
	[Pot_Pinjaman_Kop] [int] NULL,
	[pensiun] [float] NULL,
	[pensiunp] [float] NULL,
	[serikat] [nchar](11) NULL,
	[norut] [int] NULL,
	[bpjskes] [float] NULL,
	[pcn_bpjs] [float] NULL,
	[bpjsp] [float] NULL,
	[T Kerajinan] [float] NULL,
	[H Puasa] [int] NULL,
	[U Puasa] [float] NULL,
 CONSTRAINT [PK_tblSlipGaji] PRIMARY KEY CLUSTERED 
(
	[Tahun] ASC,
	[Bulan] ASC,
	[NIK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO

