import 'dart:io';
import 'dart:math';

void main() {
	//Şehirleri tutan bir liste oluşturun.4tane il ekle ve ekrana yazdır.
  print("************* Soru 1 *************");

  var sehirler= ["istanbul","bursa","tekirdağ","izmir"];
  print(sehirler);


  //Key:String,value:dynamic olacak map liste oluştur. Bilgisayardaki ram,işlemci,ssd olup olmadığını yazdır.
  print("************* Soru 2 *************");

  //Map<String,dynamic> pcDonanim= {"işlemci":"i5","ram":4,"ssd":true};
  var pcDonanim = {
    "işlemci":"i5","ram":4,"ssd":true
  };
  //print(pcDonanim["işlemci"]);
  for(var element in pcDonanim.entries){
    print("${element.key}  özelliği: ${element.value}");
  }


  //Key:String,value:dynamic olacak map liste oluştur. İl adını,ilçe sayısını ve il plaka kodunu yazdıran bir program yaz.
  print("************* Soru 3 *************");
  
  List<Map<String,dynamic>> iller= <Map<String,dynamic>>[];
  Map<String,dynamic> eklenecekSehir1= Map<String,dynamic>();
  eklenecekSehir1["il_adi"]="ankara";
  eklenecekSehir1["ilçe_sayisi"]=10;
  eklenecekSehir1["plaka_kodu"]=6;
  Map<String,dynamic> eklenecekSehir2=<String,dynamic>{};
  eklenecekSehir2["il_adi"]="istanbul";
  eklenecekSehir2["ilçe_sayisi"]=30;
  eklenecekSehir2["plaka_kodu"]=34;
  var eklenecekSehir3=<String,dynamic>{};
  eklenecekSehir3["il_adi"]="bursa";
  eklenecekSehir3["ilçe_sayisi"]=16;
  eklenecekSehir3["plaka_kodu"]=12;
  
  iller.add(eklenecekSehir1);
  iller.add(eklenecekSehir2);
  iller.add(eklenecekSehir3);
  
  iller.add({
    "il_adi":"izmir","ilçe_sayisi":9,"plaka_kodu":35      
  }); //listeye ekler ancak sonradan bunlarla ilgili işlem yapamayız.
  
  print(iller[0]);
  print(iller[1]["il_adi"]);
  print(iller[2]);
  for(int i=0; i<iller.length;i++){
    var oankiSehirMap=iller[i];
    print("listenin ${i+1}.elemanında bulunan şehir adı: ${oankiSehirMap["il_adi"]} ilçe sayısı : ${oankiSehirMap["ilçe_sayisi"]} plaka kodu ${oankiSehirMap["plaka_kodu"]}");
  }


   //5 elemanlı iki farklı liste oluşturun. Elemanlar 0-50ye rastgele şekilde oluşturulsun.Daha sonra bu listeleri set yapısında birlştirip yeni oluşan listenin karesini al.
  print("************* Soru 4 *************");

  List<int>liste1 =List.filled(5,0);
  var liste2=List<int>.filled(5,0);
  Set<int>sonSetYapisi=<int>{};
  for(int i=0;i<liste1.length;i++){
    liste1[i]=Random().nextInt(50);
    liste2[i]=Random().nextInt(50);
   
  }
  var sonListe=[...liste1,...liste2];
  for(int gecici in sonListe){
    sonSetYapisi.add(gecici*gecici);
  }
  print(sonListe);
  print(sonSetYapisi);
  

  
  //Kullanıcıdan aldığınız integer pozitif sayıları bir listede tutun, kullanıcı -1 değerini girdiğinde girilen sayıların ortalamasını ekrana yazdırın.
  print("************* Soru 5 *************");

  int girilenNot =0;
  List<int>girilenNotlar=<int>[];
  do{
    print("lütfen notunuzu giriniz, çıkış için -1'e basınız");
    girilenNot=int.parse(stdin.readLineSync()!);
    if(girilenNot!=-1){
      girilenNotlar.add(girilenNot);
    }
  }while(girilenNot!=-1);

  print("kaç tane not girildi ${girilenNotlar.length}");
  double ortalama=listeninOrtalamasiniBul(girilenNotlar);
  print("notların ortalaması $ortalama");



  
}

listeninOrtalamasiniBul(List<int>liste){
  int toplam=0;
  for(int i=0;i<liste.length;i++){
    toplam=toplam+liste[i];
  }
  return toplam/liste.length;
}