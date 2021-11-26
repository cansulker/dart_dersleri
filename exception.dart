//program çalışırken(running time) esnasında exception hatası alırız. çıkabilcek hataları görmezden gelmek için ve programa zarar vermeden çalıştırabilsin diye try-catch kullanıyoruz.
import 'dart:math';

main(List<String> args) {
  print("program başladı");

  int sayi = 100 ~/6; //küsüratlı yazma yaklaşık olarak yaz demek.
  print(sayi);

  try {
    /* int sayi =100~/0; //tanımsız olduğundan ekranda exception hata verir. Kurtulmak için try kullanıyoruz.
    print(sayi); */ //tek bir tane kontrol yapıyor buna bakarsa aşağıdaki koda bakmıyor.
    int sayi2= 100~/int.parse("cns");
    print(sayi2);
  } on IntegerDivisionByZeroException{ //hatayı direkt biliyorsak bu şekilde de yazabiliriz.
    print("Bölen sıfır olamaz");
  } on FormatException catch(d){ //integer ifadeyi stringe bölmeye çalışırsak bu hatayı alırız.
    print(d.message); // hatanın sebebini otomatik olarakta yazdırabiliriz.
    print(d.source);
  } //eğer yukarıdaki hatalardan biri değilse aşağıda catch kısmındakini yapar.
    catch (e) { //denenilen kodda hata varsa onu e diye bir şey içinde tut ve ekrana aşağıdakini yazdır.
    print("Hata çıktı ${e.toString()}");
  } finally {
    print("işlem bitti");
  }
  
  print("Program bitti");


  try {
    double deger=kareKokunuAl(-20);
    print("Değer ${deger.toStringAsFixed(2)}");
  } catch (e){
    print(e);
  }
}

double kareKokunuAl(int i) {
  try {
    if (i<0){
    throw FormatException ("Sayı negatif olamaz "); //ekrana bunu yazdırıp programın geri kalanını bakmaz.
    print("deneme"); // ekrana yazdırmaz çünkü throw'dan sonra hemen catch kısmını arıyor.
  }else {
    return sqrt(i);
  }
  }on FormatException catch(e) {  //yukarıda yazmak yerine metot içersinde de hata yakalama işlemi yapılabilir.
    print(e.message + "metot içindeyim");
  }finally{ //fonksiyon bir şey döndürmek zorunda ve throw sonrasında program devam etmediği için finally kısmında döndürüyoruz.
    return 0;
  }
  
}