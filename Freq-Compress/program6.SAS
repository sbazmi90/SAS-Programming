/*We investigate what are contents of a dataset*/

/*It displays the contents*/

/*How many observations, how many variables, type of variables?*/

PROC CONTENTS DATA=SASHELP.CARS;
RUN;

PROC CONTENTS DATA=SASHELP.CARS VARNUM;
RUN;

/*Character Functions*/

/*Type of Blanks*/

/*Trailing Blanks: Blanks at the end of the string*/

/*Blanks in between: Thom s*/

/*Leading Blanks: Blanks at the beginning of the string*/

/*We need functions to remove those blanks*/

/*Compress: removes all of the blanks/spaces*/
/*COMPBL: This translates/compress more than one consecutive spaces/blanks*/

/*Example*/

/*compress vs compbl*/
/*Sam    Bazmi    Physics: SamBazmiPhysics*/
/*Sam    Bazmi    Physics: Sam Bazmi Physics*/

data sample;
NAME ="Sam    Bazmi    Physics";
len=length(NAME);
COMPRESS=compress(NAME);
len1=length(COMPRESS);
compbl=compbl(NAME);
len2=length(compbl);
RUN;



data sample2;
values ="ghdkfghdk34434;%";
new_value = compress(values,';%');
new_value_2 = compress(values,'g'); /*It removes every g*/
new_value_3 = compress(values,'g','d');
new_value_4 = compress(values,'','d');
RUN;


/*Other functions are: TRIM, TRIMIN, STRIP*/