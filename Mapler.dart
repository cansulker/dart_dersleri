void main() {
	Map<String,int> alanKodlari = {
    "ankara":312,"istanbul":212,"bursa":224
  };
  print(alanKodlari);
  print(alanKodlari["bursa"]);

  Map<String,dynamic> tolga= {"soyad":"yılmaz","yas":19,"bekarMİ":true
  };
  print(tolga["yas"]);

  Map<String,dynamic> deneme= Map();
  Map<String,dynamic> deneme2= {}; //bu iki şekilde de boş map diziler oluşturulabilir.

  for (String oankiAnahtar in tolga.keys){
    print(oankiAnahtar);
    print(tolga[oankiAnahtar]);
  }//key değerleri gezmek için

  for (dynamic oankiAnahtar in tolga.values){
    print(oankiAnahtar);
    print(tolga[oankiAnahtar]);
  }//value değerleri gezmek için

  for(var element in tolga.entries){
    print("key: ${element.key} ve değeri : ${element.value}");
  }

  if(tolga.containsKey("yas")){
    print("bulunan yaş değeri ${tolga["yas"]}");
  } //key değerleri içerisinde yazdığımız ifadenin olup olmadığını kontrol eder.
  if(tolga.containsKey("isim")){
    print("bulunan yaş değeri ${tolga["isim"]}");
  }else{
    print("aranılan ifade bulunamadı");
  }

  


}