import 'dart:collection';

import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController MyQuote = TextEditingController();
  String Quote = " ";
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        home:Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("MyProfile"),
        foregroundColor: Colors.white,
        backgroundColor: Colors.black26,
        centerTitle: true,
      ),
      body: Padding(

        padding: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage("assets/halo.jpg"),
                  ),

            ),
            Divider(
              color: Colors.grey,
              height: 60,
            ),
            Container(
              child: Row(
                children: [
                  Icon(Icons.account_box),
                  Text(
                    "Name: Zahoor Raza",
                    style: TextStyle(
                      color: Colors.black,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                    ),

                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  Icon(
                    Icons.mail,
                  ),
                  Text(
                    "Email: Zahoorraza@gmail.com",
                    style: TextStyle(
                      color: Colors.black,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                    ),

                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: MyQuote,
              decoration: InputDecoration(
                labelText: "Input a Quote",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed:(){
              setState(() {
                Quote = MyQuote.text;
              });
            }, child: Text("Press Me: "),),
            SizedBox(height: 20),
            Text(
              Quote,
            ),
          ],
        ),

      ),
        ),
    );
  }
}

