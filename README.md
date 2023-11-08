# 🖼️ Shopping Art 🛒 🎨

`Dalam era digital ini 🏙️, seni sering diabaikan dan kurang dihargai 😢. shopping art sekarang sudah hadir dalam versi mobile 📱, agar  dapat menjangkau lebih luas dan memberikan seniman platform untuk memamerkan dan menjual karya mereka kepada audiens yang lebih beragam 🖼️, serta mengubah cara kita melihat dan menghargai seni dalam konteks digital 👨🏻‍🎨`

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

