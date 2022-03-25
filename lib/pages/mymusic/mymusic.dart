import 'package:flutter/material.dart';

class MyMusic extends StatefulWidget {
  const MyMusic({Key? key}) : super(key: key);

  @override
  State<MyMusic> createState() => _MyMusicState();
}

class _MyMusicState extends State<MyMusic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900]!,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900]!,
        title: Text('My Music'),
      ),
    );
  }
}
