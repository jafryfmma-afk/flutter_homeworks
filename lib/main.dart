import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductListing(),
    );
  }
}

class ProductListing extends StatelessWidget {
  final List products = [
    {
      "name": "iPhone",
      "desc": "iPhone is the stylist phone ever",
      "price": "1000",
      "image": "lib/images/iPhone.jpg",
    },
    {
      "name": "Pixel",
      "desc": "Pixel is the most featureful phone ever",
      "price": "800",
      "image": "lib/images/Pixel.jpg",
    },
    {
      "name": "Laptop",
      "desc": "Laptop is the most productive development tool",
      "price": "2000",
      "image": "lib/images/laptob.jpg",
    },
    {
      "name": "Tablet",
      "desc": "Tablet is the most useful device ever for meeting",
      "price": "1500",
      "image": "lib/images/tablet.jpg",
    },
    {
      "name": "Pendrive",
      "desc": "iPhone is the stylist phone ever",
      "price": "100",
      "image": "lib/images/pendrive.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Listing"),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ProductCard(
            name: products[index]["name"],
            desc: products[index]["desc"],
            price: products[index]["price"],
            image: products[index]["image"],
          );
        },
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String name;
  final String desc;
  final String price;
  final String image;

  ProductCard({
    required this.name,
    required this.desc,
    required this.price,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Container(
        padding: EdgeInsets.all(10),
        child: Row(
          children: [

            Container(
              width: 120,
              height: 120,
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),

            SizedBox(width: 15),


            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name,
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: 5),
                  Text(desc, style: TextStyle(fontSize: 14)),
                  SizedBox(height: 5),
                  Text("Price: $price",
                      style: TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}