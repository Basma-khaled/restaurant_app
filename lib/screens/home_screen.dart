import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'profile_screen.dart'; //  إضافة 1: استدعاء شاشة الملف الشخصي 

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Your Name", style: TextStyle(fontWeight: FontWeight.bold)),
              accountEmail: Text("your.email@example.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text("Y", style: TextStyle(fontSize: 40.0, color: Colors.deepOrange)),
              ), // CircleAvatar
              decoration: BoxDecoration(color: Colors.deepOrange),
            ), // UserAccountsDrawerHeader
            ListTile(
              leading: Icon(Icons.restaurant_menu, color: Colors.deepOrange),
              title: Text('Menu'),
              onTap: () => Navigator.pop(context),
            ), // ListTile
            ListTile(
              leading: Icon(Icons.history, color: Colors.deepOrange),
              title: Text('Order History'),
              onTap: () => Navigator.pop(context),
            ), // ListTile
            ListTile(
              leading: Icon(Icons.settings, color: Colors.deepOrange),
              title: Text('Settings'),
              onTap: () => Navigator.pop(context),
            ), // ListTile
            Divider(),
            ListTile(
              leading: Icon(Icons.logout, color: Colors.grey),
              title: Text('Logout'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()),
                );
              },
            ), // ListTile
          ],
        ), // ListView
      ), // Drawer
      appBar: AppBar(
        title: const Text('Restaurant App', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              // *** إضافة 2: الانتقال لشاشة الملف الشخصي عند الضغط على الأيقونة ***
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProfileScreen()),
              );
            },
          ), // IconButton
        ],
      ), // AppBar
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Banner Section
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.deepOrange,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Welcome to\nDelicious Bites!',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'What would you like to eat today?',
                      style: TextStyle(color: Colors.white70, fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Categories Section
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Categories',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 15),
                children: [
                  _buildCategoryItem(Icons.local_pizza, 'Pizza'),
                  _buildCategoryItem(Icons.lunch_dining, 'Burgers'),
                  _buildCategoryItem(Icons.icecream, 'Desserts'),
                  _buildCategoryItem(Icons.local_drink, 'Drinks'),
                  _buildCategoryItem(Icons.set_meal, 'Seafood'),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // Popular Items Section
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Popular Items',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 10),
            _buildPopularItem('Classic Cheeseburger', 'Juicy beef patty with cheddar', '\$12.99'),
            _buildPopularItem('Margherita Pizza', 'Fresh basil and mozzarella', '\$14.50'),
            _buildPopularItem('Chocolate Lava Cake', 'Warm chocolate center', '\$7.99'),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryItem(IconData icon, String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.orange.shade100,
            child: Icon(icon, color: Colors.deepOrange, size: 30),
          ),
          const SizedBox(height: 5),
          Text(label, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }

  Widget _buildPopularItem(String title, String subtitle, String price) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 2,
      child: ListTile(
        contentPadding: const EdgeInsets.all(10),
        leading: Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: Colors.orange.shade50,
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Icon(Icons.fastfood, color: Colors.orange),
        ),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(subtitle),
        trailing: Text(
          price,
          style: const TextStyle(color: Colors.deepOrange, fontWeight: FontWeight.bold, fontSize: 16),
        ),
      ),
    );
  }
}
