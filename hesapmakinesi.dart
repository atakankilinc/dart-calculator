import 'dart:io';
// this function add two numbers
int siraliToplama(int sayi1, int sayi2) {
  int toplam = sayi1 + sayi2;
  return toplam;
}

int requiredCikarma({required int sayi1, required int sayi2} ) {
  int sonuc = sayi1 - sayi2;
  return sonuc;
}

int opsiyonelCarpma(int sayi1, int sayi2, [int opsiyonelSayi = 1 ]) {
  return sayi1 * sayi2 * opsiyonelSayi;
}


double bolme(int sayi1, int sayi2){
  if(sayi2 == 0){
    print("Payda 0 olamaz");
    return 0;
  }else{
    return sayi1/sayi2;
  }
}
  
  


 void menuGoster() {
    print("Menüye hoşgeldiniz");
    print("0- ÇIKIŞ");
    print( "1- Toplama yap.");
    print("2- Çikarma yap");
    print("3- Çarpma yap");           
    print("4- Bölme yap");
  }




void main() {
  menuGoster();
  //print("Birinci sayiyi girin: ");
  //int sayi1 = int.parse(stdin.readLineSync()!);

  //print("İkinci sayiyi girin: ");
  //int sayi2 = int.parse(stdin.readLineSync()!);
  bool run = true;
  while(run){
    int islem = int.parse(stdin.readLineSync()!);
  bool result = true;
 
  if(result){
  switch (islem){
      case 1:

      print("Birinci sayiyi girin: ");
      int sayi1 = int.parse(stdin.readLineSync()!);
      print("İkinci sayiyi girin: ");
      int sayi2 = int.parse(stdin.readLineSync()!);
      int sonuc = siraliToplama(sayi1,sayi2);
      print("Toplam: $sonuc");
      menuGoster();
    break;

      case 2:

      print("Birinci sayiyi girin: ");
      int sayi1 = int.parse(stdin.readLineSync()!);
      print("İkinci sayiyi girin: ");
      int sayi2 = int.parse(stdin.readLineSync()!);
      int sonuc = requiredCikarma(sayi1: sayi1, sayi2:sayi2);
      print("Çikarma Sonucu: $sonuc");
      menuGoster();
      break; 

      case 3:

      print("Birinci sayiyi girin: ");
      int sayi1 = int.parse(stdin.readLineSync()!);
      print("İkinci sayiyi girin: ");
      int sayi2 = int.parse(stdin.readLineSync()!);
      print("Opsiyonel sayiyi girin (Varsayilan değer 1 olacaktir): ");
      String opsiyonelGirdi = stdin.readLineSync()!;
      int opsiyonelSayi = (opsiyonelGirdi.isNotEmpty) ? int.parse(opsiyonelGirdi) : 1;
      int sonuc = opsiyonelCarpma(sayi1, sayi2, opsiyonelSayi);
      print("Çarpma Sonucu: $sonuc");
      menuGoster();
      break;

      case 4:

      print("Birinci sayiyi girin: ");
      int sayi1 = int.parse(stdin.readLineSync()!);
      print("İkinci sayiyi girin: ");
      int sayi2 = int.parse(stdin.readLineSync()!);
      double sonuc = bolme(sayi1 , sayi2);
      print("Çikarma Sonucu: $sonuc");
      menuGoster();
      break;

    default:
    print("Program bitiriliyor");
    run = false;
    break;
    }
  }
  }
  
  
  
}