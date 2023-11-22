# 🖼️ Shopping Art 🛒 🎨

`Dalam era digital ini 🏙️, seni sering diabaikan dan kurang dihargai 😢. shopping art sekarang sudah hadir dalam versi mobile 📱, agar  dapat menjangkau lebih luas dan memberikan seniman platform untuk memamerkan dan menjual karya mereka kepada audiens yang lebih beragam 🖼️, serta mengubah cara kita melihat dan menghargai seni dalam konteks digital 👨🏻‍🎨`

[![Build status](https://build.appcenter.ms/v0.1/apps/0a7ad71b-39b8-4466-8fe7-815698057db7/branches/main/badge)](https://appcenter.ms) 


# Tugas 7

### 1.Apa perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter?

|Aspek   | Stateless Widget | Stateful Widget   |
|---    |---    |---    |
|Definisi | Stateless Widget adalah widget yang tidak memiliki state internal. Mereka hanya mewakili tampilan yang bergantung pada input yang diberikan saat dibuat | Stateful Widget adalah widget yang memiliki state internal yang dapat berubah selama siklus hidup widget. Mereka dapat menyimpan data yang dapat diperbarui, seperti nilai-nilai yang berkaitan dengan interaksi pengguna
| Illustrasi | ![Stateless](https://user-images.githubusercontent.com/119391657/279764955-de6f0671-1706-4273-9b79-84b9c4a29d8d.png) | ![Statefull](https://user-images.githubusercontent.com/119391657/279764946-932b559a-0bec-4bec-a250-d9a541bbd463.png)|
|Kehidupan State | Tidak memiliki state internal | Memiliki state internal yang dapat berubah selama siklus hidup widget |
|Dapat diubah?	| Tidak dapat diubah setelah dibuat | Dapat diubah selama widget aktif |
|Rebuild saat data berubah?	| Selalu rebuild saat ada perubahan data luar yang memengaruhi widget tersebut | Hanya rebuild saat state internal berubah |
|Contoh Penggunaan	| Tampilan statis, seperti teks atau ikon | Interaksi pengguna, formulir, tampilan yang berubah, animasi |
|Metode createState()	| Tidak memiliki createState() karena tidak memiliki state | Memiliki createState() untuk membuat state dan menginisialisasi state |
|Perubahan state dengan setState()	| Tidak dapat menggunakan setState() karena tidak memiliki state.	| Menggunakan setState() untuk memperbarui state dan memicu rebuild |
|Performa	| Stateless widget cenderung lebih efisien dalam hal penggunaan sumber daya karena tidak memiliki state internal | Stateful widget dapat memerlukan lebih banyak sumber daya karena harus memantau dan merespons perubahan state |
|Kecepatan Pembangunan	| Stateless widget lebih cepat untuk diimplementasikan karena lebih sederhana | Stateful widget mungkin memerlukan lebih banyak kode dan waktu implementasi |
|Pengelolaan Keadaan (State Management)	| Tidak memerlukan pengelolaan state internal, cocok untuk kasus sederhana | Memerlukan pengelolaan state internal, yang bisa lebih kompleks dalam aplikasi besar.
|Pengujian (Testing) | Stateless widget lebih mudah diuji karena tidak memiliki state yang berubah | Stateful widget dapat lebih sulit diuji karena perlu memeriksa perubahan state |

<br>

### 2. Sebutkan seluruh widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.
|Widget   |  Fungsi |
|---    |---    |
|MyApp | Kelas yang mewakili aplikasi Flutter yang dijalankan. Ini adalah root dari aplikasi dan digunakan untuk mengatur tema dan halaman awal aplikasi |
|MaterialApp | Widget yang menyediakan fungsi dasar yang diperlukan untuk membangun aplikasi Flutter berbasis Material Design, termasuk mengatur tema dan halaman awal |
|MyHomePage	| Kelas yang mewakili halaman utama aplikasi. Ini berisi tata letak, seperti judul aplikasi, daftar item, dan tata letak grid. |
|Scaffold	| Widget yang menyediakan kerangka dasar untuk halaman dengan AppBar dan tata letak badan |
| AppBar	|  Bagian atas halaman yang berisi judul aplikasi dan tata letak |
| Text	|  Widget untuk menampilkan teks pada halaman dengan properti-properti seperti teks, warna, dan gaya |
| GridView	 |  Widget yang digunakan untuk menampilkan daftar item dalam tata letak grid. Ini digunakan untuk menampilkan daftar item dengan tampilan kotak-kotak yang disusun dalam baris dan kolom |
| ShopCard	| Widget khusus yang digunakan untuk menampilkan setiap item toko dalam kotak berisi ikon dan teks. Ini digunakan di dalam GridView untuk setiap item | 
| Material	| Widget ini digunakan untuk memberikan latar belakang berwarna yang berbeda untuk setiap ShopCard berdasarkan nama item. Ini juga berisi widget InkWell untuk membuat area responsif terhadap sentuhan |
| InkWell	| Widget ini digunakan untuk memberikan respons saat item ShopCard diklik |
| Container | Widget ini digunakan untuk mengelompokkan ikon dan teks dalam ShopCard dan memberikan padding di sekitarnya. |
| Icon	| Widget untuk menampilkan ikon pada halaman |
| Padding |  Widget untuk menambahkan ruang kosong atau jarak antara elemen-elemen dalam tata letak |
| ScaffoldMessenger	 |  Digunakan untuk menampilkan SnackBar saat item ShopCard diklik |
| SnackBar | Widget yang menampilkan pesan singkat ke pengguna setelah tindakan tertentu |

<br>

### 3.Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial)

- [x] Membuat sebuah program Flutter baru dengan tema inventory seperti tugas-tugas sebelumnya.
   
    Untuk menginstall aplikasi flutter baru gunakan command 
    ```flutter create <APP_NAME>```
    dengan appname diganti dengan shopping Art

    Setelah membuat aplikasi flutter, untuk menjalankannya gunakan 
    ```flutter run```

<br>

- [x]  Membuat tiga tombol sederhana dengan ikon dan teks untuk:

    Pertama tama import package yang dibutuhkan pada main dart
    ```
    import 'package:flutter/material.dart';
    import 'package:shopping_art/menu.dart';

    ```
    Selanjutnya split bagian main menjadi main dart dan menu dart. dengan memasukan konten berikut di menu.dart

    ```
    class MyHomePage ... {
    ...
    }

    class _MyHomePageState ... {
        ...
    }
    ```

    Setelah itu modifikasi class MyApp pada main.dart agar bisa tersambung dengan class my homepage dari menu.dart dengan kode sebagai berikut:

    ```
    class MyApp extends StatelessWidget {
    const MyApp({super.key});

    // This widget is the root of your application.
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            // This is the theme of your application.
            //
            // TRY THIS: Try running your application with "flutter run". You'll see
            // the application has a blue toolbar. Then, without quitting the app,
            // try changing the seedColor in the colorScheme below to Colors.green
            // and then invoke "hot reload" (save your changes or press the "hot
            // reload" button in a Flutter-supported IDE, or press "r" if you used
            // the command line to start the app).
            //
            // Notice that the counter didn't reset back to zero; the application
            // state is not lost during the reload. To reset the state, use hot
            // restart instead.
            //
            // This works for code too, not just values: Most code changes can be
            // tested with just a hot reload.
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
            useMaterial3: true,
        ),
        home: MyHomePage(),
        );
    }
    } 
    ```

    Setelah itu modifikasi myhomepage pada menu dart, dengan menambahkan list shop item seperti lihat produk, tambah produk, dan logout dengan code sebagai berikut:
    ``` 
    class MyHomePage extends StatelessWidget {
    MyHomePage({Key? key}) : super(key: key);

    final List<ShopItem> items = [
        ShopItem("Lihat Produk", Icons.checklist),
        ShopItem("Tambah Produk", Icons.add_shopping_cart),
        ShopItem("Logout", Icons.logout),
    ];

    @override
    Widget build(BuildContext context) {
        return Scaffold(
        appBar: AppBar(
            title: const Text(
                'Shopping Art',
                style: TextStyle(
                color:Colors.white,
                )
            ),
            backgroundColor: Colors.indigo,
        ),
        body: SingleChildScrollView(
            // Widget wrapper yang dapat discroll
            child: Padding(
            padding: const EdgeInsets.all(10.0), // Set padding dari halaman
            child: Column(
                // Widget untuk menampilkan children secara vertikal
                children: <Widget>[
                const Padding(
                    padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                    // Widget Text untuk menampilkan tulisan dengan alignment center dan style yang sesuai
                    child: Text(
                    'PBP Shop', // Text yang menandakan toko
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                    ),
                    ),
                ),
                // Grid layout
                GridView.count(
                    // Container pada card kita.
                    primary: true,
                    padding: const EdgeInsets.all(20),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 3,
                    shrinkWrap: true,
                    children: items.map((ShopItem item) {
                    // Iterasi untuk setiap item
                    return ShopCard(item);
                    }).toList(),
                ),
                ],
            ),
            ),
        ),
        );
    }
    }

    class ShopItem {
    final String name;
    final IconData icon;

    ShopItem(this.name, this.icon);
    }
    class ShopCard extends StatelessWidget {
    final ShopItem item;

    const ShopCard(this.item, {super.key}); // Constructor
    }
        
    ```

<br>

- [x]  Memunculkan Snackbar dengan tulisan:
    
    Untuk memunculkan snackbar gunakan widger build dengan kode sebagai berikut:

    ```
    Widget build(BuildContext context) {
        return Material(
        color: getButtonColor(item), // Menggunakan fungsi getButtonColor
        child: InkWell(
            // Area responsive terhadap sentuhan
            onTap: () {
            // Memunculkan SnackBar ketika diklik
            ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(SnackBar(
                    content: Text("Kamu telah menekan tombol ${item.name}!")));
            },
            child: Container(
            // Container untuk menyimpan Icon dan Text
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
            padding: const EdgeInsets.all(8),
            child: Center(
                child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    Icon(
                    item.icon,
                    color: Colors.white,
                    size: 30.0,
                    ),
                    const Padding(padding: EdgeInsets.all(3)),
                    Text(
                    item.name,
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Colors.white),
                    ),
                ],
                ),
            ),
            ),
        ),
        );
    }
    ```
    Saat nantinya menekan tombol akan muncul widget dengan tulisan "Kamu telah menekan tombol ${item.name}!"

- [x]  Kamu akan mendapatkan nilai bonus pada penilaian tugas ini apabila kamu mengimplementasikan warna-warna yang berbeda untuk setiap tombol (Lihat Item, Tambah Item, dan Logout).

    Untuk mengubah tiap warna pada tombol, saya menggunakan pendekatan key dari value item pada shop item. Saya menambahkannya pada class shopcard dengan mengambil superkey name item. Kodenya sebagai berikut:
    ```
    class ShopCard extends StatelessWidget {
    final ShopItem item;

    const ShopCard(this.item, {super.key}); // Constructor

    Color getButtonColor(ShopItem item) {
        // Fungsi ini akan mengembalikan warna latar belakang sesuai dengan nama tombol
        switch (item.name) {
        case "Lihat Produk":
            return Colors.indigo;
        case "Tambah Produk":
            return Colors.cyan;
        case "Logout":
            return Colors.pink;
        default:
            return Colors.indigo; 
        }
        }
    }
    ```

<br>
<br>

# Tugas 8

### 1. Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement(), disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!

|Aspek | Navigator.push() | Navigator.pushReplacement() |
| --- | --- | --- |
| `Apa yang dilakukan` |  Menambahkan rute baru ke tumpukan navigasi | Menambahkan rute baru dan menggantikan rute saat ini di tumpukan navigasi |
| `Rute yang ditampilkan`	| Rute baru ditambahkan ke tumpukan dan rute lama tetap ada	| Rute baru ditambahkan dan rute lama dihapus dari tumpukan, sehingga pengguna tidak bisa kembali ke rute lama |
| `Hasil	` | Menambahkan Page1 ke tumpukan navigasi	 |  Menggantikan Page1 dengan Page2 di tumpukan navigasi |
| `Contoh Penggunaan `| ``` Navigator.push(context, MaterialPageRoute(builder: (context) => Page1()));``` | ```Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Page2())); ```|
| `Navigasi mundur (back)` | Pengguna dapat kembali ke rute lama dengan tombol "back"	|  Pengguna tidak dapat kembali ke rute lama dengan tombol "back" |
| `Pengaruh pada struktur tumpukan navigasi`	| Menambahkan rute baru ke tumpukan, mempertahankan tumpukan yang semakin dalam	| Menambahkan rute baru ke tumpukan dan menggantikan rute saat ini, menjaga tumpukan tetap dangkal |
| `Pengaruh pada riwayat navigasi`  | Menambahkan rute baru ke riwayat navigasi, membuat riwayat semakin panjang	| Menghapus rute lama dari riwayat navigasi, menjaga riwayat tetap pendek dan sederhana |
| `Pengaruh pada kinerja aplikasi`	| Jika tumpukan navigasi semakin dalam, ini dapat mempengaruhi kinerja aplikasi karena harus menyimpan lebih banyak rute di memori	| Memiliki tumpukan navigasi yang lebih dangkal cenderung lebih efisien dalam hal penggunaan memori |

<br>

### 2.  Jelaskan masing-masing layout widget pada Flutter dan konteks penggunaannya masing-masing!

| Layout Widget | Penjelasan | Konteks Penggunaan |
|---    |---     |---   |
| `Container`| Widget serbaguna untuk mengatur tata letak dan gaya elemen dalam kotak Dapat mengatur margin, padding, warna latar belakang, dll | Mengelompokkan elemen dalam satu wadah dengan tampilan seragam |
| `Row` dan `Column`| Mengatur elemen dalam baris (horizontal) atau kolom (vertikal) | Menyusun elemen dalam urutan yang jelas, seperti daftar item, header, konten, atau footer |
| `ListView` | Mengatur daftar elemen yang dapat digulir. Cocok untuk daftar panjang | Menampilkan daftar item, berita, atau isi yang lebih panjang dari layar |
| `Expanded` | Digunakan dalam `Row` atau `Column` untuk memenuhi sebanyak mungkin ruang yang tersedia | Membagi ruang dalam baris atau kolom dengan proporsi yang sesuai |
| `Stack` | Mengatur widget tumpukan di atas satu sama lain. Berguna untuk menumpuk elemen | Membuat tampilan kompleks dengan elemen yang bertumpuk, seperti tombol overlay |
| `Wrap` | Mengatur widget dalam baris dan kolom dengan fleksibilitas. Jika ruang tidak cukup, melanjutkan ke baris atau kolom berikutnya | Menampilkan elemen dalam berbagai ukuran tanpa risiko overflow |
| `GridView`| Mengatur widget dalam susunan berdasarkan grid (kotak) | Menampilkan elemen dalam tata letak grid, seperti galeri gambar |
| `Card` | Mengelompokkan informasi dalam kotak dengan bayangan (elevasi) | Menampilkan data dengan tampilan seragam, seperti kartu produk atau kontak |
| `ListTile`| Membuat elemen dalam daftar dengan ikon, teks, dan opsi tambahan | Membuat daftar item dengan ikon dan teks, seperti menu atau daftar kontak |
| `Flex` | Digunakan dalam `Row` atau `Column` untuk mengontrol seberapa banyak ruang yang diberikan ke anak-anaknya dengan flex factor | Mengatur fleksibilitas dalam mendistribusikan ruang dalam baris atau kolom |

<br>

### 3. Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!

Pada tugas yang diberikan, terdapat tiga elemen input dalam formulir yang digunakan untuk mengumpulkan informasi tentang produk yang akan ditambahkan ke dalam aplikasi toko. Berikut adalah elemen input dan penjelasan mengapa elemen-elemen input ini digunakan:

| Elemen Input | Penjelasan | Alasan Penggunaan |
|---    |---    |---    |
| `TextFormField` Nama Produk | Elemen input ini digunakan untuk mengizinkan pengguna memasukkan nama produk yang ingin ditambahkan ke dalam aplikasi toko. Nama produk digunakan untuk identifikasi produk secara unik | Nama produk adalah atribut penting dalam mendeskripsikan dan mengidentifikasi suatu produk |
| `TextFormField` Harga | Elemen input ini digunakan untuk mengizinkan pengguna memasukkan harga produk yang ingin ditambahkan. Harga adalah informasi penting dalam sebuah produk dan digunakan dalam proses perhitungan | Harga produk adalah atribut kunci yang relevan dalam konteks toko, dan perlu divalidasi sebagai angka |
| `TextFormField` Deskripsi Produk | Elemen input ini digunakan untuk mengizinkan pengguna memasukkan deskripsi produk. Deskripsi memberikan informasi tambahan tentang produk yang berguna untuk calon pembeli | Deskripsi produk adalah informasi tambahan yang membantu calon pembeli memahami produk dengan lebih baik |

Penggunaan elemen-elemen input ini penting dalam konteks formulir untuk aplikasi toko karena mereka memungkinkan pengguna untuk memasukkan data yang relevan dan penting tentang produk yang ingin mereka tambahkan. Elemen-elemen input ini juga memungkinkan validasi data untuk memastikan bahwa data yang dimasukkan sesuai dengan format yang diharapkan.

<br>

### 4. Bagaimana penerapan clean architecture pada aplikasi Flutter?

Clean Architecture adalah pendekatan pengembangan perangkat lunak yang memisahkan aplikasi menjadi beberapa lapisan dengan tanggung jawab yang berbeda. Hal ini meningkatkan struktur, tes, dan pemeliharaan aplikasi. Di bawah ini adalah panduan tentang bagaimana menerapkan Clean Architecture pada aplikasi Flutter.

`Konsep Dasar Clean Architecture`

Clean Architecture mengikuti prinsip pemisahan tugas dan tanggung jawab menjadi tiga lapisan utama:

1. **Domain Layer (Core)**:
   - Berisi logika bisnis atau domain aplikasi.
   - Entitas, use case, dan interface repositori berada di sini.

2. **Data Layer**:
   - Berinteraksi dengan sumber data seperti API eksternal dan penyimpanan lokal.
   - Implementasi repositori terletak di sini.

3. **Presentation Layer**:
   - Menangani tampilan dan antarmuka pengguna.
   - Logika presentasi diatur di sini menggunakan ViewModel atau Bloc.

`Langkah-Langkah Penerapan Clean Architecture`

1. **Pemahaman Clean Architecture**:
   - Pahami konsep dasar Clean Architecture dan hubungan antara lapisan.

2. **Domain Layer (Core)**:
   - Definisikan entitas, use case, dan repositori di lapisan ini.

3. **Data Layer**:
   - Buat implementasi repositori untuk menghubungkan ke sumber data seperti database dan API.

4. **Presentation Layer**:
   - Gunakan widget Flutter untuk membuat antarmuka pengguna (UI).
   - Pisahkan logika presentasi dari logika bisnis.

5. **Dependency Injection**:
   - Gunakan teknik Dependency Injection (misalnya, `Provider` atau `GetIt`) untuk mengelola dependensi.

6. **Test-Driven Development (TDD)**:
   - Terapkan TDD dengan menulis tes unit dan integrasi untuk memastikan logika bisnis berfungsi dengan benar.

7. **Pola Desain**:
   - Pilih pola desain seperti MVC, MVVM, atau Bloc Pattern untuk mengatur logika presentasi.

8. **Repository Pattern**:
   - Gunakan pola repositori untuk mengakses data dari lapisan Data.

9. **Manajemen Rute**:
   - Gunakan navigator Flutter atau library navigasi untuk mengatur rute aplikasi.

10. **Pemisahan Tugas**:
    - Pastikan setiap lapisan bertanggung jawab terhadap tugas tertentu dan memiliki tanggung jawab yang terpisah.

11. **Penyimpanan Lokal dan Koneksi Jaringan**:
    - Gunakan paket Flutter seperti `shared_preferences` dan `http` untuk penyimpanan lokal dan koneksi jaringan.

12. **Pengujian UI dan E2E**:
    - Selain pengujian unit, tambahkan pengujian UI/widget dan pengujian ujung ke ujung (E2E).

13. **Logging dan Pemantauan**:
    - Tambahkan log dan pemantauan untuk pemecahan masalah dan pemantauan performa.

14. **Dokumentasi**:
    - Dokumentasikan kode dengan baik untuk kolaborasi tim dan pemeliharaan.

`Manfaat Clean Architecture`

- Struktur yang terorganisir dengan baik.
- Kemudahan dalam pengujian dan pemeliharaan.
- Kemudahan dalam penggantian lapisan atau teknologi.

Penerapan Clean Architecture membantu dalam pengembangan aplikasi Flutter yang lebih terstruktur dan terorganisir dengan baik.

<br>

### 5. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial)

Pertama tama untuk merapikan code dart yang tersedia, developer membuat 2 folder yang memisahkan setiap fungsi dari code, pertama berisi `screens`, kedua berisi `widgets`.

- [x] Membuat minimal satu halaman baru pada aplikasi, yaitu halaman formulir tambah item baru dengan ketentuan sebagai berikut:

    Untuk membuat halaman yang berisikan formulir untuk menambahkan item baru, saya membuat dile dart baru bernama  `shoplist_form` pada folder `screens`. 

    Kemudian Memakai minimal tiga elemen input, yaitu name, amount, description. Tambahkan elemen input sesuai dengan model pada aplikasi tugas Django yang telah kamu buat. Kode sebagai berikut:
    ```
    import 'package:flutter/material.dart';
    import 'package:shopping_art/widgets/left_drawer.dart';
    import 'package:shopping_art/models/product.dart';

    class ShopFormPage extends StatefulWidget {
    const ShopFormPage({super.key});

    @override
    State<ShopFormPage> createState() => _ShopFormPageState();
    }

    List<Product> productList = [];

    class _ShopFormPageState extends State<ShopFormPage> {
    final _formKey = GlobalKey<FormState>();
    String _name = "";
    int _price = 0;
    String _description = "";

    // Global list to store products
    void _saveProduct() {
        if (_formKey.currentState!.validate()) {
        // Add product to the global list
        productList.add(Product(
            name: _name,
            price: _price,
            description: _description,
        ));

        showDialog(
            context: context,
            builder: (context) {
            return AlertDialog(
                title: const Text('Produk berhasil tersimpan'),
                content: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text('Nama: $_name'),
                    Text('Harga: $_price'),
                    Text('Deskripsi: $_description'),
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
    }
    ...
    
    ```

    Setelah itu saya membuat tempat untuk memasukan isi form dengan code sebagai berikut 
    ```
    @override
    Widget build(BuildContext context) {
        return Scaffold(
        appBar: AppBar(
            title: const Center(
            child: Text(
                'Form Tambah Produk',
            ),
            ),
            backgroundColor: Colors.indigo,
            foregroundColor: Colors.white,
        ),
        body: Form(
            key: _formKey,
            child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                    decoration: InputDecoration(
                    hintText: "Nama Produk",
                    labelText: "Nama Produk",
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
                ),
                Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                    decoration: InputDecoration(
                    hintText: "Harga",
                    labelText: "Harga",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                    ),
                    ),
                    onChanged: (String? value) {
                    setState(() {
                        _price = int.parse(value!);
                    });
                    },
                    validator: (String? value) {
                    if (value == null || value.isEmpty) {
                        return "Harga tidak boleh kosong!";
                    }
                    if (int.tryParse(value) == null) {
                        return "Harga harus berupa angka!";
                    }
                    return null;
                    },
                ),
                ),
                Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                    decoration: InputDecoration(
                    hintText: "Deskripsi",
                    labelText: "Deskripsi",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                    ),
                    ),
                    onChanged: (String? value) {
                    setState(() {
                        // TODO: Tambahkan variabel yang sesuai
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
                ),
                Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.indigo),
                    ),
                    onPressed: _saveProduct,
                    child: const Text(
                        "Save",
                        style: TextStyle(color: Colors.white),
                    ),
                    ),
                ),
                ),
            ]),
            ),
        ),
        );
    }
    }
    ```

    Untuk mensave product dapat dibuat dengan `onPressed: _saveProduct` yang terdapat pada potongan kode diatas

    Untuk memvalidasi setiap form pada nama, harga dan deskripsi dapat dibuat dengan if else, berikut potongan kodenya

    ```
    validator: (String? value) {
        if (value == null || value.isEmpty) {
        return "Deskripsi tidak boleh kosong!";
        }
        return null;
    },
    ```
    Dan ini berlaku untuk ketiga form field

- [x]  Mengarahkan pengguna ke halaman form tambah item baru ketika menekan tombol Tambah Item pada halaman utama.

    Pertama tama pisahkan menu dengan membaut baru `widget` bernama `shop_card.dart`. Copy kode dari menu agar shop_card.dart menjadi seperti berikut ini:

    ```
    import 'package:flutter/material.dart';
    import 'package:shopping_art/screens/lihat_product.dart';
    import 'package:shopping_art/screens/shoplist_form.dart';
    import 'package:shopping_art/screens/lihat_product.dart';


    class ShopItem {
    final String name;
    final IconData icon;

    ShopItem(this.name, this.icon);
    }

    class ShopCard extends StatelessWidget {
    final ShopItem item;

    const ShopCard(this.item, {super.key}); // Constructor

    Color getButtonColor(ShopItem item) {
        // Fungsi ini akan mengembalikan warna latar belakang sesuai dengan nama tombol
        switch (item.name) {
        case "Lihat Produk":
            return Colors.indigo;
        case "Tambah Produk":
            return Colors.cyan;
        case "Logout":
            return Colors.pink;
        default:
            return Colors.indigo; 
        }
    }

    @override
    Widget build(BuildContext context) {
        return Material(
        color: getButtonColor(item), // Menggunakan fungsi getButtonColor
        child: InkWell(
            // Area responsive terhadap sentuhan
            onTap: () {
            // Memunculkan SnackBar ketika diklik
            ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(SnackBar(
                    content: Text("Kamu telah menekan tombol ${item.name}!")));
            // Navigate ke route yang sesuai (tergantung jenis tombol)
            if (item.name == "Tambah Produk") {
                // TODO: Gunakan Navigator.push untuk melakukan navigasi ke MaterialPageRoute yang mencakup ShopFormPage.
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ShopFormPage()),
                );
            }

            if (item.name == "Lihat Produk") {
                Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ProductListPage(products: productList)),
                );
            }
            },
            child: Container(
            // Container untuk menyimpan Icon dan Text
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8), // Set the border radius here
                color: getButtonColor(item),
            ),
            padding: const EdgeInsets.all(8),
            child: Center(
                child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    Icon(
                    item.icon,
                    color: Colors.white,
                    size: 30.0,
                    ),
                    const Padding(padding: EdgeInsets.all(3)),
                    Text(
                    item.name,
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Colors.white),
                    ),
                ],
                ),
            ),
            ),
        ),
        );
    }
    }
    
    ```

    Untuk mengarahkan pengguna ke halaman form tambah item baru, dapat dipush melalui `shop_card.dart` dengan pertama tama mengimport page dart dari `shopplist_form`.
    ```
    import 'package:shopping_art/screens/shoplist_form.dart';
    ```

    Selanjutnya buat state agar saat button buat product di tekan dia akan push ke page shopplist_form. Kode sebagai berikut:

    ```
    // Navigate ke route yang sesuai (tergantung jenis tombol)
    if (item.name == "Tambah Produk") {
    // TODO: Gunakan Navigator.push untuk melakukan navigasi ke MaterialPageRoute yang mencakup ShopFormPage.
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ShopFormPage()),
    );
    }
    
    ```

    Selanutnya panggil `shop_card.dart` pada  `menu.dart`
    ```
    children: items.map((ShopItem item) {
        // Iterasi untuk setiap item
        return ShopCard(item);
    }).toList(),
    ```

- [x] Memunculkan data sesuai isi dari formulir yang diisi dalam sebuah pop-up setelah menekan tombol Save pada halaman formulir tambah item baru.

    Untuk memunculkan data sesuai dari isi formulir yang diisi, saya menggunakan gungsi save product, dengan show dialog. Kode pada show dialog adalah sebagai berikut:

    ```
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Produk berhasil tersimpan'),
            content: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Nama: $_name'),
                  Text('Harga: $_price'),
                  Text('Deskripsi: $_description'),
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
    ```

- [x]  Membuat sebuah drawer pada aplikasi dengan ketentuan sebagai berikut:

    Untuk membuat sebuah drawer, kita pertama tama harus membuat file `left_drawer.dart` pada folder `widgets`. Code dari left_drawer adalah sebagai berikut :

    ```
    import 'package:flutter/material.dart';
    import 'package:shopping_art/screens/menu.dart';
    import 'package:shopping_art/screens/shoplist_form.dart';
    import 'package:shopping_art/screens/lihat_product.dart';

    class LeftDrawer extends StatelessWidget {
    const LeftDrawer({super.key});

    @override
    Widget build(BuildContext context) {
        return Drawer(
        child: ListView(
            children: [
            const DrawerHeader(
                decoration: BoxDecoration(
                color: Colors.indigo,
                ),
                child: Column(
                children: [
                    Text(
                    'Shopping List',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                    ),
                    ),
                    Padding(padding: EdgeInsets.all(10)),
                    Text("Catat seluruh keperluan belanjamu di sini!",
                        // TODO: Tambahkan gaya teks dengan center alignment, font ukuran 15, warna putih, dan weight biasa
                        textAlign: TextAlign.center,
                        style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                        )),
                ],
                ),
            ),
            // TODO: Bagian routing
            ListTile(
                leading: const Icon(Icons.home_outlined),
                title: const Text('Halaman Utama'),
                // Bagian redirection ke MyHomePage
                onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyHomePage(),
                    ));
                },
            ),
            ListTile(
                leading: const Icon(Icons.add_shopping_cart),
                title: const Text('Tambah Produk'),
                // Bagian redirection ke ShopFormPage
                onTap: () {
                /*
                TODO: Buatlah routing ke ShopFormPage di sini,
                setelah halaman ShopFormPage sudah dibuat.
                */
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ShopFormPage(),
                    ));
                },
            ),
            ListTile(
                leading: const Icon(Icons.movie),
                title: const Text('Lihat Produk'),
                onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            ProductListPage(products: productList)),
                );
                },
            ),
            ],
        ),
        );
    }
    }
    
    ```

- [x] Mengerjakan Bonus showitem

    Pertama tama buat folder `models` yang didalamnya berisi file `product.dart` dengan kode sebagai berikut
    ```
    class Product {
    final String name;
    final int price;
    final String description;

    Product({required this.name, required this.price, required this.description});
    }
    ```

    Selanjutnya buat screen `lihat_product.dart` di dalam folder `screens` dengan kode sebagai berikut
    ```
    import 'package:flutter/material.dart';
    import 'package:shopping_art/models/product.dart';

    class ProductListPage extends StatelessWidget {
    final List<Product> products;

    ProductListPage({Key? key, required this.products}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
        appBar: AppBar(
            title: Text('Daftar Produk'),
        ),
        body: ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) {
            return Card(
                child: ListTile(
                title: Text(products[index].name),
                subtitle: Text('Harga: ${products[index].price}\nDeskripsi: ${products[index].description}'),
                ),
            );
            },
        ),
        );
    }
    }
    ```

    Untuk mengakses tersebut, link dengan `shop_card.dart` dengan menggunakan push, dengan kode sebagai berikut

    ```
    if (item.name == "Lihat Produk") {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ProductListPage(products: productList)),
        );
    }
    ```

# Tugas 9

###  Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?

Ya, kita bisa melakukan pengambilan data JSON tanpa membuat model terlebih dahulu. Dalam Flutter, data JSON dapat diambil dan dikelola langsung sebagai `Map<String, dynamic>` atau `List<Map<String, dynamic>> `tergantung struktur JSON yang diterima. Namun, pendekatan ini kurang ideal dibandingkan dengan menggunakan model karena beberapa alasan:

- `Ketidakefisienan`: Mengelola data langsung dari JSON membutuhkan penanganan secara manual untuk setiap field data, yang bisa menjadi rumit dan rawan error.
- `Ketidakrapihan Kod`e: Code menjadi kurang rapi dan susah dibaca karena harus melakukan banyak mapping manual.
- `Ketidakamanan Tipe Data:` Tanpa model, tidak ada keamanan tipe data yang terjamin. Kesalahan tipe data bisa terjadi, mengingat data JSON hanya diketahui strukturnya pada saat runtime.
- `Skalabilitas dan Pemeliharaan: `Dengan model, memperbarui atau mengubah struktur data menjadi lebih mudah dan terpusat.


Berikut adalah perbandingan antara melakukan pengambilan data JSON tanpa dan dengan membuat model terlebih dahulu:

| Aspek              | Tanpa Model                   | Dengan Model                   |
|--------------------|-------------------------------|--------------------------------|
| Ketidakefisienan   | Tinggi, memerlukan penanganan manual untuk setiap field | Rendah, model mengelola struktur data |
| Ketidakrapihan Kode| Kode kurang rapi dan susah dibaca karena banyak mapping manual | Kode lebih rapi dan mudah dibaca |
| Ketidakamanan Tipe Data | Tinggi, karena tidak ada keamanan tipe data terjamin | Rendah, model menyediakan keamanan tipe data |
| Skalabilitas dan Pemeliharaan | Rendah, sulit memperbarui atau mengubah struktur data | Tinggi, mudah memperbarui atau mengubah struktur data |


###  Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
`CookieRequest` adalah kelas yang memanage HTTP requests sambil mempertahankan cookies, yang sangat penting untuk autentikasi dan sesi yang persisten dalam aplikasi. Fungsinya meliputi:

Fungsi dan kebutuhan instance `CookieRequest` dalam aplikasi Flutter:

| Aspek           | Keterangan |
|-----------------|------------|
| Mengelola Cookies | Mengelola cookies untuk setiap HTTP request dan response |
| Persistensi Sesi | Memungkinkan sesi pengguna tetap aktif selama aplikasi terbuka |
| Konsistensi Sesi | Memastikan semua request mempertahankan sesi yang sama |
| Efisiensi | Menghindari pembuatan instance `CookieRequest` yang berlebihan |


###  Jelaskan mekanisme pengambilan data dari JSON hingga dapat ditampilkan pada Flutter.
Proses pengambilan data dari JSON dan menampilkannya pada aplikasi Flutter melibatkan beberapa langkah kunci:

1. **Fetch Data**:
   - Menggunakan HTTP request (biasanya `GET`) untuk mengambil data JSON dari web service.

2. **Deserialisasi JSON**:
   - Mengubah data JSON yang diterima menjadi objek Dart. Ini bisa dilakukan dengan menggunakan model yang sudah dibuat atau secara langsung menjadi `Map` atau `List`, tergantung pada struktur JSON.

3. **Penggunaan Data**:
   - Menggunakan data yang telah dikonversi untuk mengisi state atau variabel di dalam aplikasi Flutter. Ini bisa berupa data yang ditampilkan langsung atau yang digunakan untuk logika lebih lanjut dalam aplikasi.

4. **Menampilkan Data**:
   - Menampilkan data yang telah dikonversi ke dalam aplikasi dengan menggunakan berbagai widget Flutter. Sebagai contoh, `ListView.builder` dapat digunakan untuk menampilkan daftar data, sementara `Text` atau `Card` widget dapat digunakan untuk menampilkan detail data.

`Catatan Penting`

- Penting untuk melakukan penanganan error selama proses fetch data untuk menangani kasus seperti koneksi jaringan yang buruk atau data yang tidak valid.
- Gunakan `FutureBuilder` atau `StreamBuilder` untuk membangun widget yang bergantung pada data asynchronous, seperti data yang di-fetch dari web service.

###  Jelaskan mekanisme autentikasi dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
Proses autentikasi antara aplikasi Flutter dan backend Django melibatkan beberapa langkah kunci untuk memastikan keamanan dan kesinambungan data.


1. **Input Data**:
   - Pengguna memasukkan data akun (seperti username dan password) di aplikasi Flutter.

2. **Kirim ke Django**:
   - Flutter mengirimkan data akun tersebut ke backend Django menggunakan HTTP request (biasanya `POST`).

3. **Proses di Django**:
   - Backend Django menerima data tersebut dan melakukan proses autentikasi. Ini melibatkan pengecekan ke database untuk mencocokkan data pengguna.

4. **Respons ke Flutter**:
   - Setelah memproses data, Django mengirimkan respons ke aplikasi Flutter. Respons ini bisa berupa konfirmasi keberhasilan atau gagalnya proses autentikasi.

5. **Tampilan di Flutter**:
   - Berdasarkan respons dari Django, Flutter kemudian menampilkan hasil autentikasi. Jika berhasil, aplikasi mungkin akan membuka halaman menu utama atau dashboard. Jika gagal, aplikasi mungkin akan menampilkan pesan error atau meminta pengguna untuk mencoba lagi.

###  Sebutkan seluruh widget yang kamu pakai pada tugas ini dan jelaskan fungsinya masing-masing.
Widget yang digunakan pada tugas ini dan fungsinya:
| Widget            | Fungsi |
|-------------------|--------|
| `Scaffold`        | Membuat struktur dasar tampilan aplikasi |
| `ListView.builder`| Membuat daftar dinamis berdasarkan data |
| `TextFormField`   | Mengumpulkan input teks dari pengguna |
| `ElevatedButton`  | Tombol untuk melakukan aksi, seperti submit form |
| `FutureBuilder`   | Membangun UI berdasarkan hasil interaksi dengan `Future` |

###  Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).

- [x] Memastikan deployment proyek tugas Django kamu telah berjalan dengan baik.

    Pastikan Secret and Variables pada Repository GitHub sudah benar dan tepat lalu pastikan file-file yang dibutuhkan untuk keperluan deployment sudah ada pada file proyek Django.

- [x] Membuat halaman login pada proyek tugas Flutter. 

    ```
    
    import 'package:shopping_art/screens/menu.dart';
import 'package:flutter/material.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';
import 'package:shopping_art/screens/register.dart';

void main() {
    runApp(const LoginApp());
}

class LoginApp extends StatelessWidget {
const LoginApp({super.key});

@override
Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Login',
        theme: ThemeData(
            primarySwatch: Colors.blue,
    ),
    home: const LoginPage(),
    );
    }
}

class LoginPage extends StatefulWidget {
    const LoginPage({super.key});

    @override
    _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
    final TextEditingController _usernameController = TextEditingController();
    final TextEditingController _passwordController = TextEditingController();
     bool _passwordVisible = false;

    @override
    Widget build(BuildContext context) {
        final request = context.watch<CookieRequest>();
        return Scaffold(
            appBar: AppBar(
                title: const Text('Login'),
            ),
            body: Container(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        TextField(
                            controller: _usernameController,
                            decoration: const InputDecoration(
                                labelText: 'Username',
                                prefixIcon: Icon(Icons.person),
                            ),
                            
                        ),
                        const SizedBox(height: 12.0),
                        TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
                prefixIcon: Icon(Icons.lock),
                suffixIcon: IconButton(
                  icon: Icon(
                    // change the icon based on the password visibility
                    _passwordVisible
                        ? Icons.visibility
                        : Icons.visibility_off,
                  ),
                  onPressed: () {
                    // password visibility state
                    setState(() {
                      _passwordVisible = !_passwordVisible;
                    });
                  },
                ),
              ),
              obscureText: !_passwordVisible,
            ),
                        const SizedBox(height: 24.0),
                        ElevatedButton(
                            onPressed: () async {
                                String username = _usernameController.text;
                                String password = _passwordController.text;

                                // Cek kredensial
                                // TODO: Ganti URL dan jangan lupa tambahkan trailing slash (/) di akhir URL!
                                // Untuk menyambungkan Android emulator dengan Django pada localhost,
                                // gunakan URL http://10.0.2.2/
                                final response = await request.login("http://127.0.0.1:8000/auth/login/", {
                                'username': username,
                                'password': password,
                                });
                    
                                if (request.loggedIn) {
                                    String message = response['message'];
                                    String uname = response['username'];
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(builder: (context) => MyHomePage()),
                                    );
                                    ScaffoldMessenger.of(context)
                                        ..hideCurrentSnackBar()
                                        ..showSnackBar(
                                            SnackBar(content: Text("$message Selamat datang, $uname.")));
                                    } else {
                                    showDialog(
                                        context: context,
                                        builder: (context) => AlertDialog(
                                            title: const Text('Login Gagal'),
                                            content:
                                                Text(response['message']),
                                            actions: [
                                                TextButton(
                                                    child: const Text('OK'),
                                                    onPressed: () {
                                                        Navigator.pop(context);
                                                    },
                                                ),
                                            ],
                                        ),
                                    );
                                }
                            },
                            child: const Text('Login'),
                        ),
                        const SizedBox(height: 20.0),
                        Text(
                        "Belum Punya Akun?",
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    RegisterPage()), // Navigate to login page
                          );
                        },
                        child: Text(
                          'Register',
                          style: TextStyle(
                            fontSize: 14.0,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
        );
    }
}
    
    ```

- [x] Mengintegrasikan sistem autentikasi Django dengan proyek tugas Flutter.
    Pada projek Django buat app baru bernama `authentication` lalu install library 'django-cors-headers'. Tambahkan `authentication dan `corsheaders` kedalam `INSTALLED_APPS` di `settings.py`. Tambahkan juga `corsheaders.middleware.CorsMiddleware` pada `settings.py` dan tambahkan beberapa variabel berikut ini:
    ```
    CORS_ALLOW_ALL_ORIGINS = True
    CORS_ALLOW_CREDENTIALS = True
    CSRF_COOKIE_SECURE = True
    SESSION_COOKIE_SECURE = True
    CSRF_COOKIE_SAMESITE = 'None'
    SESSION_COOKIE_SAMESITE = 'None'
    ```
    Buat fungsi `login`, `logout` pada `authentication/views.py` dan lakukan routingnya pada `urls.py`

    Install package berikut ini pada projek Flutter:
    ```
    flutter pub add provider
    flutter pub add pbp_django_auth
    ```
    Lalu ubah class `MyApp` pada `main.dart` menjadi:
    ```
        class MyApp extends StatelessWidget {
        const MyApp({Key? key}) : super(key: key);
        
        @override
        Widget build(BuildContext context) {
            return Provider(
            create: (_) {
                CookieRequest request = CookieRequest();
                return request;
            },
            child: MaterialApp(
                title: 'Flutter App',
                theme: ThemeData(
                    colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
                    useMaterial3: true,
                ),
                home: LoginPage()),
            );
        }
    }
    ```

- [x] Membuat model kustom sesuai dengan proyek aplikasi Django. 

    Buka endpoint `JSON` pada website Django lalu copy semua data yang ada di endpoint `JSON`. Buka situs web Quicktype dan tempel data `JSON` tadi lalu ubah language menjadi `DART`. Lalu tekan tombol `Copy Code` pada Quicktype.
    
    Pada projek Flutter buat folder baru `lib/models` lalu buat file baru `product.dart` dan tempel kode yang sudah disalin dari Quicktype sehingga menjadi seperti ini:
    ```
    // To parse this JSON data, do
    //
    //     final product = productFromJson(jsonString);
    
    import 'dart:convert';
    
    List<Product> productFromJson(String str) => List<Product>.from(json.decode(str).map((x) => Product.fromJson(x)));
    
    String productToJson(List<Product> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
    
    class Product {
      String model;
      int pk;
      Fields fields;
    
      Product({
        required this.model,
        required this.pk,
        required this.fields,
      });
    
      factory Product.fromJson(Map<String, dynamic> json) => Product(
        model: json["model"],
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
      );
    
      Map<String, dynamic> toJson() => {
        "model": model,
        "pk": pk,
        "fields": fields.toJson(),
      };
    }
    
    class Fields {
      int user;
      String name;
      int amount;
      int price;
      String description;
    
      Fields({
        required this.user,
        required this.name,
        required this.amount,
        required this.price,
        required this.description,
      });
    
      factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        user: json["user"],
        name: json["name"],
        amount: json["amount"],
        price: json["price"],
        description: json["description"],
      );
    
      Map<String, dynamic> toJson() => {
        "user": user,
        "name": name,
        "amount": amount,
        "price": price,
        "description": description,
      };
    }
    ```
- [x] Membuat halaman yang berisi daftar semua item yang terdapat pada endpoint JSON di Django yang telah kamu   deploy. 
        
    Pada projek Flutter buat file `list_product.dart` lalu isi dengan kode:

    ```
    import 'package:flutter/material.dart';
    import 'package:http/http.dart' as http;
    import 'dart:convert';
    import 'package:shopping_art/models/product.dart';
    import 'package:shopping_art/widgets/left_drawer.dart';
    import 'package:shopping_art/screens/item_detail.dart';

    class ProductPage extends StatefulWidget {
    const ProductPage({Key? key}) : super(key: key);

    @override
    _ProductPageState createState() => _ProductPageState();
    }

    class _ProductPageState extends State<ProductPage> {
    TextEditingController _searchController = TextEditingController();
    List<Product> _allProducts = [];
    List<Product> _filteredProducts = [];

    Future<List<Product>> fetchProduct() async {
        var url = Uri.parse('http://127.0.0.1:8000/json/');
        var response = await http.get(
        url,
        headers: {"Content-Type": "application/json"},
        );

        var data = jsonDecode(utf8.decode(response.bodyBytes));

        List<Product> listProduct = [];
        for (var d in data) {
        if (d != null) {
            listProduct.add(Product.fromJson(d));
        }
        }
        return listProduct;
    }

    @override
    void initState() {
        super.initState();
        _searchController.addListener(_filterProducts);
    }

    void _filterProducts() {
        String searchTerm = _searchController.text.toLowerCase();
        setState(() {
        _filteredProducts = _allProducts
            .where((product) =>
                product.fields.name.toLowerCase().contains(searchTerm) ||
                product.fields.description.toLowerCase().contains(searchTerm))
            .toList();
        });
    }

    @override
    void dispose() {
        _searchController.dispose();
        super.dispose();
    }

    @override
    Widget build(BuildContext context) {
        return Scaffold(
        appBar: AppBar(
            title: const Text('Product'),
        ),
        drawer: const LeftDrawer(),
        body: Column(
            children: [
            Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                ),
                child: TextField(
                    controller: _searchController,
                    onChanged: (value) {
                    _filterProducts();
                    },
                    decoration: InputDecoration(
                    hintText: "Search",
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                    ),
                    ),
                ),
                ),
            ),
            Expanded(
                child: FutureBuilder(
                future: fetchProduct(),
                builder: (context, AsyncSnapshot snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                    } else if (!snapshot.hasData || snapshot.data.isEmpty) {
                    return Center(
                        child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                            Text(
                            "Data doesn't exist.",
                            style: TextStyle(fontSize: 20),
                            ),
                            SizedBox(height: 8),
                        ],
                        ),
                    );
                    } else {
                    return ListView.builder(
                        itemCount: snapshot.data!.length,
                        itemBuilder: (_, index) => InkWell(
                        onTap: () {
                            Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailItem(
                                item: snapshot.data![index],
                                )
                            )
                            );
                        },
                            child: Container(
                            margin: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 12),
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                Text(
                                    "${snapshot.data![index].fields.name}",
                                    style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                    ),
                                ),
                                Text(
                                    "Price: \$${snapshot.data![index].fields.price.toStringAsFixed(2)}",
                                    style: const TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold,
                                    ),
                                ),
                                ],
                            ),
                            ),
                        )
                        );
                    }
                },
                ),
            ),
            ],
        ),
        );
    }
    }
    ```

- [x] Membuat halaman detail untuk setiap item yang terdapat pada halaman daftar Item. 

    Pada projek Flutter buat file baru `item_detail.dart` lalu isi dengan kode:
    ```
    import 'package:flutter/material.dart';
    import 'package:shopping_art/models/product.dart';
    import 'package:shopping_art/models/product.dart';



    class DetailItem extends StatelessWidget {
    final Product item;

    const DetailItem({Key? key, required this.item}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
        appBar: AppBar(
            title: Text(item.fields.name),
            leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
                Navigator.pop(context); // Navigate back to the previous page
            },
            ),
        ),
        body: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
                Text(
                item.fields.name,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text("Price: ${item.fields.price}"),
                SizedBox(height: 10),
                Text("Description: ${item.fields.description}"),
            ],
            ),
        ),
        );
    }
    }
    
    ```

- [x] Halaman ini dapat diakses dengan menekan salah satu item pada halaman daftar Item.

    ```
    
    return ListView.builder(
        itemCount: snapshot.data!.length,
        itemBuilder: (_, index) => InkWell(
            onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                builder: (context) => DetailItem(
                    item: snapshot.data![index],
                )
                )
            );
            },
        ...
    ```

 - [x] Tambahkan tombol untuk kembali ke halaman daftar item. 
    ```
    leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Navigate back to the previous page
          },
        ),
    ```

- [x] Bonus Register
    Untuk register dapat membuat file `register.dart` dengan kode sebagai berikut:
    ```
    import 'package:flutter/material.dart';
    import 'package:http/http.dart' as http;
    import 'package:provider/provider.dart';
    import 'package:shopping_art/screens/login.dart';
    import 'package:pbp_django_auth/pbp_django_auth.dart';

    void main() {
    runApp(const RegisterApp());
    }

    class RegisterApp extends StatelessWidget {
    const RegisterApp({Key? key});

    @override
    Widget build(BuildContext context) {
        return MaterialApp(
        title: 'Sign Up',
        theme: ThemeData(
            primarySwatch: Colors.blue,
        ),
        home: const RegisterPage(),
        );
    }
    }

    class RegisterPage extends StatefulWidget {
    const RegisterPage({Key? key});

    @override
    _RegisterPageState createState() => _RegisterPageState();
    }

    class _RegisterPageState extends State<RegisterPage> {
    final TextEditingController _usernameController = TextEditingController();
    final TextEditingController _passwordController = TextEditingController();
    final TextEditingController _passwordConfirmationController =
        TextEditingController();
    bool _passwordVisible = false;

    @override
    Widget build(BuildContext context) {
        final request = context.watch<CookieRequest>();
        final screenHeight = MediaQuery.of(context).size.height;

        return Scaffold(
        appBar: AppBar(
            title: const Text(
            'Register',
            style: TextStyle(fontWeight: FontWeight.bold),
            ),
        ),
        body: Container(
            padding: const EdgeInsets.all(16.0),
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                TextField(
                controller: _usernameController,
                decoration: const InputDecoration(
                    labelText: 'Username',
                    prefixIcon: Icon(Icons.person),
                ),
                ),
                const SizedBox(height: 16.0),
                TextField(
                controller: _passwordController,
                decoration: InputDecoration(
                    labelText: 'Password',
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: IconButton(
                    icon: Icon(
                        // change the icon based on the password visibility
                        _passwordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                    ),
                    onPressed: () {
                        // password visibility state
                        setState(() {
                        _passwordVisible = !_passwordVisible;
                        });
                    },
                    ),
                ),
                obscureText: !_passwordVisible,
                ),
                const SizedBox(height: 16.0),
                TextField(
                controller: _passwordConfirmationController,
                decoration: InputDecoration(
                    labelText: 'Confirm Password',
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: IconButton(
                    icon: Icon(
                        // change the icon based on the password visibility
                        _passwordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                    ),
                    onPressed: () {
                        // password visibility state
                        setState(() {
                        _passwordVisible = !_passwordVisible;
                        });
                    },
                    ),
                ),
                obscureText: !_passwordVisible,
                ),
                const SizedBox(height: 18.0),
                ElevatedButton(
                onPressed: () async {
                    String username = _usernameController.text;
                    String password = _passwordController.text;
                    String passwordConfirmation =
                        _passwordConfirmationController.text;

                    // Perform input validation
                    if (username.isEmpty ||
                        password.isEmpty ||
                        passwordConfirmation.isEmpty) {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                        title: const Text('Registration Failed'),
                        content: const Text('Please fill in all fields.'),
                        actions: [
                            TextButton(
                            child: const Text('OK'),
                            onPressed: () {
                                Navigator.pop(context);
                            },
                            ),
                        ],
                        ),
                    );
                    return;
                    }

                    if (password != passwordConfirmation) {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                        title: const Text('Registration Failed'),
                        content: const Text('Passwords do not match.'),
                        actions: [
                            TextButton(
                            child: const Text('OK'),
                            onPressed: () {
                                Navigator.pop(context);
                            },
                            ),
                        ],
                        ),
                    );
                    return;
                    }
                    // Registration logic, send registration request to your server API
                    final response = await http.post(
                    Uri.parse('http://127.0.0.1:8000/auth/register/'),
                    body: {
                        'username': username,
                        'password1': password,
                        'password2': passwordConfirmation,
                    },
                    );

                    if (response.statusCode == 201) {
                    // Registration successful
                    String message =
                        'Registration successful. Please Log in';
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                    ScaffoldMessenger.of(context)
                        ..hideCurrentSnackBar()
                        ..showSnackBar(SnackBar(
                        content: Text(message),
                        ));
                    } else {
                    // Registration failed
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                        title: const Text('Registration Failed'),
                        content: const Text(
                            'Registration failed. Please try again later.'),
                        actions: [
                            TextButton(
                            child: const Text('OK'),
                            onPressed: () {
                                Navigator.pop(context);
                            },
                            ),
                        ],
                        ),
                    );
                    }
                },
                child: const Text('Sign Up'),
                ),
                const SizedBox(height: 20.0),
                Text(
                "Sudah Punya Akun?",
                ),
                InkWell(
                onTap: () {
                    Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            LoginPage()), // Navigate to login page
                    );
                },
                child: Text(
                    'Login',
                    style: TextStyle(
                    fontSize: 14.0,
                    decoration: TextDecoration.underline,
                    ),
                ),
                ),
            ],
            ),
        ),
        );
    }
    }

    ```

- [x] Bonus Filter
    Untuk filter search di list product pertama tama dibuat dengan membuat function filter product
    ```
      @override
        void initState() {
            super.initState();
            _searchController.addListener(_filterProducts);
        }

        void _filterProducts() {
            String searchTerm = _searchController.text.toLowerCase();
            setState(() {
            _filteredProducts = _allProducts
                .where((product) =>
                    product.fields.name.toLowerCase().contains(searchTerm) ||
                    product.fields.description.toLowerCase().contains(searchTerm))
                .toList();
            });
        }
    ```

    dan masukan pada tampilan seperti kode berikut ini:

    ```
    Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
              ),
              child: TextField(
                controller: _searchController,
                onChanged: (value) {
                  _filterProducts();
                },
                decoration: InputDecoration(
                  hintText: "Search",
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
          ),
    
    ```
