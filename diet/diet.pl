%	PL examples
%
%	xavrb@github.com
 














%Knowledge base
% 3 Food groups


%GENERAL SINTAX: foodGroup(food, Cal).


% 1) Fruits and veggies


fruit_veggies(lettuce ,15 ).
fruit_veggies(cucumber , 17 ).
fruit_veggies(tomatoe ,23 ).
fruit_veggies(pumpkin ,28 ).
fruit_veggies(onion ,38 ).
fruit_veggies(carrot ,40 ).
fruit_veggies(potatoe ,78 ).
fruit_veggies(whiteRice ,105 ).
fruit_veggies(nuts ,647 ).
fruit_veggies(almonds ,640 ).
fruit_veggies(pistaccio ,590 ).
fruit_veggies(hazelnut ,630 ).
fruit_veggies(orange ,58 ).
fruit_veggies(apple ,45 ).
fruit_veggies(pear ,56 ).
fruit_veggies(banana ,90 ).
fruit_veggies(grape ,76 ).
fruit_veggies(strawberry ,52 ).
fruit_veggies(pineapple ,50 ).
fruit_veggies(kiwi ,48 ).
fruit_veggies(lemon ,50 ).


% 2) Cereal


cereal(bread , 270).
cereal(integralBread ,245 ).
cereal(cookie , 74).
cereal(lightCookie , 65).
cereal(donut , 180).
cereal(churros , 175).
cereal(corn_flakes ,170 ).
cereal(special_k ,163 ).
cereal(rice_kispies ,162 ).



% 3) leguminous and animal origin food


leguminous_orig_animal(bacon ,496 ).
leguminous_orig_animal(buey , 253).
leguminous_orig_animal(lamb ,122 ).
leguminous_orig_animal(chuleta_cordero ,350 ).
leguminous_orig_animal(polloc_piel , 167).
leguminous_orig_animal(pollos_piel ,125 ).
leguminous_orig_animal(lomo_cerdo ,362 ).
leguminous_orig_animal(pato ,250 ).
leguminous_orig_animal(pavo , 258).
leguminous_orig_animal(hamburguesa , 230).
leguminous_orig_animal(ternera ,140 ).
leguminous_orig_animal(conejo , 156).
leguminous_orig_animal(chorizo ,370 ).
leguminous_orig_animal(huevo_frito ,110 ).
leguminous_orig_animal(yema_huevo_frita ,85 ).
leguminous_orig_animal(clara_huevo_frita ,25 ).
leguminous_orig_animal(leche_entera , 130).
leguminous_orig_animal(leche_condensada ,380 ).
leguminous_orig_animal(leche_semidesnatada ,98 ).
leguminous_orig_animal(leche_desnatada ,72 ).
leguminous_orig_animal(queso_mozarella ,320 ).
leguminous_orig_animal(queso_fresco ,312 ).
leguminous_orig_animal(queso_cabra , 175).
leguminous_orig_animal(queso_parmesano ,340 ).
leguminous_orig_animal(atun , 290).
leguminous_orig_animal(caviar , 260).
leguminous_orig_animal(sardinas ,242 ).
leguminous_orig_animal(anchoas , 278).
leguminous_orig_animal(salmon, 99).
leguminous_orig_animal(calamar , 80 ).
leguminous_orig_animal(bacalao ,78 ).
leguminous_orig_animal(almeja ,78 ).
leguminous_orig_animal(pulpo ,55 ).
leguminous_orig_animal(ostra ,46 ).







%end of knowledge base





start:- margin(13),nl,margin(13),nl,tab(5),writeln('House MD'), nl,tab(5),writeln( 'Your doctor'),nl,tab(5),
	nl, % linebreak
	margin(13),
	nl,
	tab(5),
	writeln('Main menu'),
	writeln('1 Calculate my corporal mass index'),
	writeln('2 Recommend a healthy diet'),
	writeln('3 Exit [X]'),
	writeln('Choice:'),
	read(OPC), % acqiring the variable which decides what to do next according to the menu
	options(OPC),
	nl,
	margin(13),nl,margin(13).


%format =========================
margin(0):- !. %base case
margin(NMAX):- X is NMAX - 1,write('='),margin(X). %recursive


%menu selection
options(OPC):- 
	
	(
		(OPC = 1)-> writeln('corporal mass index'),imc;
		(OPC = 2)-> writeln('diet'),gastometabolico;
		(OPC = 3)-> writeln('exit...'),halt
			).


