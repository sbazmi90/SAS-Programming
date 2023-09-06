/*We are going to use PROC FREQ with a real data*/
PROC PRINT DATA=SASHELP.CARS(obs=10);
RUN;


/* frequency by city, Two dim freq, Only freq, Conditional*/


PROC FREQ DATA=SASHELP.CARS;
table TYPE/nopercent nocum;
RUN;


PROC FREQ DATA=SASHELP.CaRS;
table TYPE * Origin /nopercent norow nocol;
RUN;

/*Now conditional Freq*/

PROC FREQ DATA=SASHELP.CARS;
table TYPE * Origin /nopercent norow nocol;
where MSRP >=20000;
RUN;