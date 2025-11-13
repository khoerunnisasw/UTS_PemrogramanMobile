# 🌟 MyDash - Aplikasi Mobile Multi-Fungsi

Aplikasi mobile Flutter yang indah dan modern, menggabungkan berbagai fitur berguna dalam satu tempat. Dibangun dengan prinsip desain UI/UX yang bersih, animasi halus, dan tampilan elegan yang membuat aktivitas harian menjadi lebih mudah dan menyenangkan.


## ✨ Fitur

### 🏠 Dashboard
<img width="621" height="1004" alt="Screenshot 2025-11-13 185128" src="https://github.com/user-attachments/assets/7f2067d3-b336-4f36-af0d-2e82db8681f1" />
<img width="615" height="997" alt="Screenshot 2025-11-13 185801" src="https://github.com/user-attachments/assets/d49c59d3-01c0-441e-a7f3-426bda4e68ff" />

* **Tampilan Beranda Modern** - Layar sambutan menarik dengan kartu gradien
* **Navigasi Cepat** - Akses mudah ke semua fitur dari satu tempat
* **Menu Grid** - Kartu fitur berwarna cerah yang tertata rapi
* **Pusat Notifikasi** - Memberi tahu pengguna tentang pembaruan penting

### 👤 Biodata Form
<img width="616" height="989" alt="Screenshot 2025-11-13 185140" src="https://github.com/user-attachments/assets/f3f3d6cf-ec4a-4a1d-a6c0-36242bcef3ea" />
<img width="625" height="996" alt="Screenshot 2025-11-13 185325" src="https://github.com/user-attachments/assets/f00247be-3a26-40ab-a29a-fc7ade8752b6" />

* **Informasi Pribadi Lengkap** - Nama, tanggal lahir, dan jenis kelamin
* **Detail Kontak** - Kolom email, nomor telepon, dan alamat
* **Informasi Pendidikan** - Input universitas dan jurusan
* **Date Picker** - Kalender elegan untuk memilih tanggal lahir
* **Desain Gradien** - Tampilan menarik dengan foto profil
* **Validasi Input** - Memastikan setiap data diisi dengan benar

### 📞 Contact List
<img width="634" height="996" alt="Screenshot 2025-11-13 190030" src="https://github.com/user-attachments/assets/6216c9cd-e32d-483c-af52-0ec2f882dd94" />

* **15 Kontak Bawaan** - Contoh data kontak yang dapat dimodifikasi
* **Foto Profil** - Avatar berbeda untuk setiap kontak
* **Akses Cepat** - Langsung melihat nama dan nomor telepon
* **Tampilan Kartu** - Rapi dan mudah dibaca
* **Struktur Siap Cari** - Dapat ditambahkan fitur pencarian di masa depan

### 🧮 Calculator
<img width="628" height="1000" alt="Screenshot 2025-11-13 185236" src="https://github.com/user-attachments/assets/479600f1-9674-4908-84be-d19485ec74d1" />

* **Operasi Dasar** - Penjumlahan, pengurangan, perkalian, pembagian
* **Fungsi Lanjutan** - Akar kuadrat (√) dan pangkat dua (x²)
* **Tampilan Indah** - Angka besar dan mudah dibaca
* **Animasi Halus** - Tombol melingkar dengan efek bayangan
* **Penanganan Error** - Menghindari crash saat input tidak valid
* **Backspace** - Hapus satu digit terakhir dengan mudah

### 🌦️ Weather Screen
<img width="625" height="997" alt="Screenshot 2025-11-13 185253" src="https://github.com/user-attachments/assets/f6671971-23b7-4ad4-a4b2-4c179875d41a" />

* **Cuaca Saat Ini** - Menampilkan suhu dan kondisi terkini
* **Perkiraan Tiap Jam** - Prediksi cuaca selama 6 jam ke depan
* **Kartu Interaktif** - Tap untuk memilih waktu tertentu
* **Ikon Cuaca** - Ilustrasi cuaca yang menarik dan mudah dikenali
* **Detail Lengkap** - Kecepatan angin, kelembapan, dan kemungkinan hujan
* **Efek Gradien** - Animasi lembut saat kartu dipilih

### 📰 News Screen
<img width="619" height="1007" alt="Screenshot 2025-11-13 185305" src="https://github.com/user-attachments/assets/56c9d5a8-c0bf-4b5b-96df-8bd8dcbf60cb" />

* **Berita Terkini** - Menampilkan 5 artikel berita pilihan
* **Gambar Berkualitas** - Menggunakan gambar dari Unsplash
* **Fitur Bookmark** - Simpan artikel untuk dibaca nanti
* **Tombol Interaksi** - Dapat membagikan atau menyukai berita
* **Scroll Halus** - Performa tinggi untuk daftar berita panjang

### 🎨 Splash Screen
<img width="614" height="1006" alt="Screenshot 2025-11-13 185122" src="https://github.com/user-attachments/assets/2add4dd0-96ea-4ece-8ed5-55b709651c88" />

* **Animasi Pembuka Profesional** - Tiga tahap animasi

  1. Foto profil bergeser dari kiri
  2. Judul muncul dari kanan
  3. Nama dan loading bar memudar masuk
* **Navigasi Otomatis** - Setelah animasi, diarahkan ke Dashboard
* **Identitas Aplikasi** - Menampilkan nama dan pembuat MyDash

---

## 🎨 Sistem Desain

### Palet Warna

* **Navy Utama**: `#0B1956` - Warna utama merek
* **Biru Muda**: `#D2E8FF` - Elemen sekunder
* **Biru Lembut**: `#B4D4FF` - Aksen dan highlight
* **Beige Hangat**: `#FAF3EB` - Latar belakang utama
* **Beige Muda**: `#F6EDE0` - Latar alternatif

