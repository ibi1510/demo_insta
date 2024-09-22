import 'package:flutter/material.dart';

class NotiReels extends StatefulWidget {
  const NotiReels({super.key});

  @override
  State<NotiReels> createState() => _NotiReelsState();
}

class _NotiReelsState extends State<NotiReels> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(initialIndex: 0, length: 2, child: Scaffold(
      appBar: AppBar(
        title: Text("Reels",style: TextStyle(color: Colors.purple)),
        backgroundColor: Colors.greenAccent,
        centerTitle: true,
        bottom: TabBar(
            padding: EdgeInsets.all(5),
            dividerColor: Colors.deepOrange,
            // dividerHeight: 1,
            indicatorColor: Colors.green,
            // indicatorWeight: 5,
            indicator: BoxDecoration(
              // color: Colors.blue,
                borderRadius: BorderRadius.circular(10)
            ),
            // unselectedLabelColor: Colors.orange,
            unselectedLabelStyle: TextStyle(color: Colors.red),
            // labelStyle: TextStyle(color: Colors.indigo,fontSize: 16),
            physics: BouncingScrollPhysics(),
            tabs: [
              Tab(
                child: Text("Notification"),
              ),
              Tab(
                child: Text("Reels"),
              ),
            ]),
      ),
    ));
  }
}
