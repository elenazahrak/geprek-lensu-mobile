Nama    : Elena Zahra Kurniawan

NPM     : 2206824060

Kelas   : PBP F

<details>
<summary>Tugas 7</summary>
<br>
   
**1. Apa perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter?**

Perbedaan utama antara _stateless_ dan _stateful widget_ terletak pada cara mereka mengelola dan merespons perubahan data dalam aplikasi. Data dari _stateless widget_ memiliki sifat _immutable_ atau tidak akan pernah berubah. Widget ini di-_build_ hanya dengan konfigurasi yang telah diinisiasi sejak awal. Jenis ini umumnya digunakan untuk menampilkan tampilan yang tidak berubah dan hanya bergantung pada input yang diberikan saat dibuat. Oleh karena sifatnya yang tidak perlu merespons perubahan data, maka _stateless widget_ menjadi lebih efisien dalam hal kinerjanya dibandingkan dengan _stateful widget_.

Berbeda dengan _stateless widget_, _stateful widget_ memiliki sifat _mutable_ sehingga datanya dapat berubah secara dinamis selama siklus hidup widget. _Stateful widget_ digunakan ketika kita perlu untuk mengelola dan merespons perubahan data. Jenis ini memiliki dua bagian utama, di antaranya ada widget itu sendiri dan objek state terkait. State akan mengelola status dan memungkinkan adanya perubahan status selama widget masih ada. Saat statusnya berubah, _stateful widget_+ akan membangun ulang tampilannya untuk mencerminkan perubahan tersebut.

**2. Sebutkan seluruh widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.**

`MyApp`: sebagai widget utama yang mewakili aplikasi Geprek Lensu. Widget ini digunakan untuk mengatur tema dan berisi halaman utama yang ditampilkan saat aplikasi dimulai.

`MaterialApp`: Widget ini digunakan untuk mengatur berbagai atribut dan konfigurasi aplikasi, seperti judul dan tema. Widget ini juga digunakan untuk mengatur tema aplikasi dan menghubungkan ke halaman utama (`MyHomePage`).

`MyHomePage`: Widget ini merupakan widget yang mewakili halaman utama aplikasi Geprek Lensu. Widget ini memuat AppBar dan daftar item toko.

`Scaffold`: Widget ini merupakan widget yang menyediakan kerangka kerja untuk halaman dengan AppBar, body, dan lainnya. Widget ini mengatur AppBar dan tampilan utama aplikasi.

`AppBar`: Widget ini merupakan widget yang menampilkan bilah atas pada halaman. Widget ini berisi judul aplikasi dan mengatur latar belakangnya.

`Text`: Widget ini digunakan untuk menampilkan teks di dalam AppBar.

`SingleChildScrollView`: Widget ini merupakan widget yang memungkinkan kontennya discroll jika melebihi layar. Widget ini membungkus konten utama aplikasi.

`Padding`: Widget ini digunakan untuk memberikan jarak antara konten anak-anaknya.

`Column`: Widget ini merupakan widget yang menyusun anak-anaknya secara vertikal.

`GridView.count`: Widget ini merupakan widget yang digunakan untuk menampilkan daftar item dalam bentuk grid. Widget ini memiliki sejumlah konfigurasi, seperti jumlah kolom dan item.

`ShopCard`: Widget ini merupakan widget kustom yang digunakan untuk menampilkan setiap item toko dalam bentuk kartu. Widget ini menerima objek `ShopItem` sebagai argumen.

`Material`: Widget ini merupakan widget dasar yang digunakan untuk mengatur warna latar belakang kartu.

`InkWell`: Widget ini merupakan widget yang digunakan untuk memberikan respons saat ditekan ke area anak-anaknya. Widget ini digunakan untuk membuat item toko dapat diklik.

`Icon`: Widget ini digunakan untuk menampilkan ikon yang sesuai dengan setiap item toko.

