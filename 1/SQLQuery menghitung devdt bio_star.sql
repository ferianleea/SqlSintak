select * from [dbo].[T_LG202209] where usrid='5697'
select usrid,srvdt,devdt,DATEADD(ss,convert(int,left(devdt,10)),'1969-12-31 07:00:00.000') as bio_star_realtime  from [dbo].[T_LG202209] 
where usrid='5697' order by srvdt desc
