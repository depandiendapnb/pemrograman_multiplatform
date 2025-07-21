void main() {
  ambilPesanan().then((value) {
    print('Pesanan Anda: $value');
  }).catchError((error) {
    print('Maaf. $error');
  }).whenComplete(() {
    print('Terima Kasih');
  });
  print('Memproses pesanan Anda...');
}

Future<String> ambilPesanan() {
  return Future.delayed(Duration(seconds: 3), () {
    var isStockAvailable = true;
    if (isStockAvailable) {
      return 'Pizza Yummy';
    } else {
      throw 'Stok kami tidak mencukupi.';
    }
  });
}