`Text`: Widget ini digunakan untuk menampilkan teks yang sesuai dengan setiap item toko.

`SnackBar`: Widget ini merupakan widget yang digunakan untuk menampilkan pesan singkat di bagian bawah layar saat item toko diklik. Widget ini digunakan dalam metode `onTap` dari `InkWell`.

**3. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial)**

- [x] Membuat sebuah program Flutter baru dengan tema inventory seperti tugas-tugas sebelumnya.

Sebelum membuat sebuah program flutter baru, saya melakukan instalasi flutter dan visual studio code terlebih dahulu. Saya juga menginstall ekstensi Dart dan Flutter pada visual studio code saya. Setelah itu, saya masuk ke direktori tempat saya ingin membuat program flutter baru. Pada direktori tersebut, saya membuka command prompt dan memasukkan perintah `flutter create geprek_lensu` dan `cd geprek_lensu` untuk membuat sebuah program flutter baru dengan tema inventory. Untuk menjalankan proyek, saya memasukkan perintah `flutter run` dan memasukkan angka 2 pada command prompt yang menandakan bahwa proyek flutter saya akan dijalankan pada Google Chrome. Saya juga memasukkan perintah `flutter config –enable-web` untuk _enable web support_.

- [x] Membuat tiga tombol sederhana dengan ikon dan teks untuk:
   - [x] Melihat daftar item (Lihat Item)
   - [x] Menambah item (Tambah Item)
   - [x] Logout (Logout)

Pada widget `MyHomePage`, terdapat beberapa bagian yang menyusunnya. Pertama, terdapat `Scaffold` sebagai kerangka dasar dari halaman yang berisi App Bar di bagian atas dan konten utama di bawahnya. Selanjutnya, terdapat `body` sebagai konten utama dari halaman. Selain itu, terdapat pula `GridView` yang menampilkan grid sejumlah `ShopCard`. Setiap `ShopCard` menampilkan ikon dan berbagai fitur yang terdapat pada menu aplikasi. Untuk menambahkan tombol `Lihat Item`, saya menambahkan kode `ShopItem("Lihat Item", Icons.checklist),` Nantinya, pengguna dapat melihat daftar item yang tersedia pada toko melalui tombol ini. Hal yang sama berlaku untuk kedua tombol lainnya, yaitu tombol `Tambah Item` dengan kode `ShopItem("Tambah Item", Icons.add_shopping_cart),` dan tombol `Logout` dengan kode `ShopItem("Logout", Icons.logout),`. Nantinya, pengguna juga dapat menambahkan item ke dalam toko dan keluar dari aplikasi. 

- [x] Memunculkan Snackbar dengan tulisan:
   - [x] "Kamu telah menekan tombol Lihat Item" ketika tombol Lihat Item ditekan.
   - [x] "Kamu telah menekan tombol Tambah Item" ketika tombol Tambah Item ditekan.
   - [x] "Kamu telah menekan tombol Logout" ketika tombol Logout ditekan.

Widget `ShopCard` merupakan widget yang digunakan untuk merepresentasikan setiap fitur dalam bentuk kartu. Kartu ini memiliki latar belakang merah yang diatur dengan kode ` color: Colors.red` . Selain itu, pada bagian `InkWell`, saya juga membuat area yang responsif terhadap sentuhan sehingga SnackBar akan ditampilkan saat kartu atau tombol ini ditekan. SnackBar ini akan memberi tahu pengguna bahwa mereka telah menekan tombol yang sesuai.

Berikut ini adalah kode yang digunakan dalam pembuatan SnackBar.
```
ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(
                content: Text("Kamu telah menekan tombol ${item.name}!")));
```

- [x] Melakukan add-commit-push ke GitHub.
Terakhir, saya melakukan add, commit, dan push ke GitHub dengan perintah:
```
git add .
git commit -m "<pesan_commit>"
git push -u origin <branch_utama>
```
</details>
