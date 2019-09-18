
--C.sheavediameter1 : 풀리 직경1
--C.sheavediameter2 : 풀리 직경2
--C.beltlength : 벨트 길이
--
--Belt 주파수 계산공식
--Belt Frequency = Pully Dia * PI * RPM / Belt Length



select C.sheavediameter1, C.sheavediameter2, C.beltlength
from public.vibmeaspt as A , public.genericmp as B, public.couplings as C
	where A.dbindex = 21111
	and A.mptkey = -229226
	and A.dbindex = B.dbindex
	and A.mptkey = B.uniquerecid
	and B.dbindex = C.dbindex
	and B.configurationkeyid = C.configurationkeyid