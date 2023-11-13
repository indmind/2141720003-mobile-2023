# Laporan Praktikum

<table>
  <tr>
    <th>Nama</th>
    <td>Tio Misbaqul Irawan</td>
  </tr>
  <tr>
    <th>NIM</th>
    <td>2141720003</td>
  </tr>
  <tr>
    <th>Proyek</th>
    <td>Mobile</td>
  </tr>
</table>

## Praktikum 1

### Soal 1
Tambahkan nama panggilan Anda pada title app sebagai identitas hasil pekerjaan Anda.

```dart
appBar: AppBar(
        title: const Text('Back from the Future Tio'),
      ),
```

### Soal 2
Carilah judul buku favorit Anda di Google Books, lalu ganti ID buku pada variabel path di kode tersebut. Caranya ambil di URL browser Anda seperti gambar berikut ini.
 
Kemudian cobalah akses di browser URI tersebut dengan lengkap seperti ini. Jika menampilkan data JSON, maka Anda telah berhasil. Lakukan capture milik Anda dan tulis di README pada laporan praktikum. Lalu lakukan commit dengan pesan "W12: Soal 2".

```dart
Future<Response> getData() async {
  const authority = 'www.googleapis.com';
  const path = '/books/v1/volumes/LDVAEAAAQBAJ';
  Uri url = Uri.https(authority, path);
  return await http.get(url);
}
```

### Soal 3
Jelaskan maksud kode langkah 5 tersebut terkait substring dan catchError!
Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W12: Soal 3".

`substring(0, 450)` berfungsi untuk mengambil karakter dari index ke 0 sampai ke index ke 449. `catchError` berfungsi untuk menangkap error yang terjadi pada future yang dijalankan.

![Soal 3](docs/s3.gif)

## Praktikum 2

### Soal 4
Jelaskan maksud kode langkah 1 dan 2 tersebut!
Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W12: Soal 4".

Kode tersebut berfungsi untuk mendefinisikan fungsi yang akan dijalankan secara asynchronous. `returnOneAsync` akan mengembalikan nilai 1 setelah 3 detik, `returnTwoAsync` akan mengembalikan nilai 2 setelah 3 detik, dan `returnThreeAsync` akan mengembalikan nilai 3 setelah 3 detik.

Sedangkan `count()` berfungsi untuk menjumlahkan nilai yang dikembalikan oleh fungsi `returnOneAsync`, `returnTwoAsync`, dan `returnThreeAsync` dan mengubah nilai dari variabel `result` menjadi hasil penjumlahan tersebut.

![Soal 4](docs/s4.gif)