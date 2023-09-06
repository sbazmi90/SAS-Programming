/*How to sort ascending (by default) and descending*/

PROC PRINT DATA=SASHELP.CARS(obs=10);
VAR MSRP;
RUN;

PROC SORT DATA=SASHELP.CARS(OBS=50);
BY MSRP;
Run;

/*Another options: NODUPKEY, NODUP: Duplicate values in all of the columns.
However, NODUPKEY is specified in only one column.*/

/*Remove duplicate in all column: _all_*/

