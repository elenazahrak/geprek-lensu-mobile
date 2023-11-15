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

<details>
<summary>Tugas 8</summary>
<br>
   
**1. Jelaskan perbedaan antara `Navigator.push()` dan `Navigator.pushReplacement()`, disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!**
   
`Navigator.push()` dan `Navigator.pushReplacement()` merupakan metode pada Flutter yang digunakan untuk menangani routing/navigasi antar layar dalam aplikasi. Perbedaan utama antara `Navigator.push()` dan `Navigator.pushReplacement()` adalah `Navigator.push()` akan menambahkan layar baru ke tumpukan navigasi, sementara `Navigator.pushReplacement()` menggantikan layar sebelumnya dengan layar baru dalam tumpukan. Berikut ini adalah contoh implementasi kedua metode tersebut.

```
// Contoh Implementasi dari Navigator.push()
...
    if (item.name == "Tambah Produk") {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const ShopFormPage()));
    }
...

```

Metode ini akan menambahkan layar baru (atau bisa disebut juga dengan SecondScreen) ke tumpukan navigasi ketika pengguna menekan tombolnya. 


```
// Contoh implementasi dari Navigator.pushReplacement()
...
    onTap: () {
        Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => MyHomePage(),
        ));
    },
...
```

Metode ini akan menambahkan layar baru (atau bisa disebut sebagai ThirdScreen) ke tumpukan navigasi dan menggantikan layar sebelumnya dalam tumpukan ketika pengguna menekan tombol.

**2. Jelaskan masing-masing layout widget pada Flutter dan konteks penggunaannya masing-masing!**
   
`Container`: widget layout yang dapat mengandung widget lainnya, serta menyediakan sejumlah properti seperti margin, padding, dan dekorasi visual. `Container` digunakan ketika mengelompokkan widget, memberikan padding, atau memberikan dekorasi visual pada interface pengguna.

`Row` dan `Column`: widget layout linier yang mengatur widget secara horizontal yaitu menggunakan `Row`, atau vertikal yaitu menggunakan `Column`. `Row` dan `Column` digunakan ketika kita ingin menyusun widget secara berurutan, misalnya menyusun tombol atau teks secara horizontal atau vertikal.

`ListView` dan `GridView`: widget layout yang menyusun widget secara berurutan atau dalam bentuk grid. `ListView` digunakan ketika kita ingin menampilkan daftar item secara berurutan, sedangkan `GridView` digunakan jika kita ingin menampilkan daftar item dalam bentuk grid.

`Stack`: widget layout yang menumpuk widget di atas yang lainnya. `Stack` akan menempatkan widget di atas widget lain, misalnya ketika kita ingin menampilkan gambar latar belakang dan menempatkan tombol tindakan di bagian atas gambar tersebut.

`Expanded` dan `Flexible`: widget layout yang digunakan untuk mengatur proporsi ruang yang ditempati oleh widget dalam container yang memuatnya. Widget layout ini digunakan ketika kita ingin membagi ruang secara proporsional di antara widget dalam `Row`, `Column`, atau `Flex`.

`Wrap`: widget layout yang memungkinkan widget untuk melompat ke baris atau kolom berikutnya jika ruangnya tidak cukup. `Wrap` digunakan ketika kita ingin menyusun widget dalam baris atau kolom, lalu ruangnya tidak cukup, sehingga widget akan melompat ke baris atau kolom berikutnya.

`SizedBox`: widget layout yang memberikan dimensi tetap pada widget yang ditempatinya. `SizedBox` ini menyediakan ruang kosong dengan dimensi tertentu atau membatasi ukuran widget.

`Card`: widget layout yang memberikan layout dasar untuk menampilkan informasi dalam bentuk kartu. `Card` digunakan ketika kita ingin menampilkan informasi, misalnya gambar dan juga teks, dalam bentuk kartu.

`Align`: widget layout yang menempatkan child widget di dalamnya ke posisi yang telah ditentukan. `Align` akan menempatkan widgetnya di posisi yang spesifik.

**3. Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!**
   
