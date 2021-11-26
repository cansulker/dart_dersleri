void main() {
	/******For Loop	******/ //Ne kadar sayıda döndüreceğimizi biliyorsak kullanırız. Daha çok listeler için kullanılır.

  print("********** For Loop *********");

  for (int i=0; i<10; i++){
    if(i%2==0){
      print("çift sayı = $i");
    }else{
      print("tek sayı = $i");
    }  

   // i%2==0 ? print("çift sayı = $i") : print("tek sayı = $i"); // yukarıdaki kodun tek satırlık hali
  }

  List isimListesi = ["Harry","Hermione","Ron"];
  for(String gecici in isimListesi){
    print(gecici);
  }

  for(int i=0; i<isimListesi.length; i++){ //Liste içerisindeki eleman sayısını bilmiyorsak bu şekilde yazabiliriz.length sayesinde listedeki eleman sayısını otomatik çekip kıyaslayabiliyoruz.
    print("Okunan değer : "+ isimListesi[i]); 
  }

  /*******While Loop*******/ //Ne kadar sayıda döndüreceğimizi bilmiyorsak kullanırız.

  print("********** While Loop *********");

  //while loop önce kontrol eder sonra işlemi yapar.
  int sayac = 0;
    while (sayac<3){
      print("okunan değer: $sayac");
      sayac++;
    }

    //do-while loop ise önce işlemi yapar sonra kontrol eder.

  int sayac2 = 0;
  do{
    print("okunan değer: $sayac2");
    sayac2++;
  }while(sayac2<5);

  //Break && Continue

  for(int i=0; i<10;i++){

    if(i>5){
      break; //bu kısımda işlemi bitir demek
    }
    print("i değeri $i");
  }

  for(int i=0; i<10;i++){

    if(i>7){
      print("i değeri $i");
    }else {
      print("deneme1");//continue öncesinde gene bir şey yaptırabiliriz istersek.
      continue;// aşağıda başka kodlar olsa bile sen döngüyü devam ettir demek.
      print("deneme2");//ama continue sonrasını okumadığı için bu kodu göremez.
    }
    print("deneme3"); //else kısmına geldiği anda başa dönüyor ne zamanki if koşulu sağlanıyor ozaman for içerisindeki diğer kodlarıda program okuyor.
  }
  
  for(int i=1; i<=3; i++){
    for(int j=1; j<=3;j++){
      print("$i * $j = ${i*j}");
    }
  }
print("******Break******");
  distakiDongu: for(int i=1; i<=3; i++){
    for(int j=1; j<=3;j++){
      print("$i * $j = ${i*j}");

      if(i==2){
      break distakiDongu;
      }
    }
  }

print("******Continue******");
  distakiDongu: for(int i=1; i<=3; i++){
    for(int j=1; j<=3;j++){
      
      if(i==2){
      continue distakiDongu;
      }
      print("$i * $j = ${i*j}");

    }
  }
   
}