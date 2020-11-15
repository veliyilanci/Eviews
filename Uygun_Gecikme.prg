'
!maks=12 'maksimum gecikme uzunluğu
series seriadi=zar1 'y yerine serinizin adını giriniz.

matrix(!maks,1) tablo
series y=seriadi
!min_aic = 99999999999
for !deg=1 to !maks
equation dogrusal.ls y c y(-1 to -!deg)
tablo(!deg,1)=dogrusal.@aic
if dogrusal.@aic < !min_aic then
!min_aic = dogrusal.@aic
!gecikme=!deg
endif
next
equation dogrusal.ls  y c y(-1 to -!gecikme)
vector minimum=@cimin(tablo)
!sekil=minimum(1)+3
freeze(tablo_) tablo
tablo_.setfont(!sekil) +b +i
show tablo_
