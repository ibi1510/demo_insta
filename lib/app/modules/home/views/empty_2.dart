import 'package:flutter/material.dart';

class Empty_2 extends StatefulWidget {
  const Empty_2({super.key});

  @override
  State<Empty_2> createState() => _Empty_2State();
}

class _Empty_2State extends State<Empty_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 300,
        height: 200,
        decoration: BoxDecoration(
            color: Colors.blue
        ),
        child: Center(child: Text("Empty_2")),
      ),
    );
  }
}
