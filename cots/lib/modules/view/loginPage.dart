import 'package:cots/modules/view/mainPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';  

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween, // Atur justify content
              children: [
                Image.asset(
                  'lib/design_system/icons/gojek.png',
                  width: 80, // Sesuaikan ukuran jika diperlukan
                  height: 80,
                ),
                Icon(Icons.info),
              ],
            ),
            SizedBox(height: 50),
            Align(
              alignment: Alignment.centerLeft, // Atur agar teks rata kiri
              child: Text(
                'Login',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 5),
            Align(
              alignment: Alignment.centerLeft, // Atur agar teks rata kiri
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.centerLeft, // Atur agar teks rata kiri
              child: Text(
                'Phone number',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                  color: Colors.black,
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  child: Row(
                    children: [
                      Image.asset(
                        'lib/design_system/icons/image.png',
                        width: 50, // Sesuaikan ukuran jika diperlukan
                        height: 50,
                      ),
                      Text(
                        '+62',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10), // Memberikan jarak antara gambar dan TextField
                Expanded(
                  child: TextField(
                    controller: _controller,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      labelText: 'Masukan Nomor Telepon',
                      suffixIcon: IconButton(
                        icon: Icon(Icons.clear), // Ikon silang
                        onPressed: () {
                          _controller.clear(); // Menghapus isi TextField
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Issue with number ?',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.green,
                  decoration: TextDecoration.underline, // Menambahkan underline
                  decorationColor: Colors.green, // Warna garis bawah hijau
                  decorationThickness: 2, // Ketebalan garis bawah
                  height: 1.5, // Menambahkan jarak antara teks dan underline (opsional)
                ),
              ),
            ),
            Spacer(), // Spacer untuk mendorong tombol ke bawah
            SizedBox(
              width: double.infinity, // Lebar tombol mengikuti layar
              child: ElevatedButton(
                onPressed: () {
                  // Navigate to MainPage using GetX
                  Get.to(() => MainPage());
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green, // Warna latar belakang hijau
                  foregroundColor: Colors.white, // Warna teks putih
                  padding: EdgeInsets.symmetric(
                    vertical: 15.0, // Tinggi tombol
                  ),
                ),
                child: Text('Continue'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
