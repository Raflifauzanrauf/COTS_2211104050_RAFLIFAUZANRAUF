import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200], // Background warna abu-abu muda
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 40.0, 16.0, 16.0), // Padding atas lebih besar
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Search Bar
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Find services, food, or places',
                        prefixIcon: Icon(Icons.search),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  Icon(Icons.notifications, size: 28, color: Colors.orange), // Change color of notification icon
                ],
              ),
              SizedBox(height: 24), // Tambahkan jarak setelah Search Bar

              // GoPay Card
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.blue[800],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'gopay',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Rp7.434',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Tap for history',
                          style: TextStyle(color: Colors.white70, fontSize: 12),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.yellow, size: 20),
                        SizedBox(width: 4),
                        Text(
                          'Top',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24), // Tambahkan jarak setelah GoPay Card

              // Shortcut Menu
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                ),
                itemCount: 8,
                itemBuilder: (context, index) {
                  final icons = [
                    Icons.directions_car,
                    Icons.restaurant,
                    Icons.fastfood,
                    Icons.local_shipping,
                    Icons.shopping_bag,
                    Icons.phone_android,
                    Icons.sports_esports,
                    Icons.card_membership,
                  ];

                  final labels = [
                    'GoRide',
                    'GoCar',
                    'GoFood',
                    'GoSend',
                    'GoMart',
                    'GoPulsa',
                    'GoClub',
                    'More',
                  ];

                  // Define a list of colors for icons
                  final iconColors = [
                    Colors.red,
                    Colors.green,
                    Colors.orange,
                    Colors.blue,
                    Colors.purple,
                    Colors.cyan,
                    Colors.pink,
                    Colors.teal,
                  ];

                  return Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 28,
                        child: Icon(
                          icons[index],
                          size: 28,
                          color: iconColors[index], // Set the icon color dynamically
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        labels[index],
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  );
                },
              ),
              SizedBox(height: 24), // Tambahkan jarak setelah Shortcut Menu

              // XP Progress Bar
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '121 XP to your next treasure',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(height: 8),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: LinearProgressIndicator(
                        value: 0.7,
                        backgroundColor: Colors.grey[300],
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24), // Tambahkan jarak setelah Progress Bar

              // Promo Section
              Text(
                'Makin Seru 😊',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 8),
              Container(
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    image: AssetImage('lib/design_system/assets/ilustration/promo1.png'), // Menggunakan assets lokal
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
