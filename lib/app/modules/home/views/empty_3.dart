import 'package:flutter/material.dart';

class Empty_3 extends StatefulWidget {
  const Empty_3({super.key});

  @override
  State<Empty_3> createState() => _Empty_3State();
}

class _Empty_3State extends State<Empty_3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 300,
        height: 200,
        decoration: BoxDecoration(
            color: Colors.blue
        ),
        child: Center(child: Text("Empty_3",style: TextStyle(color: Colors.white70),)),
      ),
    );
  }
}
