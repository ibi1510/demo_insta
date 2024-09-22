import 'package:flutter/material.dart';

class Empty_1 extends StatefulWidget {
  const Empty_1({super.key});

  @override
  State<Empty_1> createState() => _Empty_1State();
}

class _Empty_1State extends State<Empty_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Container(
          width: 300,
          height: 200,
          decoration: BoxDecoration(
              color: Colors.blue
          ),
          child: Center(child: Text("Empty_1")),
        ),
      ),
    );
  }
}
