'Beklenen değer örneği:

wfcreate (wf=beklenendeger) u 10000
smpl 1 10
series zar1=@round((@rnd*(1-6)+6))
series zar2=@round((@rnd*(1-6)+6))
series zartoplam=zar1+zar2
freeze(ongozlem) zartoplam.distplot 
show ongozlem
smpl 1 100
series zar1=@round((@rnd*(1-6)+6))
series zar2=@round((@rnd*(1-6)+6))
series zartoplam=zar1+zar2
freeze(yuzgozlem) zartoplam.distplot 
show yuzgozlem
smpl 1 1000
series zar1=@round((@rnd*(1-6)+6))
series zar2=@round((@rnd*(1-6)+6))
series zartoplam=zar1+zar2
freeze(bingozlem) zartoplam.distplot 
show bingozlem
smpl 1 10000
series zar1=@round((@rnd*(1-6)+6))
series zar2=@round((@rnd*(1-6)+6))
series zartoplam=zar1+zar2
freeze(onbingozlem) zartoplam.distplot 
show onbingozlem

