void main() {
	Set <String> isimler=Set();//var isimler=Set(); olarakta yazabiliriz.
  isimler.add("Harry");
  isimler.add("Hermione");
  isimler.add("Harry");
  isimler.add("Ron");

  if(isimler.contains("Harry")){//bu şekilde yaptığımız zaman bilgisayar demekki bu listenin içinde Harry diye bir veri var ve ben bunu kullanabilirim diyor.
  }

  bool sonuc=isimler.remove("Hermione");
  print("ifade listede var: "+sonuc.toString());// bu şekilde liste içinde istediğimizi çıkartabiliriz ve listede çıkartmak istediğimiz eleman var mı yok mu program bize boolean olarak söyler.

  for(String s1 in isimler){
    print("isim: $isimler");//setler aynı olan değerleri 1 kere yazdırır ve sıralı saklanmazlar.
  }

  List <int> ciftSayilar = [0,2,2,4,6,8,4,2,0];
  Set<int>numaralar= Set();

  numaralar.addAll(ciftSayilar); //Listedeki olan tüm elemanları set'e aktarır.
  for(int s1 in numaralar){
    print("no: $s1");
  }

}