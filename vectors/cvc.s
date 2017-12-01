global _cvc: label;

data ".MyData"
	global A: word[4]=(float(1),float(1),float(5),float(3));
end ".MyData";




begin ".text"
<_cvc>
	ar0 = ar7 - 2;
	push ar0, gr0;
	push ar1; gr1;
	ar0 = A;
	fpu 0 rep 2 vreg0 = [ar0++];
	fpu 0 rep 2 [ar1++] = vreg0;
	gr1 = [ar1++];
<exit_cvc>
	pop ar1, gr1;
	pop ar0, gr0;
	return;
end ".text";
