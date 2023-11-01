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



### 3.Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial)