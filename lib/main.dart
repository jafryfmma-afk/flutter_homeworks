import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shared Preferences Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _controller = TextEditingController();
  String _savedValue = "";

  @override
  void initState() {
    super.initState();
    _loadSavedValue();
  }


  void _loadSavedValue() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _savedValue = prefs.getString('my_value') ?? "";
    });
  }

  void _saveValue() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('my_value', _controller.text);
    _loadSavedValue();
    _controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text('Shared Preferences '),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(labelText: 'Enter value'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _saveValue,
              child: Text('Save'),
            ),
            SizedBox(height: 20),
            Text('Saved value: $_savedValue'),
          ],
        ),
      ),
    );
  }
}