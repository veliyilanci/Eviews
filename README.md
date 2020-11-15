# Eviews
Eviews ile Yazılmış Bazı Programlar

<b>Aykırı_Deger.prg:</b>
Verisetinde yer alan aykırı gözlemleri tespit edebilmek amacıyla bir çok yöntem kullanılmaktadır. Değişitirilmiş-Z skorları ise 
Iglewicz ve Hoaglin tarafından literatüre kazandırılan bir yöntemdir. Bu kod ile elde edilen değiştirilmiş-Z skoru mutlak değer içerisinde 3,5′ten büyük olan gözlemler aykırı gözlem olarak ifade edilir. 
<br>

<b>Beklenen_Deger.prg: </b>
Bir rassal değişkenin
çok sayıda denemede alacağı değerlerin uzun dönem ortalaması beklenen
değer olarak tanımlanmaktadır. Diğer bir ifadeyle beklenen değer, rassal
değişkenin olasılıklarla hesaplanan aritmetik ortalamasıdır. Kesikli bir rassal
değişken(X) için beklenen değer şu formülle hesaplanabilir:
'
Beklenen değerin elde edilebilmesi için X rassal
değişkeninin alabileceği her değer, bu değerin gerçekleşme olasılığıyla
çarpılmakta ve elde edilen bu çarpımlar toplanmaktadır.

Örn: İki zarın birlikte atılmasıyla elde edilen sayıların toplamının beklenen değeri
nedir?

İki zar birlikte atıldığında 36 farklı sonuç ortaya çıkabilir fakat 11
farklı toplam sonucu bulunmaktadır (2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12). Eğer
bu sonuçların her biriyle, gerçekleşme olasılıkları çarpılıp, elde edilen
değerler toplanırsa beklenen değere ulaşılır.

xi	2	3	4	5	6	7	8	9	10	11	12

f(xi)	1/36	 2/36/	 3/36	 4/36	 5/36	 6/36	 5/36	 4/36	 3/36	 2/36	 1/36

Yukarıdaki tabloda her bir değerin gerçekleşme olasılığı görülmektedir (Örn: 3 rakamı, 1-2 ve 2-1 değerleri geldiği zaman elde edilmektedir. Örneklem uzayının eleman sayısı 36 iken olay sayısı 2 olduğu için 3’ün gerçekleşme olasılığı 3/36’dır). X’in alabileceği her değer ile gerçekleşme olasılıkları çarpıldığında;

7

sonucu elde edilmektedir ki, bu değer beklenen değeri vermektedir. Bu
teorik değer (7) uzun dönemli ortalamayı göstermektedir yani bu iki zar atma
deneyinin çok kez tekrarlanması halinde elde edilen sonuçların ortalaması bu
teorik değere eşit olacaktır.

Bu deneyi Eviews programında yapabilmek için bu kodu Eviews’da çalıştırın* (Eviews’i açtıktan sonra File–> New –> Program yolunu izleyen, ekrana gelen pencereye bu kodu yapıştırıp, sol üst kısımdaki Run düğmesine basın, ekrana gelen mesaj kutusunda OK düğmesine basın).

<b>Uygun_Gecikme.prg:</b>
 Bu kodda Akaike bilgi kriterinden yararlanarak istenilen seri için otoregresif modelin uygun gecikme uzunluğuna karar vermeye yardımcı olacak Eviews kodu yer almaktadır.
 
 <b>Veri_Düzenleme.prg:</b> Bu kod ile bir seri üzerinde yapılabilecek bazı temel modifikasyon işlemleri gösterilmektedir.
