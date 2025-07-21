import 'dart:io';

main(List<String> args) {
  List<String> days = [
    'Minggu',
    'Senin',
    'Selasa',
    'Rabu',
    'Kamis',
    'Jumat',
    'Sabtu'
  ];
  int? index;
  stdout.write('Masukkan indeks hari : ');
  index = int.parse(stdin.readLineSync()!);
  print('Hari ke-$index adalah ${days[index - 1]}');
  /* try {
    index = int.parse(stdin.readLineSync());
    print('Hari ke-$index adalah ${days[index - 1]}');
  } catch (exception, stackTrace) {
    print('SALAH: tidak ada hari ke-$index.');
    //print('Jenis eksepsi: $exception');
    //print('Stacktrace: $stackTrace');
  }*/
}
