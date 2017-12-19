global _brush64f1in3: label;

begin ".text"
<_brush64f1in3>
	
	push ar0, gr0;
	push ar1, gr1;
	push ar2, gr2;
	push ar3, gr3;
	push ar4, gr4;
	push ar5, gr5;
	gr0 = 6;  		//в gr0 загрузили интервал
	gr2 = 0;
	gr3 = 0;
	gr4 = 32;
	gr5 = 0;
	ar4 = ar7 - 16;
	ar1 = [--ar4];
	
	ar2 = [--ar4];
	
	ar3 = [--ar4];
	ar4 = ar7 - 14;
	gr1 = [--ar4];
<counterdes>			//цикл,вычисляющий количество 32 и остаток в числе в gr2-тридцатки,в gr3- остаток
	gr1 = gr1-gr4;
	if > goto help_counterdes1;
	if < goto exit_counterdes ;
<exit_counterdes>
	gr3 = gr1 + gr4;
				//		
	gr3 = gr3 - 1;			//часть кода,которая сортирует тройки в размере остатка
	vlen = gr3;
	ar0 = [--ar4];			//в vlen загрузили количество троек
	fpu 0 rep vlen vreg0 = [ar0++gr0];
	fpu 0 rep vlen [ar1++] = vreg0;
					
<sort_des>			//часть кода,которая сортирует тройки в размере десятков
	gr2 = gr2 - gr5;
	if > goto help_sort_des;
	goto cicle2;
<help_sort_des>
		
	fpu 0 rep 32 vreg0 = [ar0++gr0];
	fpu 0 rep 32 [ar1++] = vreg0;
	gr2 = gr2 - 1;
	goto sort_des;







<cicle2>			// часть кода,где сортируются вторые тройки
	gr2 = 0;
	gr3 = 0;
	ar4 = ar7 - 14;
	gr1 = [--ar4];
<counterdes_1>			
	gr1 = gr1-gr4;
	if > goto help_counterdes1_1;
	if < goto exit_counterdes_1 ;
<exit_counterdes_1>
	gr3 = gr1 + gr4;		
	gr3 = gr3 - 1;			
	vlen = gr3;
	ar0 = [--ar4];			
	ar0 = ar0 + 2;
	fpu 0 rep vlen vreg0 = [ar0++gr0];
	fpu 0 rep vlen [ar2++] = vreg0;					
<sort_des_1>			
	gr2 = gr2 - gr5;
	if > goto help_sort_des_1;
	goto cicle3;
<help_sort_des_1>
		
	fpu 0 rep 32 vreg0 = [ar0++gr0];
	fpu 0 rep 32 [ar2++] = vreg0;
	gr2 = gr2 - 1;
	goto sort_des_1;




<cicle3>			// часть кода,где сортируются третьи тройки
	gr2 = 0;
	gr3 = 0;
	ar4 = ar7 - 14;
	gr1 = [--ar4];
<counterdes_2>			
	gr1 = gr1-gr4;
	if > goto help_counterdes1_2;
	if < goto exit_counterdes_2 ;
<exit_counterdes_2>
	gr3 = gr1 + gr4;		
	gr3 = gr3 - 1;			
	vlen = gr3;
	ar0 = [--ar4];			
	ar0 = ar0 + 4;
	fpu 0 rep vlen vreg0 = [ar0++gr0];
	fpu 0 rep vlen [ar3++] = vreg0;					
<sort_des_2>			
	gr2 = gr2 - gr5;
	if > goto help_sort_des_2;
	goto exit_brush64f1in3;
<help_sort_des_2>
		
	fpu 0 rep 32 vreg0 = [ar0++gr0];
	fpu 0 rep 32 [ar3++] = vreg0;
	gr2 = gr2 - 1;
	goto sort_des_2;
		
<exit_brush64f1in3>
	pop ar5, gr5;
	pop ar4, gr4;
	pop ar3, gr3;
	pop ar2, gr2;
	pop ar1, gr1;
	pop ar0, gr0;
	return;


<help_counterdes1>
	gr2 = gr2+1;
	goto counterdes;
<help_counterdes1_1>
	gr2 = gr2+1;
	goto counterdes_1;
<help_counterdes1_2>
	gr2 = gr2+1;
	goto counterdes_2;
end ".text";