Elemen input pertama pada form adalah nama (_name_). Saya menggunakannya untuk mengambil input nama item dari pengguna dan memberikan _feedback_ atau peringatan jika pengguna berusaha untuk melakukan _submit_ input kosong. Berikut ini adalah kodenya.

```
child: TextFormField(
  decoration: InputDecoration(
    hintText: "Name",
    labelText: "Name",
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(5.0),
    ),
  ),
  onChanged: (String? value) {
    setState(() {
      _name = value!;
    });
  },
  validator: (String? value) {
    if (value == null || value.isEmpty) {
      return "Nama tidak boleh kosong!";
    }
    return null;
  },
),

```

Elemen input kedua pada form adalah jumlah (_amount_). Saya menggunakannya untuk mengambil input jumlah item dari pengguna dan memberikan _feedback_ atau peringatan jika pengguna berusaha untuk melakukan _submit_ input kosong atau tidak berupa angka. Berikut ini adalah kodenya.

```
child: TextFormField(
  decoration: InputDecoration(
    hintText: "Amount",
    labelText: "Amount",
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(5.0),
    ),
  ),
  onChanged: (String? value) {
    setState(() {
      _amount = int.parse(value!);
    });
  },
  validator: (String? value) {
    if (value == null || value.isEmpty) {
      return "Jumlah tidak boleh kosong!";
    }
    if (int.tryParse(value) == null) {
      return "Jumlah harus berupa angka!";
    }
    return null;
  },
),

```

Elemen input ketiga pada form adalah deskripsi (_description_). Saya menggunakannya untuk mengambil input deskripsi item dari pengguna dan memberikan _feedback_ atau peringatan jika pengguna berusaha untuk melakukan _submit_ input kosong. Berikut ini adalah kodenya.

```
child: TextFormField(
   decoration: InputDecoration(
    hintText: "Description",
    labelText: "Description",
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(5.0),
    ),
   ),
   onChanged: (String? value) {
    setState(() {
      _description = value!;
    });
   },
   validator: (String? value) {
    if (value == null || value.isEmpty) {
      return "Deskripsi tidak boleh kosong!";
    }
    return null;
   },
   ),

```

**4. Bagaimana penerapan clean architecture pada aplikasi Flutter?**

_Clean Architecture_ merupakan sebuah pendekatan dalam pengembangan perangkat lunak yang bertujuan untuk memisahkan komponen inti aplikasi, mempromosikan prinsip desain yang baik, serta meningkatkan pemeliharaan dan juga pengujiannya. Pada aplikasi Flutter, _Clean Architecture_ diterapkan dengan melibatkan struktur proyek yang terorganisir dengan baik serta pemisahan tanggung jawab antara lapisan-lapisan utamanya. Terdapat beberapa komponen utama dari _Clean Architecture_, di antaranya Entity, Use Case Interactors (Use Cases), Repository, Framework, Interface Adapters, serta Controllers dan Presenters. Dengan demikian, terdapat pemisahan yang jelas antara logika aplikasi, aturan bisnis, dan juga presentasi dari segi UI. 

Pada Flutter, Entity berarti sebuah representasi dari objek bisnis atau data dalam aplikasi. Entity ini diterapkan pada flutter dengan mengimplementasikannya sebagai class Plain Old Dart Object (PODO) yang independen dari framework Flutter. Selanjutnya, terdapat Use Case Interactors yang mewakili aturan bisnis dan fungsionalitas inti dalam aplikasi. Hal ini dapat diimplementasikan sebagai class Dart yang nantinya akan mengambil data dari repository dan menerapkannya pada aturan bisnis. Kemudian, terdapat Repository yang berperan sebagai abstraksi dari sumber data, misalnya API, local storage, atau API. Repository ini dapat diimplementasikan sebagai class Dart yang berkomunikasi dengan sumber data serta menyediakan API untuk Use Cases. Selanjutnya, terdapat framework yang berarti lapisan penghubung yang menghubungkan aplikasi dengan kerangka kerja atau perangkat keras tertentu. Pada flutter, widget dan komponen UI hanya bertanggung jawab untuk menampilkan data serta menerima input, sehingga tidak mengandung logika bisnis. Berikutnya, terdapat Interface Adapters yang akan melakukan konversi data dari format yang cocok untuk Uses Cases dan Entities ke format yang sesuai untuk Framework dan juga Tools. Interface Adapters dapat diimplementasikan sebagai class yang menghubungkan UI dengan Uses Cases serta melakukan konversi data antara keduanya. Terakhir, yaitu Controllers dan Presenters, merupakan bagian yang akan mengatur, melakukan proses input, serta menangani interaksi yang terjadi antara UI dengan Uses Cases. Ini dapat diimplementasikan sebagai bagian dari StatefulWidget.

