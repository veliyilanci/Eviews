series b=get 'get yerine serinin adı yazılacak
series a=@median(b)
series y=abs(get-a)
series z=@median(y)
series x=0.6745*(b-a)/z
series t=3.5
vector f=x
vector e=t
for !i=1 to @obssmpl 
if f(!i)>e(!i) then
a(!i)=1
else a(!i)=0
endif
next !i=!i+1