### Prinsip Desain

* **Jarak Konsisten** - Menggunakan sistem grid 8px
* **Sudut Membulat** - Radius 14–35px untuk nuansa modern
* **Bayangan Lembut** - Memberi kedalaman visual
* **Efek Gradien** - Transisi warna halus
* **Tata Letak Responsif** - Cocok di berbagai ukuran layar
* **Animasi Halus** - Durasi 200–300ms untuk transisi lembut

---

## 🚀 Memulai

### Persyaratan

* Flutter SDK ≥ 3.0
* Dart SDK ≥ 3.0
* Android Studio / VS Code
* Emulator atau perangkat fisik

### Langkah Instalasi

```bash
git clone https://github.com/yourusername/mydash-app.git
cd mydash-app
flutter pub get
flutter run
```

---

## 📂 Struktur Proyek

```
screens/lib
├── main.dart
├── splash_screens.dart
├── dashboard_screens.dart
├── biodata_screens.dart
├── contact_screens.dart
├── calculator_screens.dart
├── weather_screens.dart
└── news_screens.dart
```

---

## 🛠️ Dibangun Dengan

* **Flutter** - Framework UI
* **Dart** - Bahasa pemrograman utama
* **Material Design 3** - Panduan desain modern
* **Unsplash & Flaticon** - Sumber gambar dan ikon
* **Animasi Kustom** - Transisi elegan di seluruh aplikasi

---

## 📦 Dependensi

```yaml
dependencies:
  flutter:
    sdk: flutter
  cupertino_icons: ^1.0.2
```

Tidak ada library eksternal tambahan — aplikasi ini sepenuhnya menggunakan fitur bawaan Flutter.

---

### 🧭 Sistem Navigasi

Navigasi utama menggunakan **Bottom Navigation Bar** yang memuat 6 menu: Dashboard, Biodata, Contact, Calculator, Weather, dan News.
Setiap halaman dikelola dengan **IndexedStack** agar status layar tetap tersimpan meskipun berpindah tab.
Kartu di Dashboard juga berfungsi sebagai **shortcut** untuk berpindah antar layar menggunakan GestureDetector.

### ⚙️ Splash Screen Animation

Bagian pembuka aplikasi menampilkan animasi halus menggunakan **AnimationController** dan **SlideTransition**.
Semua elemen bergerak secara berurutan: foto profil, judul, lalu teks nama dengan efek memudar (**FadeTransition**).
Setelah 3 detik, sistem otomatis mengarahkan pengguna ke halaman Dashboard menggunakan **Timer**.

### 📇 Contact Screen

Halaman ini menggunakan **ListView.builder** agar daftar kontak dapat dirender dengan efisien.
Setiap kontak ditampilkan dengan **Card Widget** berisi nama, nomor, dan **CircleAvatar**.
Data disimpan secara statis dalam list, namun dapat dikembangkan menjadi dinamis (misalnya, dari API).

### 🧮 Calculator

Komponen ini menggunakan **StatefulWidget** untuk menangani input dan hasil perhitungan secara real-time.
Fungsi aritmetika dikelola dengan logika custom menggunakan **try-catch** untuk menangani kesalahan input.
Tampilan layar hasil menggunakan **TextField** non-editable, dan tombol memiliki efek bayangan dengan **AnimatedContainer**.

### 🌦️ Weather Screen

Tampilan cuaca dibuat dengan **AnimatedContainer** agar setiap kartu jam dapat berubah ukuran saat dipilih.
Menampilkan 6 data perkiraan cuaca (jam, suhu, dan kondisi).
Desain gradien digunakan untuk memberi efek visual saat kartu aktif.
Meskipun data masih statis, struktur sudah siap untuk integrasi API cuaca seperti OpenWeatherMap.

### 📰 News Screen

Berita ditampilkan menggunakan **ListView.builder** dengan gambar dari **Image.network**.
Setiap artikel memiliki tombol **Bookmark** yang dapat diaktifkan/dinonaktifkan.
Menggunakan **loadingBuilder** untuk menampilkan indikator saat gambar dimuat dan **errorBuilder** untuk fallback jika gagal.
Seluruh artikel dikelola dalam list statis, namun mudah diperluas untuk API NewsAPI.

---

## 🔧 Kustomisasi

Kamu dapat mengganti warna, nama, daftar kontak, ikon cuaca, maupun data berita langsung melalui file yang bersangkutan.
Contoh detail dan potongan kode tetap sama seperti pada README asli agar bisa langsung diterapkan.

---

## 🌐 Izin Internet

### Android

Tambahkan ke `AndroidManifest.xml`:

```xml
<uses-permission android:name="android.permission.INTERNET"/>
```

### iOS

Sudah aktif secara default.

---

## 🔮 Pengembangan Selanjutnya

* [ ] Integrasi API cuaca (OpenWeatherMap)
* [ ] Integrasi API berita (NewsAPI)
* [ ] Deteksi lokasi otomatis
* [ ] Mode gelap dan multi-bahasa
* [ ] Penyimpanan lokal untuk kontak dan bookmark
* [ ] Riwayat kalkulator
* [ ] Filter kategori berita

## 📧 Kontak & Dukungan

**Pengembang:** Khoerunnisa Somawijaya
**NIM:** 152023096

📧 Email: [knisa8970@gmail.com](mailto:knisa8970@gmail.com)
💼 LinkedIn: [Khoerunnisa Somawijaya](https://www.linkedin.com/in/khoerunnisasomawijaya)

Dibuat dengan ❤️ menggunakan Flutter
**Versi:** 1.0.0
**Diperbarui Terakhir:** November 2024

---

Apakah kamu mau aku bantu ubah hasil ini langsung ke file `README.md` (Markdown format) biar bisa langsung kamu commit dan push ke GitHub?