**5. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial)**

- [x] Membuat minimal satu halaman baru pada aplikasi, yaitu halaman formulir tambah item baru dengan ketentuan sebagai berikut:
   - [x]  Memakai minimal tiga elemen input, yaitu `name`, `amount`, `description`. Tambahkan elemen input sesuai dengan model pada aplikasi tugas Django yang telah kamu buat.

Pada bagian ini, saya membuat sebuah berkas baru bernama `gepreklensu_form.dart` pada direktori lib, lalu saya menambahkan kode awal sebagai struktur dasar dari formulirnya. Selanjutnya, saya akan menggantikan `placeholder` dengan kode yang sesuai untuk menampilkan formulirnya, misalnya text, background color, drawer yang sudah dibuat dengan kode `drawer: const LeftDrawer(),`, serta widget SingleChildScrollView untuk membuat child widget di dalamnya menjadi scrollable. Kemudian, saya menambahkan beberapa elemen input ke dalam formulir, misalnya mendefinisikan variabel `_formKey` sebagai handler untuk state, validasi, dan penyimpanan formulirnya, lalu variabel `_name`, `_amount`, dan `_desription` untuk menyimpan input dari masing-masing fieldnya. Saya juga menambahkan atribut `crossAxisAlignment` untuk mengatur allignment Children dari `Column`. Selanjutnya, saya mengisi formulir dengan elemen-elemen input dengan menggunakan widget `TextFormField` untuk membuat input field dengan dekorasi khusus, misalnya placeholder dan juga label. Setiap input field akan memiliki _callback_ `onChanged` untuk melakukan update nilai variabel setiap kali terjadi perubahan pada field tersebut.

   - [x]  Memiliki sebuah tombol `Save`.

Pada bagian ini, saya menambahkan tombol `Save` pada bagian terakhir dari formulir menggunakan `ElevatedButton` sehingga tombol dapat ditampilkan dengan menarik. Tombol ini saya buat dengan menggunakan warna merah sebagai warna latar dan warna putih sebagai warna tulisan, serta dibungkus ke dalam widget `Padding` dan `Align`.

   - [x] Setiap elemen input di formulir juga harus divalidasi dengan ketentuan sebagai berikut:
      - [x] Setiap elemen input tidak boleh kosong.
      - [x] Setiap elemen input harus berisi data dengan tipe data atribut modelnya.

Untuk melakukan validasi, saya menggunakan callback `Validator` untuk memastikan bahwa input tidak kosong dan sesuai dengan tipe datanya. Saya menggunakan `validator: (String? value)` sebagai fungsi yang akan menerima nilai dari input _field_ sebagai parameter dan mengembalikan pesan kesalahan jika validasinya gagal. Lalu akan diperiksa apakah `value` adalah null dengan potongan kode `if (value == null || value.isEmpty) { return "Harga tidak boleh kosong!"; }` atau `value` adalah tipe data lain yang tidak sesuai dengan yang diminta dengan potongan kode `if (int.tryParse(value) == null) { return "Harga harus berupa angka!"; `. Jika pemeriksaan berhasil, maka fungsi akan mengembalikan nilai `null` yang berarti input telah lolos validasi.

- [x] Mengarahkan pengguna ke halaman form tambah item baru ketika menekan tombol Tambah Item pada halaman utama.

