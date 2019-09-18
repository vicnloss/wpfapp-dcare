select E.numindifvanes, E.numinimpvanes, E.numoutdifvanes, E.numoutimpvanes
from public.vibmeaspt as A , public.genericmp as B, public.components as C, public.genericcomp as D, public.pump as E
	where A.dbindex = 21111
	and A.mptkey = -229226
	and A.dbindex = B.dbindex
	and A.mptkey = B.uniquerecid
	and B.dbindex = C.dbindex
	and B.componentkeyid = C.componentkeyid
	and B.dbindex = D.dbindex
	and C.genericcompkeyid = D.genericcompkeyid
	and B.dbindex = E.dbindex
	and D.pumpfk = E.pumpkeyid