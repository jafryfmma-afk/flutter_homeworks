import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.home_filled, size: 34, color: Colors.indigo),
          SizedBox(height: 20),
          Text(
            'الرئيسية',
            style: TextStyle(fontSize: 24, color: Colors.indigo),
          )
        ],
      ),
    );
  }
}