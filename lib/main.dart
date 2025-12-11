import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp ({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String zekr = "ابدأ الذكر";
  int count = 0;

  void changeZekr(String newZekr) {
    setState(() {
      if (zekr == newZekr) {
        count++;
      } else {
        zekr = newZekr;
        count = 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text("مسبحة الكترونية"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                zekr,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text(
                "$count",
                style: TextStyle(fontSize: 35, color: Colors.black),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      changeZekr("سبحان الله");
                    },
                    child: Text("سبحان الله"),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      changeZekr("الحمد لله");
                    },
                    child: Text("الحمد لله"),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      changeZekr("الله أكبر");
                    },
                    child: Text("الله أكبر"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}