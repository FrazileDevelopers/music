import 'package:flutter/material.dart';

class Location extends StatefulWidget {
  const Location({Key? key}) : super(key: key);

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900]!,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900]!,
        title: Text('Location'),
      ),
    );
  }
}
