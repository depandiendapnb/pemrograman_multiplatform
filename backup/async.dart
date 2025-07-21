void main() async {
  print('Memproses pesanan Anda...');
  try {
    var order = await prosesPesanan();
    print('Pesanan Anda: $order');
  } catch (error) {
    print('Maaf. $error');
  } finally {
    print('Terima Kasih');
  }
}

Future<String> prosesPesanan() {
  return Future.delayed(Duration(seconds: 3), () {
    var isStockAvailable = true;
    if (isStockAvailable) {
      return 'Pizza Yummy';
    } else {
      throw 'Stok kami tidak mencukupi.';
    }
  });
}
