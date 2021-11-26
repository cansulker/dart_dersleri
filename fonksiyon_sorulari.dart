void main() {

//Parametre olarak 1 int sayı alan fonksiyon yazınız. Bu fonksiyon aldığı değere kadar olan çift sayıların toplamını geriye döndürsün.
print("*********** Soru 1 ***********");
	//int cift=ciftsayi(10);
  //print(cift);
  print("Çift sayıların toplamı= "+ciftsayi(20).toString());


//Daire alanını hesaplayan fonksiyon yazınız.Pi sayısı opsiyonel olmalı,eğer pi sayısı verilmediyse 3.14 alınmalı.
print("*********** Soru 2 ***********");

double daire=daireAlani(2,3);
print("Dairenin alanı: $daire");


//Bir üçgenin kenarlarını isimlendirilmiş(opsiyonel olsun demek) parametre olarak alan fonksiyon yazınız. Bu fonksiyon kenar değerlerine göre hangi çeşit bir üçgen
// olduğunu yazdırsın ve geriye değer döndürmesin.
print("*********** Soru 3 ***********");
ucgenCesidi(kenar2:3,kenar1:4,kenar3:5);
  
}
//1.sorunun fonksiyonu
int ciftsayi(int sayi){
  int toplam=0;
  for(int i=0; i<sayi;i++){ 
    if(i%2==0){
      toplam=toplam+i;      
    }
  }
  return toplam;
}

//2.sorunun fonksiyonu
double daireAlani(double r,[double pi=3.14]){
  return (pi*r*r);
}


//3.sorunun fonksiyonu
void ucgenCesidi({int kenar1=0,kenar2=0,kenar3=0}){
  if (kenar1==kenar2 && kenar1==kenar3){
    print("Bu bir eşkenar üçgendir.");
  }else if(kenar1==kenar2 || kenar2==kenar3 || kenar1==kenar3){
    print("Bu bir ikizkenar üçgendir");
  }else {
    print("Bu bir çeşitkenar üçgendir.");
  }
}