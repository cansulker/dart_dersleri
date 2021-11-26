main(List<String> args) {
  print("hello world"); 
  print('cansu ülker');
  print(3+6);
  print("cansu'nun dersleri");


  int age =26; // tam sayılar için kullanılır
  double age2 = 25.5; //ondalılı sayılar için kullanılır. 
  num avg = (age+age2)/2; //num yazdığımız zaman ister int ister doğuble kullanabiliriz.

  print(avg);

  String name = "Cansu";
  print("Her name is " + name);

  name="Ozan";
  print(name);

  bool happy = false;//bolooen tanımlaması bool olarak yapılıyor.

  var number =35;
  var adress="home";
  var correct=true;
  //var hepsini otomatik algılayabiliyor.
  print(number);

  int kilo =84.6.toInt(); //to sayesinde double ifadeyi int'e çevirebiliyoruz.
  print(kilo);

  //Interpolation $ işareti ile yazdırma.

  print("$name $adress");
  print("His name is $name ");

  String surname= "Ülker";

  print("soyadım olan $surname'de bulunan karakter sayısı:"+ surname.length.toString()); //burada surname.length bize string içerisindeki karakter sayısını verir ancak integer bir ifade olduğu için ve string yazdırdığımız için surname.length.toString yaparak integer ifadeyi string bir ifadeye dönüştürüyoruz.Print yaparken içerisinde aynı ifadeleri kullanmamız gerekiyor.

  print("karakter sayısı ${surname.length}"); //bu şekilde direkt "" içersine surname.length gibi bir şey yazdığımız zaman .length kısmını string olarak algılar bizde bir bütün olduğunu belli etmek için {}içersine alıyoruz.

  double en = 10.0;
  double boy =12.0;
  double alan=0; //uzun hali
  alan=(en*boy);
  print(alan);
  print("Eni $en ve boyu $boy olan dikdörtgenin alanı= ${(en*boy).toInt()}"); //sonundaki ifadeyi int yapmak istersek .toInt kullanabiliriz.

//Ad-Soyad yazılacak ve adımdaki karakter sayısı yazdıralacak
print("**********homework 1**********");
String name2="Cansu";
String surname2="Ülker";
int age3=26;
print("My name is $name2 $surname2, I am $age3 years old. My full name character size is = ${(name2+surname2).length}");

// kenar ölçüleri 3,4,5 olan bir üçgenin çevresini bulalım.

num x=3;
num y=4;
num z=5;

print("Birinci kenarı $x ikinci kenarı $y üçüncü kenarı $z olan bir üçgenin iç açılarının toplamı = ${x+y+z}'dir.");
}