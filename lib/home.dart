import 'package:flutter/material.dart';
import 'package:notekeeper/note.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Keep Note',
        ),
        actions: [
          CircleAvatar(
            backgroundImage: AssetImage('asset/avatar.jpg'),
          ),
        ],
      ),
      floatingActionButton: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => Note(),
                  ));
            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(15)),
              padding: EdgeInsets.only(
                left: 10,
              ),
              child: TextFormField(
                decoration: InputDecoration(
                    icon: Icon(Icons.search),
                    hintText: 'Search note',
                    border: InputBorder.none),
              ),
            ),
            SizedBox(
              height: 38,
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                children: [
                  _noteWidget(),
                  _noteWidget(),
                  _noteWidget(),
                  _noteWidget(),
                  _noteWidget(),
                  _noteWidget(),
                  _noteWidget(),
                  _noteWidget(),
                  _noteWidget(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _noteWidget() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              color: Colors.grey,
            )),
        height: 150,
        width: 150,
        child: Column(
          children: [
            Image.asset('asset/avatar2.jpeg', width: 100, height: 100),
            SizedBox(
              height: 10,
            ),
            Text(
              'Weekend to do list',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
