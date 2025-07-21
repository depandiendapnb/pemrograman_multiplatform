class Mobil {
  String merkMobil;
  static int jumlahMobil = 0;
  Mobil(this.merkMobil) {
    jumlahMobil++;
  }
  static void cetakJumlahMobilku() {
    print('Jumlah mobilku sekarang : $jumlahMobil');
  }
}

void cetakMobilku(List<Mobil> listMobil) {
  print('------------------------------');
  for (var mobil in listMobil) {
    print(mobil.merkMobil);
  }
}

void main(List<String> args) {
  List<Mobil> daftarMobilku = [];
  Mobil avanza = Mobil('Avanza');
  daftarMobilku.add(avanza);
  cetakMobilku(daftarMobilku);
  Mobil.cetakJumlahMobilku();
  Mobil xenia = Mobil('Xenia');
  daftarMobilku.add(xenia);
  cetakMobilku(daftarMobilku);
  Mobil.cetakJumlahMobilku();
  Mobil inova = Mobil('Inova');
  daftarMobilku.add(inova);
  cetakMobilku(daftarMobilku);
  Mobil.cetakJumlahMobilku();
  Mobil ayla = Mobil('Ayla');
  daftarMobilku.add(ayla);
  cetakMobilku(daftarMobilku);
  Mobil.cetakJumlahMobilku();
}
