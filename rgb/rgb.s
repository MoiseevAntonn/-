global _rgb: label;

data ".MyData"
	global B: word = 3; 	//интервал
end ".MyData";

nobits ".MyData1"
	global C: long[4];
	global D: long[4];
	global E: long[4];
end ".MyData1";


begin ".text"
<_rgb>
	ar4 = ar7 - 2;
	push ar0, gr0;
	push ar1, gr1;
	push ar2, gr2;
	push ar3, gr3;
	push ar4, gr4;
	gr0 = 6;  		//в gr0 загрузили интервал
	ar1 = C;
	ar2 = D;
	ar3 = E;
	gr1 = [--ar4];		
	gr1 = gr1 - 1;
	vlen = gr1;
	ar0 = [--ar4];		//в vlen загрузили количество троек
	fpu 0 rep vlen vreg0 = [ar0++gr0];
	fpu 0 rep vlen [ar1++] = vreg0;
	ar4 = ar7 -12;
	ar0 = [--ar4];
	ar0 = [--ar4];
	ar0 = ar0 + 2;
	fpu 0 rep vlen vreg0 = [ar0++gr0];
	fpu 0 rep vlen [ar2++] = vreg0;
	ar4 = ar7 -12;
	ar0 = [--ar4];
	ar0 = [--ar4];
	ar0 = ar0 + 4;
	fpu 0 rep vlen vreg0 = [ar0++gr0];
	fpu 0 rep vlen [ar3++] = vreg0;
	
<exit_rgb>
	pop ar4, gr4;
	pop ar3, gr3;
	pop ar2, gr2;
	pop ar1, gr1;
	pop ar0, gr0;
	return;
end ".text";
