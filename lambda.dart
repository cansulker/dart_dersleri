main(List<String> args) {
  //isimlendirilmemiş fonksiyonlara lambda denir.
  Function fonksiyon1= (int a, int b) {
    int toplam = a+b;
    print(toplam);
  }; //main içinde ve isimlendirilmemiş ayrıca ; ile bitiyor.

  fonksiyon1(5,8);

  var f2 = (int s) => s*2;
  var f3 =(int s2){
    return s2*2;
  }; //yukarıdaki tek satırlık kod ile aynı işlem orada far arrow kullanarak tek satırda yazdık. Ama ikiside lambda.

  var sayi = f2(6); // isimlendirilmediği için bu şekilde bir şeylere eşitleyerek kullanabiliyoruz.
  print(sayi);
  print(f3(6));

}

//normal bir fonksiyon. İsmi var ve main dışında 
void sayilariTopla(int a, int b){
  int toplam = a+b;
  print(toplam);
}