%corporal mass index calculation
imc:-
	writeln('Calculating your corporal mass index...'),
	writeln('Your weight(kilogram):'),
	read(PESO_K),
	writeln('Height(meters):'),
	read(ALTURA_M),
	writeln('gender (1/woman, 2/men)'),
	read(GENERO),
	IMCC is PESO_K/ALTURA_M^2, %the actual calculation
	writeln('Your corporal mass index is:'),
	writeln(IMCC),
	writeln('DIAGNOSIS: (for educational purposes only, doesnt replace an health professional opinion)'),
	diagnostico(IMCC,GENERO).



diagnostico(IMCC,G):- %G: gender 1-woman, 2 -man
	((IMCC<16,G=1)-> writeln('malnutrition!!, go to a helth proffessional!!');
	(IMCC=<17,G=2)->writeln('malnutrition!!, go to a helth proffessional!!');
	(IMCC>=17,IMCC=<20,G=1)-> writeln('low weight!!, eat better!');
	(IMCC>=18,IMCC=<20,G=2)-> writeln('low weight!!, eat better!');
	(IMCC>=21,IMCC=<24,G=1)-> writeln('NORMAL!!, congrats!');
	(IMCC>=21,IMCC=<25,G=2)-> writeln('NORMAL!!, congrats!');
	(IMCC>=25,IMCC=<29,G=1)-> writeln('overweight!, diet, exercise and medicines!, go to a helth proffessional!!');
	(IMCC>=26,IMCC=<30,G=2)-> writeln('overweight!, diet, exercise and medicines!, go to a helth proffessional!!');
	(IMCC>=30,IMCC=<34,G=1)-> writeln('OBESE!, medicines, globe or surgery!');
	(IMCC>=31,IMCC=<35,G=2)-> writeln('OBESE!, medicines, globe or surgery!');
	(IMCC>=35,IMCC=<39,G=1)-> writeln('VERY OBESE !, medicinas, bariatric surgery!, go to a helth proffessional!!');
	(IMCC>=36,IMCC=<40,G=2)-> writeln('VERY OBESE !, medicinas, bariatric surgery!, go to a helth proffessional!!');
	(IMCC>40)-> writeln('MORBIDLY OBESE!, medicine, urgent bariatric surgery!, go to a helth proffessional!!')



		).



gastometabolico:-
	

		writeln('Calculating metabolic expenditure...'),
		writeln('Your weight (kilograms):'),
		read(P),
		writeln('Age:'),
		read(E),
		writeln('Gender (1/woman, 2/man)'),
		read(G),
		%MUJERES
		(
			(G=1,E<25)-> GMET is P*21.6 + 300, writeln('woman of: '),write(P),writeln(' Has a metabolic expenditure:'), writeln(GMET),write('Kcal');	 %woman of MENOS DE 25 AÑOS
			(G=1,E>=25,E=<45)-> GMET is P*21.6, writeln('woman of: '),write(P),writeln(' Has a metabolic expenditure:'), writeln(GMET),write('Kcal');	 %MUJER 25-45 AÑOS
			(G=1,E>45)-> u is (E -45)/10,GMET is P*21.6 -u*100, writeln('woman of: '),write(P),writeln(' Has a metabolic expenditure:'), writeln(GMET),write('Kcal');	 %woman of MAS DE 45 AÑOS
	 		%HOMBRES
	 		(G=2,E<25)-> GMET is P*24 + 300, writeln('man of: '),write(P),writeln(' Has a metabolic expenditure:'), writeln(GMET),write('Kcal');	 %man of MENOS DE 25 AÑOS
			(G=2,E>=25,E=<45)-> GMET is P*24, writeln('man of: '),write(P),writeln(' Has a metabolic expenditure:'), writeln(GMET),write('Kcal');	 %HOMBRE 25-45 AÑOS
			(G=2,E>45)-> u is (E -45)/10,GMET is P*4 -u*100, writeln('man of: '),write(P),writeln(' Has a metabolic expenditure:'), writeln(GMET),write('Kcal') %man of MAS DE 45 AÑOS
				),
				
				
		dieta_saludable(GMET).
				
				
				
				
				
				
dieta_saludable(GMET):-fruit_veggies(FrutasVerduras,K_F),
	         cereal(Cereal,K_C),
	        leguminous_orig_animal(Leguminous,K_L),
	         K_Total is
		 K_F + K_C + K_L,
		 PERCENT_GMET is GMET * 0.10,
		 K_Total > GMET - PERCENT_GMET,
		 K_Total < GMET + PERCENT_GMET,
		 nl,write('Eat '),
		 write(FrutasVerduras),write(' with '),
		 write(Cereal),write(' and '),
		 write(Leguminous),
		 write(' Healthy, sum of Calories is: '),
		 write(K_Total),fail.



