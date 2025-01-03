import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PromoPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PromoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PROMO',
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // XP Progress
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.orange.shade100,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Icon(Icons.star, color: Colors.orange),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('121 XP to your next treasure'),
                          SizedBox(height: 5),
                          LinearProgressIndicator(
                            value: 0.6,
                            color: Colors.orange,
                            backgroundColor: Colors.orange.shade200,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),

              // Vouchers and Missions
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildInfoCard('13', 'Vouchers', Colors.red),
                  _buildInfoCard('0', 'Langganan', Colors.blue),
                  _buildInfoCard('0', 'Mission', Colors.green),
                ],
              ),
              SizedBox(height: 20),

              // Promo Code Input
              TextField(
                decoration: InputDecoration(
                  hintText: 'Masukan kode promo',
                  prefixIcon: Icon(Icons.local_offer),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              SizedBox(height: 20),

              // Promo Tabs
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _buildTabButton('Apa aja', isSelected: true),
                    _buildTabButton('GoFood'),
                    _buildTabButton('GoPay'),
                    _buildTabButton('GoPayLater'),
                    _buildTabButton('GoRide'),
                  ],
                ),
              ),
              SizedBox(height: 20),

              // Promo Section
              Text('Biar makin hemat', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              _buildPromoCard('lib/design_system/assets/ilustration/promo1.png'),
              SizedBox(height: 10),
              _buildPromoCard('lib/design_system/assets/ilustration/promo2.png'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfoCard(String count, String title, Color color) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(16),
        margin: EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
          color: color.withOpacity(0.1),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Text(count, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: color)),
            Text(title, style: TextStyle(color: Colors.black54)),
          ],
        ),
      ),
    );
  }

  Widget _buildTabButton(String label, {bool isSelected = false}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      margin: EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        color: isSelected ? Colors.green : Colors.grey.shade200,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Text(
        label,
        style: TextStyle(color: isSelected ? Colors.white : Colors.black),
      ),
    );
  }

  Widget _buildPromoCard(String imagePath) {
    return Container(
      height: 150,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
