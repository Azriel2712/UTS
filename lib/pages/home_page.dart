import 'package:flutter/material.dart';
import 'login_page.dart';

class HomePage extends StatelessWidget {
  void _logout(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () => _logout(context),
          ),
        ],
      ),
      body: Center(
        child: Text(
          'Welcome to the Home Page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
