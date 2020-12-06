' rolling KSS unit root test
'This is a modified code of ADF unit root test that obtained from forum.eviews.com
'This test first used in Yilanci (2012)
' please cite as: Yilanci, V. (2012). The validity of purchasing power parity in Central and Eastern European countries: A rolling nonlinear unit root. Economic research-Ekonomska istrazivanja, 25(4), 973-986.
'veli yilanci @ 2012- 2020

series lm1=zambia 'Series to be tested
!ssize = 60 'subsample size
!arindirma=1 '0 for Case 1; 1 for Case 2, 2 for Case 3

!maxlags=@floor(12*(!ssize/100)^0.25)
smpl @all
!length = @obssmpl
matrix(!length-!ssize+1,2) adftstat
if !arindirma=0 then
series lm1=lm1
for !i=1 to !length-!ssize+1
adftstat(!i,2) = -1.92
next
else if  !arindirma=1 then
equation temp1.ls lm1 c 
series lm1=resid
for !i=1 to !length-!ssize+1
adftstat(!i,2) = -2.66
next
else
equation temp1.ls lm1 c @trend
series lm1=resid
for !i=1 to !length-!ssize+1
adftstat(!length-!ssize+1,2) = -3.13
next
endif
endif
!min_aic= 99999999999999999
for !i = 1  to  !length-!ssize+1
smpl @first+!i-1 @first+!i+!ssize-2
series dlm1=d(lm1)   
for !j=1 to !maxlags
equation temp.ls dlm1 lm1^3  dlm1(-1 to -!j)
if temp.@aic < !min_aic then
!min_aic=temp.@aic
!gecikme=!j
endif
next
equation temp1.ls dlm1 lm1^3  
if temp.@aic>temp1.@aic then
!gecikme=0
adftstat(!i,1) = temp1.@tstat(1)
else
adftstat(!i,1) = temp.@tstat(1)
endif
next
' drawing the graph
freeze(TVKSS) adftstat.line
' set aspect ration and use line pattern
TVKSS.option size(8,2)   linepat
' set legend text
TVKSS.setelem(1) legend(KSS t-statistic)
TVKSS.setelem(2) legend(Asymptotic 10% critical value)
' add text at top of graph

%comment = "KSS t-statistic for window of " + @str(!ssize) + " observation"

TVKSS.addtext(t) {%comment}

show TVKSS
smpl @all
delete temp
delete temp1


