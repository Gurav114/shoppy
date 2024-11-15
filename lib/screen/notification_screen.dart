import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  // Sample data for notifications
  final List<Map<String, String>> notifications = [
    {
      'image': 'assets/images/shirt1.png',
      'title': 'New Trendy Clothes',
      'description': 'Check out the latest fashion arrivals!',
      'date': '2024-11-01',
      'offer': 'Festive Offer: 20% off'
    },
    {
      'image': 'assets/images/shirt2.png',
      'title': 'Flash Sale Alert',
      'description': 'Up to 50% off on selected items!',
      'date': '2024-11-10',
      'offer': 'Limited Time Offer'
    },
    {
      'image': 'assets/images/shirt4.png',
      'title': 'Festival Collection',
      'description': 'Celebrate with our exclusive festival wear!',
      'date': '2024-11-20',
      'offer': 'Special Discount: 30% off'
    },
    {
      'image': 'assets/images/shirt2.png',
      'title': 'Flash Sale Alert',
      'description': 'Up to 50% off on selected items!',
      'date': '2024-11-10',
      'offer': 'Limited Time Offer'
    },
    {
      'image': 'assets/images/shirt4.png',
      'title': 'Flash Sale Alert',
      'description': 'Up to 50% off on selected items!',
      'date': '2024-11-10',
      'offer': 'Limited Time Offer'
    },
    {
      'image': 'assets/images/shirt1.png',
      'title': 'Flash Sale Alert',
      'description': 'Up to 50% off on selected items!',
      'date': '2024-11-10',
      'offer': 'Limited Time Offer'
    },
    {
      'image': 'assets/images/shirt3.png',
      'title': 'Flash Sale Alert',
      'description': 'Up to 50% off on selected items!',
      'date': '2024-11-10',
      'offer': 'Limited Time Offer'
    },
    // Add more notifications as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
        backgroundColor: Colors.orange,
      ),
      body: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          final notification = notifications[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  // Image
                  Image.asset(
                    notification['image']!,
                    height: 80,
                    width: 80,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(width: 10),
                  // Notification details
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          notification['title']!,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          notification['description']!,
                          style: const TextStyle(fontSize: 14),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          'Offer: ${notification['offer']}',
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.redAccent,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          'Date: ${notification['date']}',
                          style: const TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
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
