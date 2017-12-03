global _cvc: label;

data ".MyData"
	global A: word[4]=(float(1),float(1),float(5),float(3));
	global B: word[4]=(float(2),float(12),float(6),float(8));
end ".MyData";




begin ".text"
<_cvc>
	push ar0, gr0;
	push ar1; gr1;
	push ar2; gr2;
	ar0 = A;
	ar1 = B;
	fpu 0 rep 2 vreg0 = [ar0++];
	fpu 0 rep 2 vreg1 = [ar1++];
	fpu 0 .float vreg2 = vreg0+vreg1;
	fpu 0 rep 2 [ar2++] = vreg2;
<exit_cvc>
	pop ar2, gr2;
	pop ar1, gr1;
	pop ar0, gr0;
	return;
end ".text";
