
--D.inboardradialbrg, D.outboardradialbrg
--Bearing Type 정의
--0	Unknown
--1	Antifriction
--2	Sleeve
--3	Air
--4	Manetic
--
--D.inboardthrustbrg, D.outboardthrustbrg 
--Bearing Type 정의
--0	Unknown
--1	Antifriction
--2	Kingsbury
--3	Fixed Pad


select D.inboardradialbrg, D.outboardradialbrg, D.inboardthrustbrg, D.outboardthrustbrg 
from public.vibmeaspt as A , public.genericmp as B, public.components as C, public.shaft as D
	where A.dbindex = 21111
	and A.mptkey = -229226
	and A.dbindex = B.dbindex
	and A.mptkey = B.uniquerecid
	and B.dbindex = C.dbindex
	and B.componentkeyid = C.componentkeyid
	and B.dbindex = D.dbindex
	and C.genericcompkeyid = D.genericcompkeyid



