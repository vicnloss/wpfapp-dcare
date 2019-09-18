--C.couplingtype 
--커플링 타입 정의
--0	Unknown
--2	Direct
--3	Flexible
--5	Fluid/Magnetic
--6	Belt
--7	Chain
--8	Gear
--9	Spline
--10	Integral
--11	Sheet/Web Drive


select C.couplingtype
from public.vibmeaspt as A , public.genericmp as B, public.couplings as C
	where A.dbindex = 21111
	and A.mptkey = -229226
	and A.dbindex = B.dbindex
	and A.mptkey = B.uniquerecid
	and B.dbindex = C.dbindex
	and B.configurationkeyid = C.configurationkeyid