void main() {
	cevreyiHesapla(); //bu şekilde fonksiyonumuzu çağırabiliyoruz.
  int sonuc=alanHesapla(3,5);//bu değer alma haberleşme olayına parametre deniyor. Eğer ekranda görmek istiyorsak bu değeri bir değişkene atamamız gerekiyor ve ardından yazdırmalıyız. Çünkü aşağıda döndüren bir fonksiyon kullandık ve değer direkt bize gelmiş oluyor.
  print(sonuc);
  int hacimSonuc=hacim(3,4,5);
  print(hacimSonuc);

  /*int farkSonucu=fark(5,8);
  print(farkSonucu);*/ //bu şekilde yazmak yerine print içerisinde tek satırda yazabiliriz.
  print("Fark:"+fark(5,8).toString());// içerisi string ifade olduğunda aldığımızı sonucu string'e çevirmemiz gerekiyor.
  print(fark(5,8));

  print("Max value= "+maxValue(3,4).toString());

  print("Min value:"+minValue(3,9).toString());

  print("Max value= "+denemeMaxValue(4,4).toString());

  int toplam=plus(2,3,6);
  print("Sayıların toplamı $toplam");
  int toplam2=plus(2,3);
  print("Sayıların toplamı $toplam2");

  int toplam3=sayilariTopla(sayi3:5,sayi1: 4,sayi2:8);
  print("Sayıların toplamı $toplam3");

  int toplam4=sayilariTopla(sayi3:5,sayi1: 4);
  print("Sayıların toplamı $toplam4");

  int toplam5=sayilarinToplami(8,sayi3:5,sayi1:4,sayi2:3);
  print("Sayıların toplamı ${toplam5}");
}


//ileride çok fazla bu fonksiyonu çağırırsak ve bir hata alırsak o zaman sadece fonksiyonu kontrol etmemiz yeterli olacaktır.Aksi halde aynı işlemleri çok defa yazdığımızda hangisinde hata alıyoruz bulmamız daha uzun sürerdi.

//Parametresiz fonksiyon
void cevreyiHesapla(){ // değer döndürmüyorsa başına void yazılır.
  int en =6, boy =10;
  int cevre =(en+boy)*2;
  print("Çevre $cevre");
}

//Parametreli fonksiyon

int alanHesapla(en,boy) {//bu şekilde değerleri maindeyken alabiliriz. Değer döndürdüğü zaman hangi değerse başına yazılır.
//print("alan değeri ${en*boy}");
  return en*boy;// döndürülen fonksiyonlarda değer çağrılan yere gider direkt.
}

int hacim(int en,int boy, int yukseklik) {
  return en*boy*yukseklik;
}

/*int fark(ints1,s2){
return (s1-s2);
}*/ // bu şekilde tek satırlık bir return kodu yazıyorsak fonksiyonu aşağıdaki gibi tek satırda yazabiliriz. 

int? fark(int s1,s2)=> s2-s1; 

minValue(int x,y){
  
  if (x<y){
    return x;
  }else {
    return y;
  }
}

/*maxValue(int x,y){
  
  if (x>y){
    print("Max value = $x");
  }else {
    print("Max value = $y");
  }
}*/
maxValue(int x,y)=> x>y?x:y; // bu şekilde tek satırda yazabiliyoruz.

denemeMaxValue(int x,y)=> x>y?x:x<y?y:"equal";//else if bile kullanabiliriz.Sonuçta tek satır yazılan her şeyi bu kısayol fonksiyonunda kullanabiliriz.

/******Optinal******/
int plus(int number1,int number2,[int number3=0])// [] işareti değer girilmesi zorunlu değil anlamında kullanılır ve kullanıcı isterse girer. Ancak null değer olmaması adına opsiyonlu yapacağımız ifadeyi bir boş ifadeye eşitlememiz gerekiyor.
{
  return number1+number2+number3;
}


int sayilariTopla({int sayi1=0,int sayi2=0,int sayi3=0})// null hatası almamak için sayıları burada bir değere eşitliyoruz
{
  return sayi1+sayi2+sayi3;
} //{} fonksiyonu çağırırken değişkenleri istediğimiz sırayla yazmamızı sağlıyor.Zaten diret opsiyonlu olarak geçtiğinden kullanıcı boş bırakabilir.

int sayilarinToplami(int sayi4,{int sayi1=0,int sayi2=0,int sayi3=0})// bu ifade sayi4 girilmesi zorunlu ama diğerleri opsiyonlu demek.
{
  return sayi1+sayi2+sayi3+sayi4;
} 
