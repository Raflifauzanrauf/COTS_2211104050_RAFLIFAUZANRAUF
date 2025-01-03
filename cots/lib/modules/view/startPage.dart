import 'package:cots/modules/view/loginPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';  

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
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
                Image.asset(
                  'lib/design_system/icons/country.png',
                  width: 25, // Sesuaikan ukuran jika diperlukan
                  height: 25,
                ),
              ],
            ),
            SizedBox(height: 50,),
            Center(
              child: Column(
                children: [
                  Container(
                    child: Image.asset(
                        'lib/design_system/assets/ilustration/image.png'),
                  ),
                  SizedBox(height: 50,),
                  Container(
                    child: Column(
                      children: [
                        Text(
                          'Selamat datang di gojek',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 20,),
                        Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 15,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 20,),
                      ],
                    ),
                  ),
                  Container(
                    child: Center(
                      child: Column(
                        children: [
                          // Tombol MASUK
                          SizedBox(
                            width: double.infinity, // Lebar tombol mengikuti layar
                            child: ElevatedButton(
                              onPressed: () {
                                // Navigate to LoginPage using GetX
                                Get.to(() => LoginPage());
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Colors.green, // Warna latar belakang
                                foregroundColor:
                                    Colors.white, // Warna teks
                                padding: EdgeInsets.symmetric(
                                  vertical: 15.0, // Tinggi tombol
                                ),
                              ),
                              child: Text('MASUK'),
                            ),
                          ),
                          SizedBox(height: 10,),
                          // Tombol Belum ada akun?
                          SizedBox(
                            width: double.infinity, // Lebar tombol mengikuti layar
                            child: ElevatedButton(
                              onPressed: () {
                                print('LOGIN');
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Colors.white, // Warna latar belakang
                                foregroundColor:
                                    Colors.green, // Warna teks
                                padding: EdgeInsets.symmetric(
                                  vertical: 15.0, // Tinggi tombol
                                ),
                              ),
                              child: Text('Belum Punya Akun?'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    child: Text( 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
