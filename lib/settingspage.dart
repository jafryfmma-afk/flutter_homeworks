import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.settings_suggest, size: 34, color: Colors.orange),
          SizedBox(height: 20),
          Text(
            'الإعدادات',
            style: TextStyle(fontSize: 24, color: Colors.orange),
          )
        ],
      ),
    );
  }
}