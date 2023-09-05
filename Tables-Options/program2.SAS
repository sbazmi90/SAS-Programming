/*We are not recommended to print the entire table*/
/*Instead we are using PROC PRINT which prints the provided table*/


PROC PRINT DATA=SASHELP.CARS(obs=10);
RUN;

/*How to limit variables*/

PROC Print DATA=SASHELP.CARS(obs=10);
VAR TYPE MSRP;
Title "TYPE";
RUN;

Proc PRINT DATA=SASHELP.CARS(obs=10);
VAR Horsepower EngineSize Invoice;
TITle "FEATURE";
RUN;

/*How to use by statement*/

PROC Print DATA=SASHELP.CARS(obs=50);
VAR TYPE MSRP;
Title "TYPE";
by Origin;
RUN;

Proc PRINT DATA=SASHELP.CARS(obs=50);
VAR Horsepower EngineSize Invoice;
TITle "FEATURE";
by Origin;
RUN;

/*How to use sum option*/
PROC Print DATA=SASHELP.CARS(obs=50);
VAR TYPE MSRP;
Title "TYPE";
by Origin;
sum Invoice;
RUN;

Proc PRINT DATA=SASHELP.CARS(obs=50);
VAR Horsepower EngineSize Invoice;
TITle "FEATURE";
by Origin;
sum Invoice;
RUN;
