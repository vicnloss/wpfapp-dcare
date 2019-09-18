select E.numprifanblades, E.numsecfanblades
from public.vibmeaspt as A , public.genericmp as B, public.components as C, public.genericcomp as D, public.Fan as E
	where A.dbindex = 21121
	and A.mptkey = -12410
	and A.dbindex = B.dbindex
	and A.mptkey = B.uniquerecid
	and B.dbindex = C.dbindex
	and B.componentkeyid = C.componentkeyid
	and B.dbindex = D.dbindex
	and C.genericcompkeyid = D.genericcompkeyid
	and B.dbindex = E.dbindex
	and D.Fanfk = E.Fankeyid