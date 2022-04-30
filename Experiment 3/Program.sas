/*create dataset*/
data my_data;
    input Method $ Score;
    datalines;
A 78
A 81
A 82
A 82
A 85
A 88
A 88
A 90
B 81
B 83
B 83
B 85
B 86
B 88
B 90
B 91
C 84
C 88
C 88
C 89
C 90
C 93
C 95
C 98
;
run;

/*perform one-way ANOVA*/
proc ANOVA data=my_data;
class Method;
model Score = Method;
means Method / tukey cldiff;
run;