main(List<String> args) {
  List <int> liste =[1,2,3];

  liste.forEach((element) {
    print("element $element");
  });
 
 //forEach  kendi içinde tüm elemanları gezer
  liste.forEach(callback); //aşağıdaki fonksiyonu çağırıp yukardaki döngü ile yazdırıların aynısını bu şekilde de yapabiliriz.

  kendiForEachYapim(liste, (int deger,int index){ //bu şekilde callback girilmesi gereken yere aşağıda callback içinde istediklerimizi yazıyoruz
    print("Değer $deger ve index $index");
  });
}

void callback (int element){
  print("element $element");
}

void kendiForEachYapim(List<int>liste, Function callback){ //herhangi başka bir şeyde yazabilirdik ancak genelde callback yazlır. 
  for(int i = 0; i<liste.length;i++){
    callback(liste[i], i); //fonksiyonu kendimiz oluşturduğumuz için başka eklemelerde yapabiliyoruz. Bu sayede index numarasınıda görebiliriz.
  }

}