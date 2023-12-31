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

<details>
<summary>Tugas 9</summary>
<br>

**1. Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?**

Ya, kita dapat melakukan pengambilan data JSON tanpa membuat model terlebih dahulu dengan mengakses dan membaca struktur data JSON. Hal ini dilakukan dengan mengekstrak beberapa struktur data sederhana dari format JSON. Cara ini dinilai lebih sederhana dan cepat. Akan tetapi, jika kita memiliki data JSON yang lebih kompleks dengan jenis data yang bervariasi, pembuatan model dapat lebih membantu kita dalam pengelolaan data sehingga lebih terstruktur.

**2. Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.**

Secara umum, cookie merupakan sebuah mekanisme penyimpanan yang digunakan oleh server untuk menyimpan informasi pada client-side. Hal yang biasanya disimpan oleh cookie misalnya adalah informasi otentikasi dan juga data sesi. CookieRequest digunakan untuk mengelola informasi dan juga merepresentasikan cookie dalam aplikasi Flutter yang berkomunikasi dengan server melalui protokol HTTP. Dengan membagikan instance CookieRequest ke semua komponen di aplikasi flutter, kita dapat menghindari konflik terkait cara setiap komponen dalam menangani cookies. Hal ini berguna untuk memastikan konsistensi dari sesi pengguna dan otentikasi. Kita juga dapat menghindari penggunaan sumber daya yang berlebih akibat pembuatan instance yang berlebihan.

**3. Jelaskan mekanisme pengambilan data dari JSON hingga dapat ditampilkan pada Flutter.**

Pengambilan dan penampilan data dari JSON ke dalam aplikasi Flutter dapat dilakukan dengan mengikuti panduan di bawah ini:

1. Menambahkan dependensi http ke proyek untuk bertukar HTTP request
2. Membuat model sesuai dengan respons dari data yang berasal dari web service tersebut
3. Membuat http request ke web service menggunakan dependensi http
4. Melakukan konversi objek yang didapatkan dari web service ke model yang telah dibuat sebelumnya
5. Menampilkan data yang sudah dikonversi ke aplikasi dengan FutureBuilder.
   
**4. Jelaskan mekanisme autentikasi dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.**

Pertama-tama, dari sisi Django, kita dapat membuat proses autentikasi dengan membuat django-app bernama “authentication”, menambahkannya ke INSTALLED_APPS, menginstal library yang dibutuhkan, dan menambahkan beberapa konfigurasi di settings.py. Penggunaan package “pbp_django_auth” digunakan untuk memfasilitasi komunikasi antara aplikasi Flutter dengan Django. Setelah itu, pengguna di Flutter akan memasukkan informasi login, misalnya username dan password. Informasi ini akan dikirim ke Django melalui permintaan HTTP. Agar Django dapat memproses informasi ini, kita perlu membuat kode pada views.py untuk bagian proses login dan mengatur URL routing.Setelah proses autentikasi berhasil, Django akan mengirim respons ke Flutter yang berisi informasi status login, lalu Flutter akan melakukan navigasi ke halaman menu menggunakan widget Navigator. Terakhir, kita dapat mengakses data otentikasi dan menggunakannya dengan membagikan instance “CookieRequest”.

**5. Sebutkan seluruh widget yang kamu pakai pada tugas ini dan jelaskan fungsinya masing-masing.**

`MaterialApp`: widget root dari widget-tree Flutter dan menyediakan beberapa konfigurasi untuk aplikasi

`Scaffold`: widget yang menyediakan struktur dasar untuk aplikasi

`AppBar`: widget yang menampilkan app bar yang berisi judul aplikasi atau halaman

`Drawer`: widget yang menampilkan menu navigasi yang dapat diakses dengan menggeser dari kiri ke kanan

`Form`: widget yang menyimpan formulir Flutter dan menyediakan metode untuk memvalidasi, menyimpan, serta mereset aplikasi

`TextFormField`: widget untuk membuat input field sehingga pengguna dapat memasukkan teks

`EvelatedButton`: widget untuk membuat tombol dengan efek “terang” saat ditekan

`FutureBuilder`: widget yang menggunakan nilai yang dihasilkan oleh `Future` untuk membangun UI-nya

`TextField`: widget untuk membuat kotak teks tempat pengguna dapat memasukkan input

`AlertDialog`: widget untuk menampilkan dialog dengan judul dan konten tertentu

`Consumer` dan `Provider`: widget untuk mengonsumsi dan menyediakan objek untuk `CookieRequest`

`Key` (GlobalKey<FormState>): widget untuk mengidentifikasi suatu widget di antara widget lainnya

`LeftDrawer`: widget untuk mendefinisikan drawer di bagian kiri halaman

`SingleChildScrollView`: widget yang digunakan sehingga halaman dapat di-scroll

`Row` dan `Column`: widget layout linier yang mengatur widget secara horizontal yaitu menggunakan `Row`, atau vertikal yaitu menggunakan `Column`. `Row` dan `Column` digunakan ketika kita ingin menyusun widget secara berurutan, misalnya menyusun tombol atau teks secara horizontal atau vertikal.

`Padding`: widget yang memberikan jarak di sekitar widget

`Text`: widget yang menampilkan teks “PBP Shop”

`GridView.count`: widget yang menampilkan daftar item dalam grid

