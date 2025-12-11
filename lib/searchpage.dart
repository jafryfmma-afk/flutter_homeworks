import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.search_rounded, size: 34, color: Colors.teal),
          SizedBox(height: 20),
          Text(
            'البحث',
            style: TextStyle(fontSize: 24, color: Colors.teal),
          )
        ],
      ),
    );
  }
}