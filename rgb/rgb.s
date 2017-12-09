global _rgb: label;

data ".MyData"
	global A: long[4]=(double(1),double(1),double(5),double(3),double(10),double(15),double(6),double(13),double(4)) ;
	global B: word = 3;
	global F: word = 3; 
end ".MyData";

nobits ".MyData1"
	global C: long[4];
	global D: long[4];
	global E: long[4];
end ".MyData1";


begin ".text"
<_rgb>
	push ar0, gr0;
	push ar1, gr1;
	push ar2, gr2;
	push ar3, gr3;
	ar0 = B;
	gr0 = [ar0];
	ar0 = A;
	ar1 = C;
	ar2 = D;
	ar3 = E;
	vlen = [F];
	fpu 0 rep vlen vreg0 = [ar0++gr0];
	fpu 0 rep vlen [ar1++] = vreg0;
	ar0 = A;
	ar0 = ar0 + 1;
	fpu 0 rep vlen vreg0 = [ar0++gr0];
	fpu 0 rep vlen [ar2++] = vreg0;
	ar0 = A;
	ar0 = ar0 + 1;
	fpu 0 rep vlen vreg0 = [ar0++gr0];
	fpu 0 rep vlen [ar3++] = vreg0;
	ar0 = A;
<exit_rgb>
	pop ar3, gr3;
	pop ar2, gr2;
	pop ar1, gr1;
	pop ar0, gr0;
	return;
end ".text";