`ShopBar`: widget khusus yang digunakan untuk setiap item di gridnya
ListView` dan `GridView`: widget layout yang menyusun widget secara berurutan atau dalam bentuk grid. `ListView` digunakan ketika kita ingin menampilkan daftar item secara berurutan, sedangkan `GridView` digunakan jika kita ingin menampilkan daftar item dalam bentuk grid.

`DrawerHeader`: widget yang menampilkan bagian header dari drawer

`ListTile`: widget yang menampilkan setiap item di dalam daftar drawer

`Icon`: widget yang menampilkan ikon di sebelah kiri teks pada `ListTile`

`Navigator.pushReplacement`: widget yang digunakan untuk melakukan navigasi dan mengganti halaman utama

`Card`: widget layout yang memberikan layout dasar untuk menampilkan informasi dalam bentuk kartu. `Card` digunakan ketika kita ingin menampilkan informasi, misalnya gambar dan juga teks, dalam bentuk kartu.

`InkWell`: widget yang digunakan untuk menampilkan efek ‘splash’ dalam bentuk kartu

`SnackBar`: widget yang akan menampilkan pesan singkat di bagian bawah layar

`Navigator.push`: widget yang akan digunakan untuk melakukan navigasi ke halaman baru

`Container`: widget layout yang dapat mengandung widget lainnya, serta menyediakan sejumlah properti seperti margin, padding, dan dekorasi visual. `Container` digunakan ketika mengelompokkan widget, memberikan padding, atau memberikan dekorasi visual pada interface pengguna.

**6. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).**

- [x] Memastikan deployment proyek tugas Django kamu telah berjalan dengan baik.

Pada bagian ini, saya melakukan pengecekan pada tautan [http://elena-zahra-tugas.pbp.cs.ui.ac.id](http://elena-zahra-tugas.pbp.cs.ui.ac.id)

- [x] Membuat halaman login pada proyek tugas Flutter.
- [x] Mengintegrasikan sistem autentikasi Django dengan proyek tugas Flutter.

Untuk menjawab pertanyaan bagian b dan c, pertama-tama saya menginstal package yang telah disediakan oleh tim asisten dosen dengan perintah `flutter pub add pbp_django_auth`, lalu saya memodifikasi root widget dalam proyek Flutter untuk menyediakan library `CookieRequest` ke semua child wdgetsnya dengan menggunakan `Provider`. Selanjutnya, saya membuat halaman login dengan membuat berkas baru bernama `login.dart` pada folder `screens`. Berkas ini diisi dengan kode yang umumnya digunakan untuk halaman login, misalnya meminta pengguna memasukkan user dan password, serta tombol yang dapat diklik oleh pengguna. Setelah itu, aplikasi Flutter telah berhasil diintegrasikan dengan sistem autentikasi Django dan pengguna dapat melakukan login.

- [x] Membuat model kustom sesuai dengan proyek aplikasi Django.

Pada bagian ini, saya menggunakan website bernama Quicktype untuk mempermudah proses pembuatan model kustom sesuai dengan data JSON pada proyek aplikasi Django saya. Pertama-tama, saya membuka endpoint JSON yang pernah saya buat sebelumnya lalu mengunjungi website Quicktype untuk melakukan konversi. Setelah mengubah pengaturan dengan menetapkan nama model sebagai “Product”, source type sebagai “JSON”, dan language sebagai “Dart”, saya menampilkan data JSON yang telah disalin sebelumnya ke dalam textbox yang ada pada website tersebut dan menyalin kode model yang telah dihasilkan. Data ini saya masukkan ke dalam sebuah berkas baru bernama `product.dart` yang saya buat dalam folder baru yang bernama `models`.

- [x] Membuat halaman yang berisi daftar semua item yang terdapat pada endpoint JSON di Django yang telah kamu deploy.
   - [x] Tampilkan name, amount, dan description dari masing-masing item pada halaman ini.
  
Pada bagian ini, pertama-tama saya menambahkan dependensi HTTP pada proyek Flutter dengan perintah `flutter pub add http` dan menambahkan izin akses internet pada berkas `android/app/src/main/AndroidManifest.xml`. Selanjutnya, saya membuat berkas barubernama `list_product.dart` pada folder `lib/screens`. Berkas ini saya isi dengan mendefinisikan class `ProductPage` sebagai StatefulWidget. Saya menggunakan `FutureBuilder` pada fungsi `build` untuk menampilkan daftat produk. Produk akan ditampilkan dengan menggunakan `ListView.builder` dengan informasi-informasi produk seperti nama, jumlah, dan deskripsi dari produk tersebut. Saya juga menambahkan halaman `ProductPage` ini ke dalam drawer dengan menambahkan ListTile dan mengubah fungsi tombol “Lihat Produk” supaya mengarah ke halaman `shop_card.dart`.

- [x] Membuat halaman detail untuk setiap item yang terdapat pada halaman daftar Item.
   - [x] Halaman ini dapat diakses dengan menekan salah satu item pada halaman daftar Item.
   - [x] Tampilkan seluruh atribut pada model item kamu pada halaman ini.
   - [x] Tambahkan tombol untuk kembali ke halaman daftar item.

Pada bagian ini, saya memanfaatkan fungsi `Navigator.push` untuk membuka halaman baru saat salah satu item diklik. Pada halaman ini, saya menampilkan seluruh atribut yang ada di model item, di antaranya nama, jumlah, dan deskripsi. Saya juga menambahkan tombol supaya dapat kembali ke halaman sebelumnya dengan perintah

```
ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Kembali ke halaman sebelumnya
              },
              child: Text('Kembali'),
            ),



</details>
