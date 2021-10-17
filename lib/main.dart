import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var images = ["assets/one.jpg", "assets/two.jpg", "assets/three.jpg"];
  var title = ["Men's", "Men's FuelCell", "Side blocks"];
  var subtitle = ["FuelCell Echo", "Rebel", "1200"];
  var prices = ["\$99.99", "\$129.99", "\$139.99"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Image.asset('assets/icon.png'),
          title: Row(
            children: [
              const Text(
                "mobi",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
              ),
              Text(
                'sport',
                style: TextStyle(color: Colors.grey.shade800),
              )
            ],
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 12),
              child: Icon(
                Icons.search,
                color: Colors.black,
              ),
            )
          ],
        ),
        body: Container(
          color: Colors.grey.shade50,
          child: Column(
            children: [
              const ListTile(
                leading: Text(
                  "Running",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25),
                ),
                trailing: Text(
                  "15 results",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: images.length,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 120,
                      margin: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(width: 2, color: Colors.white24),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3))
                          ]),
                      child: Row(
                        children: [
                          Image.asset(
                            images[index],
                            width: 150,
                            height: 150,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                title[index],
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                              Text(
                                subtitle[index],
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  Icon(Icons.star, size: 15),
                                  Icon(Icons.star, size: 15),
                                  Icon(Icons.star, size: 15),
                                  Icon(Icons.star, size: 15),
                                  Icon(Icons.star, size: 15)
                                ],
                              ),
                              Text(
                                prices[index],
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 22),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
