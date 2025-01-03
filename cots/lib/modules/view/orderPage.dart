import 'package:flutter/material.dart';

class OrderPage extends StatelessWidget {
  final List<Map<String, dynamic>> orders = [
    {
      'restaurantName': 'Ayam Benjoss',
      'location': 'Kedungkandang',
      'customerName': 'Nadia Putri',
      'items': 2,
      'price': 58800,
      'status': 'Makanan sudah diantar',
    },
    // Tambahkan data pesanan lainnya di sini
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pesanan',
        style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: orders.length,
        itemBuilder: (context, index) {
          final order = orders[index];
          return Card(
            elevation: 4.0,
            margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.restaurant, color: Colors.green, size: 40.0),
                      SizedBox(width: 16.0),
                      Text(
                        order['restaurantName'],
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    '${order['location']} - ${order['customerName']}',
                    style: TextStyle(fontSize: 14.0, color: Colors.grey[700]),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'Items: ${order['items']}',
                    style: TextStyle(fontSize: 14.0, color: Colors.grey[700]),
                  ),
                  SizedBox(height: 8.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Rp ${order['price']}',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 12.0),
                        decoration: BoxDecoration(
                          color: Colors.green[100],
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Text(
                          order['status'],
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.green[800],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
