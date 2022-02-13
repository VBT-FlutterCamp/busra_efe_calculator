import 'dart:io';

void main(List<String> args) {
  String baska = 'evet';
  do {
    print("Birinci Sayıyı Giriniz: ");
    int a = int.parse(stdin.readLineSync() ?? '');

    print("İkinci Sayıyı Giriniz: ");
    int b = int.parse(stdin.readLineSync() ?? '');

    print("İşlemi Seçiniz( + , - , * , / ) : ");
    String islem = stdin.readLineSync() ?? '';

    switch (islem) {
      case '+':
        topla(a, b);
        break;
      case '-':
        cikar(a, b);
        break;
      case '*':
        carp(a, b);
        break;
      case '/':
        bol(a, b);
        break;
      default:
        print("Geçersiz işlem...");
    }

    print("baska bir işlem yapmak ister misiniz?(evet/hayır) : ");
    baska = stdin.readLineSync() ?? '';
  } while (baska == 'evet');
}

void bol(int a, int b) {
  double bolum = a / b;
  print("Sonuç: $bolum");
}

void carp(int a, int b) {
  int carpim = a * b;
  print("Sonuç: $carpim");
}

void cikar(int a, int b) {
  int fark = a - b;
  print("Sonuç: $fark");
}

void topla(int a, int b) {
  int toplam = a + b;
  print("Sonuç: $toplam");
}
