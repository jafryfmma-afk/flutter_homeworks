import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.person_pin_circle, size: 34, color: Colors.pink),
          SizedBox(height: 20),
          Text(
            'الحساب',
            style: TextStyle(fontSize: 24, color: Colors.pink),
          )
        ],
      ),
    );
  }
}