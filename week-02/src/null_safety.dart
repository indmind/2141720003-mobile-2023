import 'dart:math';

void main() {
  // null safety
  // berfungsi untuk menghindari error karena nilai null pada sebuah variable
  // dengan null safety, kita dapat menentukan apakah sebuah variable boleh null atau tidak
  // contoh:
  String? name = null; // boleh null
  String address = ""; // tidak boleh null

  // jika kita mengakses variable yang boleh null, maka kita harus melakukan null check
  // salah satu cara untuk melakukan null check adalah dengan menggunakan operator ?.
  // contoh:
  print(name?.length); // null
  print(address.length); // 19

  // cara lain adalah menggunakan if
  if (name != null) {
    print(name.length);
  }

  // jika kita ingin mengubah variable yang boleh null menjadi tidak boleh null
  // terdapat 2 cara, yaitu dengan menggunakan operator ! atau memberi nilai default
  // contoh:
  String name2 = name!; // akan error jika name bernilai null
  String name3 = name ??
      'John Doe'; // jika name bernilai null, maka name3 akan bernilai 'John Doe'

  // late keyword
  // late keyword digunakan untuk mendeklarasikan variable non-null yang akan diinisialisasi
  // nanti, tidak saat deklarasi
  // contoh:
  // di bawah

  // late keyoword juga bersifat lazy, artinya variable tersebut tidak akan diinisialisasi
  // jika tidak digunakan
  // contoh:
  String provideName() {
    print('provideName() called');
    return 'John Doe';
  }

  print('Start');
  late String name5 = provideName();
  print('Done');
  print(name5);

  // output:
  // Start
  // Done
  // provideName() called
  // John Doe
}

class Mahasiswa {
  late String nama;

  Mahasiswa() {
    nama = 'Mhs ${Random().nextInt(10)}';
  }

  void sapa() {
    print("Halo $nama");
  }
}
