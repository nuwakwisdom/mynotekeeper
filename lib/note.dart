import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:notekeeper/new.dart';

class Note extends StatefulWidget {
  @override
  _NoteState createState() => _NoteState();
}

class _NoteState extends State<Note> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Write Notes',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.normal,
          ),
        ),
        actions: [
          IconButton(
              icon: Icon(Icons.save, color: Colors.white),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => New(),
                    ));
              }),
          Icon(Icons.share),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              child: TextFormField(
                minLines: null,
                maxLines: null,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                  hintText: 'Title',
                  hintStyle: TextStyle(
                      fontSize: 30,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple),
                  border: new OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(20),
                    ),
                    borderSide: new BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: TextFormField(
                minLines: 10,
                maxLines: 1000,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                  border: new OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(20),
                    ),
                    borderSide: new BorderSide(
                      color: Colors.deepPurple,
                      width: 1.0,
                    ),
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
