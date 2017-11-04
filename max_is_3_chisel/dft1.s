global _dft1: label;
begin ".text"
<_dft1>
	push ar2, gr2;
	push ar1, gr1;
	push ar0, gr0;
	ar0 = ar7 - 8;
	gr0 = [--ar0];
	gr1 = [--ar0];
	gr2 = [--ar0];
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
<exit_dft1>
	pop ar0, gr0;
	pop ar1, gr1;
	pop ar2, gr2;
	return;
end ".text";
