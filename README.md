# Wisata Candi - Pertemuan 11

Proyek aplikasi Flutter **Wisata Candi** untuk Tugas Pertemuan 11 (Pemrograman Aplikasi Bergerak I).
Implementasi dikerjakan hingga bagian **Detail Header** sesuai materi slide pertemuan 11.

## Fitur & Implementasi (Detail Header)
- **Model Data**: `lib/models/candi.dart` (`Candi` class).
- **Dummy Data**: `lib/data/candi_data.dart` (`candiList` data dummy candi di Indonesia).
- **Aset Gambar**: Direktori `images/` berisi foto-foto candi (Borobudur, Prambanan, Mendut, Sewu, dll).
- **Pustaka Eksternal**: `cached_network_image` terdaftar di `pubspec.yaml`.
- **Detail Screen**: `lib/screens/detail_screen.dart`
  - Menggunakan `Scaffold` dan `Column`.
  - Mengimplementasikan `Stack` untuk **DetailHeader**:
    - **Image Utama**: Gambar candi menggunakan `Image.asset` berukuran `height: 300`, dibungkus `ClipRRect` dengan `borderRadius: BorderRadius.circular(20)` dan `Padding(horizontal: 8.0)`.
    - **Tombol Back Kustom**: Menggunakan `Container` berbentuk lingkaran (`BoxShape.circle`) dengan warna `Colors.deepPurple[100]?.withOpacity(0.8)` dan `IconButton` ikon panah kembali (`Icons.arrow_back`), dibungkus `Padding(horizontal: 16, vertical: 32)` sehingga menumpuk rapi di atas gambar utama.
- **Main**: `lib/main.dart` menginisialisasi `MaterialApp` dengan tema `seedColor: Colors.deepPurple` dan menampilkan `DetailScreen(candi: candiList[0])`.

## Cara Menjalankan Aplikasi
1. Clone repositori ini:
   ```bash
   git clone https://github.com/Aditpakez/tugaspertemuan-11.git
   ```
2. Masuk ke direktori proyek:
   ```bash
   cd tugaspertemuan-11
   ```
3. Unduh dependencies:
   ```bash
   flutter pub get
   ```
4. Jalankan aplikasi:
   ```bash
   flutter run
   ```
