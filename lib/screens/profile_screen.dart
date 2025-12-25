import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // شريط علوي بسيط مع زر للرجوع
      appBar: AppBar(
        title: Text('My Profile', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.white,
        elevation: 1,
      ), // AppBar
      body: ListView(
        children: [
          SizedBox(height: 30),
          // صورة الملف الشخصي
          CircleAvatar(
            radius: 70,
            backgroundColor: Colors.deepOrange.shade100,
            child: CircleAvatar(
              radius: 65,
              backgroundImage: NetworkImage('https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?w=800'), // صورة مستخدم افتراضية
            ), // CircleAvatar
          ), // CircleAvatar
          SizedBox(height: 15),
          // اسم المستخدم والبريد الإلكتروني
          Center(
            child: Text(
              'Your Name',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ), // Text
          ), // Center
          Center(
            child: Text(
              'your.email@example.com',
              style: TextStyle(color: Colors.grey[600], fontSize: 16),
            ), // Text
          ), // Center
          SizedBox(height: 30),
          Divider(),
          // خيارات الملف الشخصي
          _buildProfileOption(Icons.person_outline, 'Edit Profile'),
          _buildProfileOption(Icons.shopping_bag_outlined, 'My Orders'),
          _buildProfileOption(Icons.favorite_border, 'Favorites'),
          _buildProfileOption(Icons.location_on_outlined, 'Shipping Address'),
          _buildProfileOption(Icons.payment_outlined, 'Payment Methods'),
          _buildProfileOption(Icons.notifications_none, 'Notifications'),
          Divider(),
          _buildProfileOption(Icons.help_outline, 'Help & Support'),
          _buildProfileOption(Icons.info_outline, 'About Us'),
          SizedBox(height: 20),
        ],
      ), // ListView
    ); // Scaffold
  }

  // ويدجت مساعدة لبناء خيارات القائمة
  Widget _buildProfileOption(IconData icon, String title) {
    return ListTile(
      leading: Icon(icon, color: Colors.deepOrange),
      title: Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
      trailing: Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
      onTap: () {
      
      },
    ); // ListTile
  }
}
