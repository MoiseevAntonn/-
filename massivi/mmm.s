global _mmm: label;

begin ".text"
<_mmm>	
	ar5 = ar7 - 2;
	push ar5, gr5;
	push ar4, gr4;
	push ar3, gr3;
	push ar2, gr2;
	push ar1, gr1;
	push ar0, gr0;
	gr3 = [--ar5];
	ar0 = [--ar5];
	gr0 = [ar0++];
<loop0>
	gr1 = [ar0++];
	gr2 = gr1 - gr0;
	if > goto _label1;
	<label2>
	gr3--;
	if > goto loop0;
	gr4 = gr0;
		

	ar5 = ar7-14;
	ar0 = [--ar5];
	ar0 = [--ar5];
	gr3 = [ar0++];
	gr3 --;
	gr0 = [ar0++];
	gr5 = gr4 - gr0;
	if <= goto __label1;
	<label6>
<loop1>
	gr1 = [ar0++];
	gr5 = gr4 - gr1;

	if <= goto __label2;
	<label7>
	
	gr2 = gr1 - gr0;
	if > goto _label2;
	<label3>
	gr3--;
	if > goto loop1;

<exit_mmm>

	pop ar0, gr0;
        pop ar1, gr1;
        pop ar2, gr2;
        pop ar3, gr3;
        pop ar4, gr4;
        pop ar5, gr5;
	return;

<_label1>
	gr0 = gr1;
	goto label2;
<_label2>
	gr0 = gr1;
	goto label3;
<__label1>
	gr0 = [ar0++];
	goto label6;
<__label2>
	gr1 = [ar0++];
	gr3--;
	goto label7;
end ".text";


