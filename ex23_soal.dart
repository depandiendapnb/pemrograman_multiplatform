abstract class BangunDatar {
  late String warna;

  BangunDatar([String? warna]) {
    if (warna == null) {
      this.warna = 'putih';
    } else {
      this.warna = warna;
    }
  }

  double luas() {
    print("Method luas() superclass dipanggil");
    return 0;
  }

  double keliling() {
    print("Method keliling() superclass dipanggil");
    return 0;
  }
}

class Persegi extends BangunDatar {
  double sisi;

  Persegi(this.sisi);

  @override
  double keliling() {
    return 4 * sisi;
  }

  @override
  double luas() {
    return sisi * sisi;
  }
}

class PersegiPanjang extends BangunDatar {
  double panjang, lebar;

  PersegiPanjang(this.panjang, this.lebar);

  @override
  double keliling() {
    return 2 * (panjang + lebar);
  }

  @override
  double luas() {
    return panjang * lebar;
  }
}

void main(List<String> args) {
  Persegi persegi = Persegi(5);
  persegi.warna = 'merah';
  print(
      'Persegi berwarna ${persegi.warna} memiliki Luas : ${persegi.luas()} dan Keliling : ${persegi.keliling()}');
  BangunDatar persegiPanjang = PersegiPanjang(3, 2);
  print(
      'Persegi panjang berwarna ${persegiPanjang.warna} memiliki Luas : ${persegiPanjang.luas()} dan Keliling : ${persegiPanjang.keliling()}');
}
