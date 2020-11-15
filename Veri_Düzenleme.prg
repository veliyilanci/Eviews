series y=gsmh  'serinin adı girilecek.
series ly=log(y) ’serinin logaritmasi
series dy=y-y(-1) ’serinin birinci farki
series dly=ly-ly(-1) ’serinin logaritmik farki
equation dm.ls y c @trend
dm.makeresids dtry ’serinin trend ve sabit bileseninden arindirilmis hali
equation dn.ls y c
dn.makeresids dcy ’serinin sabit bileseninden arindirilmis hali
