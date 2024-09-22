import 'package:flutter/material.dart';

import 'empty_1.dart';
import 'empty_2.dart';
import 'empty_3.dart';
import 'reels.dart';
import 'search_screen.dart';

class Appbar extends StatefulWidget {
  const Appbar({super.key});

  @override
  State<Appbar> createState() => _AppbarState();
}

class _AppbarState extends State<Appbar> {
  TextEditingController search = TextEditingController();
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 0,
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            title: Center(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  width: 350,
                  height: 100,
                  decoration: BoxDecoration(
                      color: Color(0xfff5f5f5),
                      borderRadius: BorderRadius.circular(40)),
                  child: Center(
                    child: TextField(
                      onTap: () {},
                      controller: search,
                      decoration: InputDecoration(
                          filled: true,
                          prefixIcon: Icon(Icons.search, color: Colors.black45),
                          fillColor: Color(0xfff5f5f5),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xfff5f5f5)),
                              borderRadius: BorderRadius.circular(40)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xfff5f5f5)),
                              borderRadius: BorderRadius.circular(40)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xfff5f5f5)),
                              borderRadius: BorderRadius.circular(40))),
                    ),
                  ),
                ),
              ),
            ),
            bottom: TabBar(
                labelColor: Colors.red,
                indicatorColor: Colors.red,
                unselectedLabelColor: Colors.black45,
                physics: BouncingScrollPhysics(),
                tabs: [
                  Tab(
                    child: Icon(Icons.add_card),
                  ),
                  Tab(
                    child: Icon(Icons.person),
                  ),
                  Tab(
                    child: Icon(Icons.fiber_smart_record),
                  ),
                  Tab(
                    child: Icon(Icons.fire_hydrant_alt_sharp),
                  ),
                  Tab(
                    child: Icon(Icons.location_on),
                  ),
                ]),
          ),
          body: TabBarView(physics: BouncingScrollPhysics(), children: [
            NotiReels(),
            SearchPage(),
            Empty_1(),
            Empty_2(),
            Empty_3(),
          ]),
        ));
  }
}
