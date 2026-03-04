# Fotonix

Aplikasi ini digunakan untuk mempermudah mahasiswa unesa yang ingin meminjam inventaris fotografi dan menggunakan jasa fotografi. Aplikasi ini memungkinkan pengguna untuk melihat ketersediaa dan spesifikasi dari jenis inventaris fotografi yang dipilih

## Fitur
- Registrasi dan login
- Peminjaman Inventaris Fotografi
- Pemesanan Jasa Fotografi
- Spesifikasi Inventaris Fotografi
- Ketersediaan Inventaris Fotografi dan Jasa Fotografi
- Daftar harga Inventaris Fotografi dan Jasa Fotografi
- Pembayaran melalui e-wallet

## Software yang digunakan
- Java Swing (GUI) (Membuat tampilan dalam Aplikasi, seperti tombol)
- Netbeans (Untuk menjalankan kode Java)
- MySQL (Menyimpan Database)
- Xampp (Mengelola Database MySQL)

## Cara Menjalankan
- Mempunyai file database fotonix.sql

- Admin :
1. Login
 NIM : 24050974025
 Username : felisya
 Email : felisyakamila@gmail.com
 Password : 12345678
2. Halaman Utama Admin :
- Ketersediaan Fotografi
- Daftar Harga
- Daftar Penyewa
3. Admin meng-update ketersediaan fotografi dengan mengisi kelengkapan penyewa pada "Daftar Penyewa"

 - User : 
 1. Daftar dengan memasukkan NIM, Username, Email, dan Password
 2. Menyetujui peraturan peminjaman
 3. Halaman Utama : 
 - Peminjaman Inventaris Fotografi
 - Jasa Fotografi
 - Daftar Harga
 4. Pengguna dapat melihat harga dari peminjaman inventaris fotografi dan jasa fotografi di bagian "Daftar Harga"
 5. Pengguna dapat melihat jenis inventaris fotografi yang disewakan jika memencet bagian peminjaman
 6. Pengguna dapat melihat jenis jasa fotografi yang disewakan jika memencet bagian jasa
 7. Pengguna dapat melihat spesifikasi dari barang yang akan dipinjam dengan memasukkan nama barang di pencarian bagian spesifikasi
 8. Pengguna dapat melihat ketersediaan dari jenis barang yang akan dipinjam setelah memencet "OKE"
 9. Jika pengguna sudah memilih jenis barang yang akan disewa, dan stoknya masih ada maka pengguna bisa langsung memencet barang yang dipilih dan mengisi nama peminjam di halaman konfirmasi
 10. Jika pengguna sudah memilih jenis jasa yang akan disewa, dan tanggalnya kosong, maka pengguna bisa langsung memencet jasa yang dipilih dan mengisi nama peminjam di halaman konfirmasi
 11. Pengguna bisa langsung melakukan pembayaran dengan menggunakan e-wallet, seperti : Dana, Shopeepay dan Ovo
 12. Setelah pembayaran berhasil, admin akan menghubungi user untuk konfirmasi kembali pemesanan

 ## Koneksi mySQL di Java
 public class koneksi {
 
    public static Connection getKoneksi() {
        Connection conn = null;
        String url = "jdbc:mysql://localhost:3306/fotonix"; 
        String user = "root"; 
        String password = ""; 

        try {
            conn = DriverManager.getConnection(url, user, password);
            System.out.println("Koneksi ke database berhasil!");
        } catch (SQLException e) {
            System.out.println("Koneksi gagal: " + e.getMessage());
        }

        return conn;
    }

## Kelompok 5 PTI 2024 A
1. Felisya Kamilaturrosyidah (24050974025)
2. Bekti Rohim Ris Rindayati (24050974005)





