void main() {
/******if kullanımı*****/
	int number1 = 5;
  num number2 = 25;

  if (number1>number2) {
  print (" $number1 greater than $number2");
  }else if(number1<number2){
  print("$number2 greater than $number1");  
  } else if (number1==number2){
  print("$number1 equal $number2");
  }
  else { print("wrong number"); 
  }

/******not aralığı bulma******/

int not= 85;

if (95<=not && not<=100){
print("$not ile harf notunuz A");
}else if (90<=not && not<=94){
print("$not ile harf notunuz A-");
}else if (86<=not && not<=89){
print("$not ile harf notunuz B+");
}else if (82<=not && not<=85){
print("$not ile harf notunuz B");
}else if (78<=not && not<=81){
print("$not ile harf notunuz B-");
}else if (74<=not && not<=77){
print("$not ile harf notunuz C+");
}else if (70<=not && not<=73){
print("$not ile harf notunuz C");
}else if (63<=not && not<=69){
print("$not ile harf notunuz C-");
}else if (57<=not && not<=62){
print("$not ile harf notunuz D+");
}else if (51<=not && not<=56){
print("$not ile harf notunuz D");
}else if (0<=not && not<=50) {
print("$not ile harf notunuz F");
}else {
print("yanlış ifade girdiniz");
}

int sayi1 = 4;
int sayi2 =6;
int kucukSayi; //sonradan sayı atayacaksak bu şekilde yazabiliriz,null olmaz.

if(sayi1<sayi2){
kucukSayi=sayi1;
}else{
kucukSayi=sayi2;
}
print("küçük sayı= $kucukSayi ");

sayi1<sayi2 ? kucukSayi=sayi1: kucukSayi=sayi2; //bu şekilde tek satırda gösterebiliriz ? is : else anlamına gelir.
print("küçük sayı= $kucukSayi ");

kucukSayi=sayi1<sayi2 ? sayi1 : sayi2;//atama yapıyorsak bu şekilde de gösterilebilir.
print("küçük sayı= $kucukSayi ");

sayi1<sayi2 ? print("$sayi1 küçüktür $sayi2") : sayi1>sayi2 ? print("$sayi1 büyüktür $sayi2'den") : print("$sayi1 eşittir $sayi2"); //bu şekilde else if olarakte hepsini yan yana yazabiliriz.

String? ad = null; // Bir programa null atadığımızı söylediğimizde ? koymamız gerekiyor.
String soyad = "yılmaz";
String mesaj;

mesaj = ad ?? soyad; //?? ifadesi,mesaj'a adı koy eğer null değilse, eğer null sa soyadı kullan demek.
print("Merhaba $mesaj");


/*******switch kullanımı******/ 

String notDegeri = "CC";
  
  switch (notDegeri) {
    case "AA":
       print("notunuz 90 ile 100 aralığındadır.");
       break;
      
    case "BA":
      print("notunuz 80 ile 90 aralığındadır. ");
      break;
      
    case "BB":
      print("notunuz 70-80 aralığındadır. ");
      break;
      
    case "CB":
      print("notunuz 60-70 aralığındadır.");
      break;
      
    case "CC":
      print("notunuz 50-60 aralığındadır.");
      break;
      
    case "FF":
      print("notunuz 50 den düşük");
      break;
      
    default: //hiçbiri değilse ne yapsın anlamında.
      {
        print("yanlış ifade girdiniz");
      }
      
  }


// karşılaştırma istersek bu şekilde yapabiliriz.
/*
int sayi = 36;
  int avg=(sayi/10).toInt();
  
  switch (avg) {
    case 3:
       print("Sayı 30dan büyüktür.");
       break;
      
    case 2:
       print("Sayı 20dan büyüktür.");
       break;
      
     case 1:
       print("Sayı 10dan büyüktür.");
       break;
      
      case 0:
       print("Sayı 10dan küçüktür.");
       break;
      
    default:{
      print("yanlış ifade girildi");
    }
  }  */

  /*******OPERATÖRLER*******/
  double x= 6,y=4;

  //Aritmetik Operatörler

  print("$x + $y toplamı = ${x+y}");
  print("$x - $y toplamı = ${x-y}");
  print("$x * $y toplamı = ${x*y}");
  print("$x / $y toplamı = ${x/y}");
  print("$x % $y toplamı = ${x%y}");// %mod işareti kalanı verir.

  //Atama && Karşılaştırma

  double sayi3=5;
  sayi3+=5; // sayi3=sayi3+5 ifadesini bu şekilde kısaca yazabiliriz.
  print("sayi3 = $sayi3");

  sayi3%=4;
  print("sayi3'ün 4 ile bölümünden kalan= $sayi3");

  String isim="Cansu";
  String soyisim="Ülker";

  if (isim!=soyisim){
    print("isim ile soyisim aynı değil");
  }else {
    print("isim ile soyisim aynı");
  }

  

}