Pada bagian ini, saya akan melakukan penambahan fitur navigasi pada tombol yang telah dibuat sebelumnya. Pertama-tama, pada widget `ShopItem` yang terdapat dalam berkas `menu.dart`, saya menambahkan kode pada atribut `onTap` dan `InkWell`. Sebelumnya, saya telah menampilkan snackbar ketika tombol ditekan. Sekarang, saya menambahkan navigasi ke halaman yang sesuai. Saya menggunakan `Navigator.push()` untuk menginisiasi navigasi ke halaman baru dan menggunakan `MaterialPageRoute()` yang mencakup halaman `ShopFormPage`. Berikut ini adalah kodenya.

```
// Navigate ke route yang sesuai (tergantung jenis tombol)
            if (item.name == "Tambah Item") {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ShopFormPage()),
              );
            }

```

- [x] Memunculkan data sesuai isi dari formulir yang diisi dalam sebuah `pop-up` setelah menekan tombol `Save` pada halaman formulir tambah item baru.

Pada bagian ini, saya fokus pada penambahan fungsionalitas pada tombol `Save` pada form yang telah dibuat sebelumnya. Pada bagian `onPressed()`, saya menambahkan fungsi untuk memunculkan sebuah dialog menggunakan `showDialog()`, di mana dialog ini akan memberikan _feedback_ kepada pengguna bahwa item telah berhasil tersimpan dan memunculkan informasi item yang telah dimasukkan oleh pengguna, seperti nama, jumlah, dan deskripsi. Saya juga telah memastikan bahwa form telah divalidasi dengan potongan kode `if(_formKey.currentState!.validate())`. Terdapat pula potongan kode `_formKey.currentState!.reset()` untuk memastikan bahwa formulir akan dikosongkan setelah pengguna berhasil menyimpan item dan melihat dialog. Berikut ini adalah kodenya.

```
onPressed: () {
   if (_formKey.currentState!.validate()) {
     showDialog(
       context: context,
       builder: (context) {
         return AlertDialog(
           title: const Text('Item berhasil tersimpan'),
           content: SingleChildScrollView(
             child: Column(
               crossAxisAlignment:
                   CrossAxisAlignment.start,
               children: [
                 Text('Name: $_name'),
                 Text('Amount: $_amount'),
                 Text('Description: $_description'),
               ],
             ),
           ),
           actions: [
             TextButton(
               child: const Text('OK'),
               onPressed: () {
                 Navigator.pop(context);
               },
             ),
           ],
         );
       },
     );
     _formKey.currentState!.reset();
   }
 },
```

- [x] Membuat sebuah drawer pada aplikasi dengan ketentuan sebagai berikut:
   - [x]  Drawer minimal memiliki dua buah opsi, yaitu `Halaman Utama` dan `Tambah Item`.
   - [x]  Ketika memiih opsi `Halaman Utama`, maka aplikasi akan mengarahkan pengguna ke halaman utama.
   - [x]  Ketika memiih opsi `Tambah Item`, maka aplikasi akan mengarahkan pengguna ke halaman form tambah item baru.

Pada bagian ini, saya menambahkan fitur drawer menu yang akan memunculkan menu pada sisi kiri aplikasi dan berisikan beberapa pilihan navigasi ke halaman lainnya. Pertama-tama, saya membuat berkas baru bernama `left_drawer.dart` dan mengimpor halaman-halaman yang ingin ditambahkan ke drawer menu, seperti `import 'package:geprek_lensu/screens/menu.dart';` dan `import 'package:geprek_lensu/screens/gepreklensu_form.dart';`. Selanjutnya, saya melakukan routing untuk halaman `MyHomePage` dengan kode berikut ini. Hal yang sama saya lakukan untuk routing ke halaman `ShopFormPage`.

```
Navigator.pushReplacement(
  context,
  MaterialPageRoute(
    builder: (context) => MyHomePage(),
  ));
```

Setelah menghiasi tampilan drawer header sesuai tampilan yang saya inginkan, saya memasukkan drawer menu yang telah dibuat ke halaman `menu.dart`. Saya menambahkan drawer ke dalam widget `Scaffold` dengan kode `drawer: const LeftDrawer(),`.

- [x] Melakukan add-commit-push ke GitHub.
Terakhir, saya melakukan add, commit, dan push ke GitHub dengan perintah:
```
git add .
git commit -m "<pesan_commit>"
git push -u origin <branch_utama>
```
</details>
