/*Transformation from observations to variables*/

/*It is gonna happening via PROC TRANSPOSE */


PROC PRINT DATA=SASHELP.CARS;
VAR TYPE MSRP;
RUN;

PROC FREQ DATA=SASHELP.CARS;
table TYPE * Origin/nopercent nocol norow;
RUN;

PROC transpose DATA=SASHELP.CARS out=transposed(drop=_:);
by Cylinders;
id Origin;
Var MSRP;
RUN;

/*There are more options with that*/
PROC transpose DATA=SASHELP.CARS prefix=trans_ suffix=_done out=transposed(drop=_:);
by Type;
id Origin; /*It should be unique and should not appear twice*/
Var MSRP;
RUN;


PROC print DATA=SASHELP.CARS(obs=10);
run;

PROC SORT DATA=SASHELP.CARS;
by Horsepower TYPE EngineSize;
RUN;






