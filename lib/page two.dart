import 'package:flutter/material.dart';

class myapp extends StatefulWidget {
  const myapp({super.key});

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF192359),
      appBar: AppBar(),
body:Center(
  child: Text("PAGE 2"),
) ,


    );
  }
}
