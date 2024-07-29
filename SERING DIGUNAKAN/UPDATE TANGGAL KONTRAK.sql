SELECT * FROM tblKontrak WHERE NIK = 'K230814IT10707' AND [No.] = 12

--UPDATE 3 BULAN KONTRAK
UPDATE tblKontrak SET [Selesai Kontrak] = DATEADD(DAY, -1, DATEADD(MONTH, 3, [Mulai Kontrak])),Sts_Kompensasi = 'N' WHERE NIK = 'K210507GA0001' AND [No.] = ''

--UPDATE 6 BULAN KONTRAK
UPDATE tblKontrak SET [Selesai Kontrak] = DATEADD(DAY, -1, DATEADD(MONTH, 6, [Mulai Kontrak])),Sts_Kompensasi = 'N' WHERE NIK = 'K211026GA0265' AND [No.] = ''

--UPDATE 12 BULAN KONTRAK
UPDATE tblKontrak SET [Selesai Kontrak] = DATEADD(DAY, -1, DATEADD(MONTH, 12, [Mulai Kontrak])),Sts_Kompensasi = 'N' WHERE NIK = 'K210507GA0001' AND [No.] = ''

SELECT * FROM tblKontrak WHERE nik = 'K211203STF1220' AND [No.] = (SELECT MAX([No.]) FROM tblKontrak WHERE nik = 'K211203STF1220')

