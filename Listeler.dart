void main() {

//Sabit Uzunluklu Listeler: Adı üstünde uzunluğu belli ve değiştirilemez listelerdir.
	List<int> sayilar = List.filled(5,2);// <int> şeklinde yazmak isteğe bağlı hangi tür olacağını yazmak istersek.
  sayilar[0]=4;
  sayilar[1]=5;
  sayilar[2]=9; //bu şekilde liste içersine eleman ataması yapabiliriz. Atama yapmadığımız kısımlarada yukarıda girdiğimiz varsayılan değeri otomatik yazdırır.
  print(sayilar);

  List<String> isimler=List.filled(3," ");
  isimler[0]=5.toString();// sayı yazdırmak istersekte string ifadeye dönüştürmemiz gerekiyor çünkü listemiz string türünde.
  isimler[1]="merhaba";
  print(isimler);

  List karisik = List.filled(4,0);// bir veri türü yazmadığımız için dynamic olarak algılar liste içerisine string'te integer'da kullanabiliriz.
  karisik[0]="selam";
  karisik[1]=5;
  karisik[2]=true;
  print(karisik);

  for(int i=0;i<sayilar.length;i++){
    sayilar[i]+=5;//listedeki elemanlara 5 ekler.
    print(sayilar[i]);
  }
  
  for(int sayi in sayilar){// indexlerle işimiz yoksa bu şekilde de basitçe yazdırabiliriz.
    print("okunan değer $sayi");
  }


  //Büyüyen Listeler
  List<int>number=[];
  number.add(1); // ilk başta index numarası belli olmadığı için bu şekilde listeye eleman ataması yapılır.
  number.add(5);
  number.add(3);
  print(number);
  number[2]=4; //artık listede o index olduğu için değişiklik yapabiliyoruz.
  print(number);

  List<int>number2=[1,2,3];//bu şekilde en baştada tanımlayabiliriz.
  print(number2);
  number2.add(4); //daha sonrada listeye ekleme yapabiliyoruz. Bu yüzden büyüyebilen listeler deniyor.
  print(number2);

  List<int>number3=List.filled(7,5,growable:true);
  number3.add(45);
  print(number3);// sabit listelerdeki growable kısmını true yaparsak büyüyebilen bir liste elde etmiş oluruz.

  //List<int>number4= List.empty(growable:true); // bu ifade List<int>number4=[] ifadesiyle aynı şekilde boş bir liste oluşturur. Burada empty'yi görmese de başka yerde çalışıyor.
  //number4.add(6);
  //print(number4);


  //Listelerde Kullanılan Metodlar

  List<int>number5=[4,5,10,25,4];

  if(number5.isNotEmpty){
    print(number5.first);//listenin ilk elemanını yazdırır.
    print(number5.last);//listenin son elemanını yazdırır.
  }
  print("Boş mu:"+number5.isEmpty.toString());
  print("Eleman sayısı: ${number5.length}");
  print("Ters sırada ${number5.reversed}"); // ancak o anda ters çevirir ve yazdırır daha sonra listeyi çağırdığımızda gene ilk listeyi görürüz. 
  number5.reversed;
  print(number5);
  
  number5.add(23);
  print(number5);
  number5.remove(4);//ilk gördüğü 4'ü silecek
  print(number5);
  number5.removeAt(1);//index değerini giriyoruz ve burada 1.indexte olan değeri sil demiş oluyoruz.
  print(number5);
  
  if(number5.contains(9)){
    print("Listede 9 elemanı vardır.");
  }else {
    print("Listede 9 elemanı yoktur.");
  }
  
  print("0.indexte bulunan değer:"+number5.elementAt(0).toString());
  print("5 numaralı değerin bulunduğu index:"+number5.indexOf(5).toString());
  
  number5.shuffle();//elemanların yerlerini rasgele değiştirir.
  print(number5);
  number5.clear();//tüm elemanları siler.
  print(number5);


}