--D.comptype 타입 정의 
--
--0		User Defined
--1		Motor
--2		Turbine
--3		Engine
--4		Pump
--5		Fan
--6		Compressor
--7		Gearbox 
--8		Roll
--9		Generator
--10	Centrifuge
--11	Spindle
--12	Grinder
--13	Chipper/Crusher
--14	Agitator
--15	Craines
--16	Chillers
--17	Detrasher
--18	Dynamometer
--19	Exciter
--20	Mixer
--21	Pulverizer
--22	Radar
--23	Rotating Kiln
--24	Bearing


select D.comptype from public.vibmeaspt as A , public.genericmp as B, public.components as C, public.genericcomp as D
	where A.dbindex = 21111
	and A.mptkey = -229226
	and A.dbindex = B.dbindex
	and A.mptkey = B.uniquerecid
	and B.dbindex = C.dbindex
	and B.componentkeyid = C.componentkeyid
	and B.dbindex = D.dbindex
	and C.genericcompkeyid = D.genericcompkeyid