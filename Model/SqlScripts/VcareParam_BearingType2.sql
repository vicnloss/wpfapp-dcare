-- Tilt-pad 정보 포함 
-- Tilt-Pad 일 조건
--(F.inboardradialbrg == 2 and E.inboardsleevebrgtype == 3 ) or ( F.outboardradialbrg == 2 and E.outboardsleevebrgtype  == 3)
--
--F.inboardradialbrg, F.outboardradialbrg
--Bearing Type 정의
--0	Unknown
--1	Antifriction
--2	Sleeve 
--3	Air
--4	Manetic
--
--E.inboardsleevebrgtype, E.outboardsleevebrgtype 
--
--0	Other
--1	Plain
--2	Multi-lobe
--3	Tilting Pad

select F.inboardradialbrg, F.outboardradialbrg, F.inboardthrustbrg, F.outboardthrustbrg , E.inboardsleevebrgtype, E.outboardsleevebrgtype 
	from public.vibmeaspt as A , public.genericmp as B, public.components as C, public.genericpart as D, public.bearingpart as E, public.shaft as F
	where A.dbindex = 21111
	and A.mptkey = -229226
	and A.dbindex = B.dbindex
	and A.mptkey = B.uniquerecid
	and B.dbindex = C.dbindex
	and B.componentkeyid = C.componentkeyid
	and B.dbindex = D.dbindex
	and C.completecompkeyid = D.completecompfk
	and B.dbindex = E.dbindex
	and D.bearingpartfk = E.bearingpartkeyid 
	and B.dbindex = F.dbindex
	and C.genericcompkeyid = F.genericcompkeyid
