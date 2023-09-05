/*How to use keep*/

DATA KEEPS(keep=MODEL TYPE MSRP);
set SASHELP.CARS;
RUN;

/*How to use drop*/
DATA DROPS(drop=MSRP);
set SASHELP.CARS;
RUN;

/*How to use output*/
DATA PRICE(keep=MODEL TYPE MSRP) FEATURES(DROP=MODEL TYPE MSRP);
set SASHELP.CARS;

IF MSRP < 19000 THEN OUTPUT PRICE;
Else output FEATURES;

RUN;

/*How to use _N_ */ /*Observation line*/
DATA LINE_NUMBER;
set Price;
IF _N_ >= 10 AND _N_ < 20;
RUN;

/*How to use OBS*/ /*It is gonna using observations*/
DATA OBSS;
set Price(OBS=15);
RUN;


/*How to use OBS*/ /*It is gonna using "first" observations*/
DATA FIRSTOBSS;
set price(obs=15 firstobs=7);
RUN;






