import 'package:f/auth.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(abc());
}

class abc extends StatelessWidget {
  const abc({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: auth(),
    );
  }
}
