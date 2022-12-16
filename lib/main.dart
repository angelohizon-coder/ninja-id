import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: NinjaID(),
    ),
  );
}

class NinjaID extends StatefulWidget {
  const NinjaID({Key? key}) : super(key: key);

  @override
  _NinjaIDState createState() => _NinjaIDState();
}

class _NinjaIDState extends State<NinjaID> {
  int level = 0;

  void increaseLevel() {
    level = level + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.grey[850],
        centerTitle: true,
        elevation: 0,
        title: Text("Ninja Identification"),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("images/zenzou_1x1.jpg"),
                radius: 65.0,
              ),
            ),
            Divider(
              color: Colors.grey[800],
              height: 90.0,
              thickness: 3.0,
            ),
            Text(
              "NAME",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "Hattori Zenzou",
              style: TextStyle(
                color: Colors.amberAccent,
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              "Current Ninja Level",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "Level $level",
              style: TextStyle(
                color: Colors.amberAccent,
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey[300],
                  size: 24.0,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  "hattori.zenzou@gmail.com",
                  style: TextStyle(
                    color: Colors.grey[300],
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey[800],
        onPressed: () {
          setState(() {
            increaseLevel();
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
