global _mtc: label;
begin ".text"
<_mtc>
	ar5 = ar7 - 2;
	push ar6, gr6;
	push ar5, gr5;
	push ar4, gr4;
	push ar3, gr3;
	push ar2, gr2;
	push ar1, gr1;
	push ar0, gr0;
	ar0 = [--ar5];
	gr0 = [ar0++];
	gr1 = [ar0++];
	gr2 = [ar0++];
	gr4 = gr0;
	gr3 = gr1 - gr0;
	if > goto label1;
	goto label2;
<label1>
	gr4 = gr1;
	goto label2;
<label2>
	gr3 = gr2 - gr4;
	if > goto label3;
	goto label4;	
<label3>
	gr4 = gr2;
	goto label4;
<label4>
	gr6 = gr4 ;				
<exit_mtc>
	pop ar0, gr0;
	pop ar1, gr1;
	pop ar2, gr2;
	pop ar3, gr3;
	pop ar4, gr4;
	pop ar5, gr5;
	pop ar6, gr6;
	return;
end ".text";
