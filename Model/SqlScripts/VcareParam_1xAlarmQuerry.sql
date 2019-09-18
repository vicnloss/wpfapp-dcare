select C.alertvalue, C.faultvalue 
from public.vibmeaspt as A, public.pvibdatacolset as B, public.pvibalparm as C, public.pvibanalparm as D
	where A.dbindex = 21111
	and A.mptkey = -229226
	and A.dbindex = B.dbindex
	and A.mptkey = B.mptkey
	and B.dbindex = C.dbindex
	and B.alsid = C.alsid
	and B.dbindex = D.dbindex
	and B.apsid = D.apsid
	and C.parmidx = D.parmidx +1
	and  trim(lower(D.description)) = '1xts'