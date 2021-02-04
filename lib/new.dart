import 'dart:ui';

import 'package:flutter/material.dart';

class New extends StatefulWidget {
  @override
  _NewState createState() => _NewState();
}

class _NewState extends State<New> {
  @override
  Widget build(BuildContext context) {
    var container = Container();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white30,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('nuwak, wisdom'),
              accountEmail: Text('Nuwakwisdom@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('asset/avatar.jpg'),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: Container(
                width: 160,
                height: 160,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('asset/avatar.jpg'), fit: BoxFit.fill),
                  color: Colors.blueAccent,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Nuwak, wisdom',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            Text(
              '@wisdomnuwak',
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 100,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: ListTile(
                    leading: Icon(Icons.money_off_rounded),
                    title: Text('Add Money'),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 100,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: ListTile(
                    leading: Icon(Icons.book_sharp),
                    title: Text('Pass Book'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
