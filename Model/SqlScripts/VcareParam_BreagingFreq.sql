select IR1.ftf as "inboard1ftf", IR1.bpfi as "inboard1bpfi", IR1.bpfo as "inboard1bpfo", IR1.bsf as "inboard1bsf",
	IR2.ftf as "inboard2ftf", IR2.bpfi as "inboard2bpfi", IR2.bpfo as "inboard2bpfo", IR2.bsf as "inboard2bsf", 	
	IR3.ftf as "inboard3ftf", IR3.bpfi as "inboard3bpfi", IR3.bpfo as "inboard3bpfo", IR3.bsf as "inboard3bsf", 
	OR1.ftf as "outboard1ftf", OR1.bpfi as "outboard1bpfi", OR1.bpfo as "outboard1bpfo", OR1.bsf as "outboard1bsf",
	OR2.ftf as "outboard2ftf", OR2.bpfi as "outboard2bpfi", OR2.bpfo as "outboard2bpfo", OR2.bsf as "outboard2bsf",
	OR3.ftf as "outboard3ftf", OR3.bpfi as "outboard3bpfi", OR3.bpfo as "outboard3bpfo", OR3.bsf as "outboard3bsf"
 	from (select E.inboardrolltype1, E.inboardrolltype2, E.inboardrolltype3, 
 	E.outboardrolltype1, E.outboardrolltype2, E.outboardrolltype3
	from public.vibmeaspt as A , public.genericmp as B, public.components as C, public.genericpart as D, public.bearingpart as E
	where A.dbindex = 21111
	and A.mptkey = -229226
	and A.dbindex = B.dbindex
	and A.mptkey = B.uniquerecid
	and B.dbindex = C.dbindex
	and B.componentkeyid = C.componentkeyid
	and B.dbindex = D.dbindex
	and C.completecompkeyid = D.completecompfk
	and B.dbindex = E.dbindex
	and D.bearingpartfk = E.bearingpartkeyid ) AS F
	LEFT Join public.bearing as IR1 On F.inboardrolltype1 = IR1.bearingkeyid
	LEFT Join public.bearing as IR2 On F.inboardrolltype2 = IR2.bearingkeyid
	LEFT Join public.bearing as IR3 On F.inboardrolltype3 = IR3.bearingkeyid
	LEFT Join public.bearing as OR1 On F.outboardrolltype1 = OR1.bearingkeyid
	LEFT Join public.bearing as OR2 On F.outboardrolltype2 = OR2.bearingkeyid
	LEFT Join public.bearing as OR3 On F.outboardrolltype3 = OR3.bearingkeyid