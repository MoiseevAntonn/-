global _mtc: label;
begin ".text"
<_mtc>
	ar1 = ar7 - 2;
	push ar3, gr3;
	push ar2, gr2;
	push ar1, gr1;
	gr7 = [--ar1];
	gr1 = [--ar1];
	gr2 = [--ar1];
	gr3 = gr1 - gr7;
	if > goto label1;
	goto label2;
<label1>
	gr7 = gr1;
<label2>
	gr3 = gr2 - gr7;
	if > goto label3;
	goto exit_mtc;	
<label3>
	gr7 = gr2;				
<exit_mtc>
	pop ar1, gr1;
	pop ar2, gr2;
	pop ar3, gr3;
	return;
end ".text";
