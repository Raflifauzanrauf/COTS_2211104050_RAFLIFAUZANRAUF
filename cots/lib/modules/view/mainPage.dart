import 'package:cots/modules/view/homePage.dart';
import 'package:cots/modules/view/orderPage.dart';
import 'package:cots/modules/view/promoPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainPage extends StatelessWidget {
  final RxInt selectedIndex = 0.obs;

  final List<Widget> pages = [
    Homepage(),
    PromoPage(),
    OrderPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: pages[selectedIndex.value],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex.value,
          onTap: (index) {
            selectedIndex.value = index;
          },
          selectedItemColor: Colors.green,  // Set active icon color to green
          unselectedItemColor: Colors.grey, // Set inactive icon color to grey
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_offer),
              label: 'Promo',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Order',
            ),
          ],
        ),
      ),
    );
  }
}