SELECT nik, MAX([No.]) AS MaxNo FROM tblKontrak WHERE nik IN (
'K230309GA9152',
'K230321GA9226',
'K211227DEV1880',
'K221205DEV8744',
'K221207DEV8755',
'K221212DEV8761',
'K221221DEV8776',
'K230302DEV9100',
'K230313DEV9157',
'K230313DEV9159',
'K230401DEV9292',
'K230401DEV9293',
'K230401CPN9290',
'K221001PH8543',
'K210801ENG0007',
'K230925IP11410',
'K231226INJ12187',
'K211206IP1259',
'K211206IP1260',
'K230401LAB9291',
'K231213MAT12118',
'K211227OS1952',
'K220926PLA8361',
'K230810PLA10690',
'K230918PLA11246',
'K231220PLA12163',
'K220602SEW4823',
'K220613STF5025',
'K220613STF5031',
'K220613STF5035',
'K220613STF5036',
'K220613STF5040',
'K220613STF5042',
'K220613STF5045',
'K220613STF5046',
'K220613STF5054',
'K220613STF5060',
'K220615STF5122',
'K220615STF5126',
'K220620STF5167',
'K220620SEW5267',
'K220905STF7413',
'K220905STF7415',
'K220905STF7420',
'K220905STF7421',
'K220905STF7423',
'K220905STF7424',
'K220905STF7431',
'K220905STF7437',
'K220905STF7438',
'K220905STF7440',
'K220905STF7441',
'K220905STF7442',
'K220905STF7443',
'K220905STF7445',
'K220905STF7447',
'K220905STF7451',
'K220905STF7452',
'K220905SEW7484',
'K220905OS7529',
'K220905OS7535',
'K220912STF7688',
'K220912STF7689',
'K220912STF7694',
'K220912SEW7711',
'K220912SEW7717',
'K220912SEW7726',
'K220912ASS7823',
'K220912ASS7840',
'K220912ASS7841',
'K220919SEW8168',
'K220920STF8244',
'K220920STF8250',
'K220920STF8255',
'K220920STF8265',
'K220920STF8266',
'K220920STF8271',
'K220920STF8272',
'K220920STF8281',
'K220920STF8287',
'K220920STF8288',
'K220920STF8291',
'K220920STF8293',
'K220920STF8295',
'K220921STF8329',
'K220921STF8330',
'K220921STF8332',
'K220926SEW8426',
'K220927STF8478',
'K220927STF8479',
'K220927STF8483',
'K220927STF8486',
'K220927STF8488',
'K220927STF8489',
'K220927STF8492',
'K220927STF8495',
'K220927STF8496',
'K220927STF8499',
'K220927STF8500',
'K220927STF8508',
'K220927STF8521',
'K220927STF8524',
'K230313STF9164',
'K230313STF9165',
'K230313STF9168',
'K230313STF9169',
'K230313STF9173',
'K230313STF9177',
'K230313STF9183',
'K230313STF9189',
'K230313STF9190',
'K211206ASS1283',
'K211206ASS1289',
'K211206ASS1294',
'K211207ASS1451',
'K211207ASS1456',
'K211207ASS1457',
'K211207ASS1463',
'K211207ASS1478',
'K211207ASS1479',
'K211207ASS1485',
'K211207ASS1487',
'K211207ASS1503',
'K211216ASS1681',
'K220304CUT3611',
'K220307ASS3686',
'K220307ASS3702',
'K220307ASS3733',
'K220310MAT3958',
'K220317ASS4129',
'K220317ASS4134',
'K220321ASS4256',
'K220602ASS4745',
'K220602ASS4749',
'K220602ASS4755',
'K220602ASS4761',
'K220602ASS4762',
'K220602ASS4773',
'K220602ASS4775',
'K220607QC4994',
'K220620ASS5194',
'K220620ASS5205',
'K220620ASS5206',
'K220620ASS5211',
'K220620ASS5225',
'K220620ASS5238',
'K220620ASS5240',
'K220912ASS7818',
'K220912ASS7853',
'K220912ASS7856',
'K220912ASS7857',
'K220913ASS7861',
'K220921CMP8343',
'K220921CMP8344',
'K230918CMP11331',
'K230920CMP11351',
'K211227CPN1903',
'K211227CPN1904',
'K220606CPN4855',
'K220606CPN4860',
'K220902CPN7379',
'K220902CPN7380',
'K220902CPN7388',
'K220919CPN7956',
'K220919CPN7965',
'K230323CPN9242',
'K211227CUT1872',
'K211227CUT1873',
'K211227CUT1875',
'K220304CUT3560',
'K220304CUT3584',
'K220304SEW3962',
'K220304CUT3596',
'K220321CUT4148',
'K220321CUT4149',
'K220321CUT4161',
'K220321SEW4211',
'K220602CUT4840',
'K220602CUT4842',
'K220606CUT4870',
'K220606CUT4877',
'K220615CUT5072',
'K220621SEW5366',
'K220621CUT5431',
'K220621CUT5433',
'K220905CUT7393',
'K220905CUT7394',
'K220905CUT7405',
'K220905CUT7406',
'K220905CUT7408',
'K220905CUT7409',
'K220906SEW7565',
'K220906SEW7573',
'K220912CUT7655',
'K220912CUT7668',
'K220912CUT7669',
'K220912CUT7674',
'K220912SEW7733',
'K220912SEW7776',
'K220912CUT7682',
'K220919CUT8056',
'K220919CUT8057',
'K220919CUT8063',
'K220919SEW8204',
'K220919SBL8019',
'K220919SBL8022',
'K220919SBL8023',
'K220926SEW8421',
'K220926MAT8445',
'K230323SEW9248',
'K230323SEW9250',
'K230323SEW9263',
'K230630CUT9938',
'K230904CUT11041',
'K230911CUT11138',
'K230925CUT11415',
'K220627DEV5452',
'K220905DEV7548',
'K220905DEV7549',
'K220927DEV8533',
'K230313DEV9160',
'K220914MAT7923',
'K230401GA9312',
'K230401GA9318',
'K230401GA9321',
'K230401GA9322',
'K230401GA9323',
'K220606IP4891',
'K220606IP4894',
'K220606IP4904',
'K220615IP5078',
'K220615IP5079',
'K220615IP5092',
'K220615IP5096',
'K220615IP5113',
'K220624IP5441',
'K220919IP8055',
'K220927STF8481',
'K221208IP8759',
'K230313LAB9161',
'K230313LAB9162',
'K230321LAB9228',
'K230328LAB9276',
'K230614MAT9797',
'K230919MAT11347',
'K211222OS1810',
'K211227OS1947',
'K211227OS1960',
'K220905OS7506',
'K220905OS7523',
'K220912OS7637',
'K220912OS7643',
'K220926OS8369',
'K220926OS8370',
'K220927OS8457',
'K220927STF8477',
'K231213OS12128',
'K231220OS12173',
'K231220OS12177',
'K231220OS12184',
'K231226OS12190',
'K231226OS12192',
'K231226OS12199',
'K231226OS12203',
'K240304OS13987',
'K240304OS13990',
'K240304OS13993',
'K240304OS13999',
'K240304OS14001',
'K240304OS14002',
'K240304OS14004',
'K240312OS14020',
'K240313OS14112',
'K240313OS14114',
'K240313OS14115',
'K240313OS14116',
'K240313OS14118',
'K240325OS14216',
'K240325OS14217',
'K211222OS1797',
'K211227OS1932',
'K230314PH9214',
'K230314PH9216',
'K230321PH9232',
'K220613PLA5006',
'K211227QC1884',
'K211228QC1966',
'K220310STF3917',
'K220324QC4295',
'K220607QC4993',
'K220615IP5080',
'K220621QC5338',
'K220627QC5451',
'K220915QC7930',
'K220915QC7937',
'K220915QC7938',
'K220915QC7940',
'K220921QC8312',
'K220921QC8323',
'K220615CUT5063',
'K220615CUT5073',
'K220620CUT5171',
'K220919SEW8202',
'K230314CUT9206',
'K230314CUT9207',
'K230314CUT9208',
'K211206SEW1269',
'K211215SEW1596',
'K211215SEW1600',
'K211215SEW1601',
'K211215SEW1625',
'K211215SEW1629',
'K211215SEW1640',
'K211215SEW1653',
'K211216SEW1708',
'K211216SEW1716',
'K211216SEW1717',
'K211223SEW1831',
'K211223SEW1838',
'K211223SEW1841',
'K211223SEW1851',
'K211223SEW1857',
'K211223SEW1864',
'K211223SEW1866',
'K220304SEW3655',
'K220304SEW3960',
'K220304SEW3961',
'K220304CUT3566',
'K220307SEW3681',
'K220308SEW3809',
'K220308SEW3811',
'K220309SEW3887',
'K220309MAT3907',
'K220310SEW3910',
'K220314SEW4004',
'K220314SEW4037',
'K220314SEW4039',
'K220314SEW4048',
'K220321SEW4176',
'K220321SEW4217',
'K220321SEW4237',
'K220321SEW4246',
'K220321SEW4250',
'K220321SEW4251',
'K220324SEW4305',
'K220324SEW4308',
'K220602SEW4804',
'K220602SEW4806',
'K220602SEW4812',
'K220602SEW4817',
'K220602SEW4826',
'K220602SEW4828',
'K220602SEW4837',
'K220606SEW4909',
'K220606SEW4912',
'K220606SEW4927',
'K220606SEW4928',
'K220606SEW4933',
'K220606SEW4940',
'K220606SEW4955',
'K220606SEW4956',
'K220606SEW4960',
'K220606SEW4976',
'K220615SEW5133',
'K220615SEW5158',
'K220620SEW5244',
'K220620SEW5249',
'K220620SEW5264',
'K220620SEW5279',
'K220620SEW5280',
'K220620SEW5284',
'K220620SEW5286',
'K220620SEW5291',
'K220620SEW5294',
'K220620SEW5295',
'K220620SEW5306',
'K220620SEW5311',
'K220620SEW5326',
'K220621SEW5350',
'K220621SEW5356',
'K220621SEW5394',
'K220621SEW5397',
'K220621SEW5412',
'K220621SEW5419',
'K220621SEW5420',
'K220621SEW5422',
'K220905CUT7396',
'K220905SEW7464',
'K220905SEW7469',
'K220905SEW7472',
'K220905SEW7482',
'K220905SEW7495',
'K220906SEW7563',
'K220906SEW7564',
'K220906SEW7567',
'K220906SEW7568',
'K220906SEW7578',
'K220906SEW7582',
'K220906SEW7590',
'K220912SEW7703',
'K220912SEW7712',
'K220912SEW7728',
'K220912SEW7732',
'K220912SEW7740',
'K220912SEW7753',
'K220912SEW7760',
'K220912SEW7783',
'K220919SEW8103',
'K220919SEW8130',
'K220919SEW8131',
'K220919SEW8136',
'K220919SEW8138',
'K220919SEW8145',
'K220919SEW8151',
'K220919SEW8152',
'K220919SEW8157',
'K220919SEW8163',
'K220919SEW8171',
'K220919SEW8175',
'K220919SEW8182',
'K220919SEW8185',
'K220919SEW8194',
'K220919SEW8201',
'K220919SEW8217',
'K220926SEW8402',
'K220926SEW8406',
'K220926SEW8417',
'K220926SEW8433',
'K220926SEW8435',
'K220926SEW8437',
'K220927SEW8455',
'K230306SEW9114',
'K230306SEW9136',
'K230306SEW9138',
'K230306SEW9142',
'K230323SEW9258',
'K230323SEW9259',
'K230602SEW9725',
'K230612SEW9782',
'K230630SEW9876',
'K230630SEW9884',
'K230630SEW9892',
'K230630SEW9911',
'K230630SEW9915',
'K230630SEW9916',
'K230630SEW9921',
'K230630SEW9928',
'K230630CUT9935',
'K230906SEW11081',
'K230906SEW11083',
'K230906SEW11088',
'K230906SEW11101',
'K230906SEW11105',
'K230911SEW11201',
'K230911SEW11219',
'K230911SEW11220',
'K230911SEW11231',
'K230918SEW11264',
'K230918SEW11288',
'K230918SEW11291',
'K230920SEW11365',
'K230920SEW11374',
'K230920SEW11394',
'K230920SEW11396',
'K230920CUT11361',
'K230925SEW11443',
'K230925SEW11449',
'K230925CUT11423',
'K230925CUT11425',
'K231211SEW12027',
'K231211SEW12032',
'K231211SEW12033',
'K231211SEW12040',
'K231211SEW12045',
'K231211SEW12047',
'K231211SEW12052',
'K231211SEW12055',
'K231211SEW12059',
'K231211SEW12061',
'K231211SEW12066',
'K231211SEW12067',
'K231211SEW12079',
'K231211SEW12081',
'K231211SEW12086',
'K231211SEW12089',
'K231211SEW12090',
'K231211SEW12091',
'K231211SEW12102',
'K231211SEW12104',
'K231218SEW12139',
'K231218SEW12140',
'K231218SEW12144',
'K231226SEW12269',
'K231226SEW12277',
'K231226SEW12285',
'K231226SEW12286',
'K231226SEW12293',
'K231226SEW12294',
'K231226SEW12297',
'K231226SEW12302',
'K231226SEW12305',
'K231226SEW12310',
'K240304SEW13899',
'K240304SEW13901',
'K240304SEW13905',
'K240304SEW13912',
'K240304SEW13923',
'K240304SEW13929',
'K240304SEW13931',
'K240304SEW13944',
'K240304SEW13949',
'K240304SEW13952',
'K240312SEW14031',
'K240312SEW14036',
'K240312SEW14047',
'K240312SEW14058',
'K240312SEW14062',
'K240312SEW14067',
'K240313SEW14080',
'K240313SEW14096',
'K240313SEW14098',
'K240313SEW14099',
'K240313SEW14102',
'K240320SEW14149',
'K240325SEW14173',
'K240325SEW14184',
'K240325SEW14190',
'K240325SEW14195'
)GROUP BY nik;


