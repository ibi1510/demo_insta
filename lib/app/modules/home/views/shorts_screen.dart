import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShortsPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    "https://img.freepik.com/free-photo/charming-girl-stands-street_8353-5373.jpg?w=360&t=st=1706474024~exp=1706474624~hmac=5f7137c960d125970f149d15d5f9a75fdd76169838a36e57622b9351c62532f3"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 16, right: 16),
                child: Row(
                  children: [
                    Text("Shorts",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w500)),
                    Spacer(),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.linked_camera,
                          color: Colors.white,
                        )),
                  ],
                ),
              ),
              SizedBox(height: 300),
              Center(
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.play_circle_outline_rounded,
                      color: Colors.white,
                      size: 45,
                    )),
              ),
              SizedBox(height: 100),
              Container(
                height: 231,
                width: 399,
                color: Colors.transparent,
                child: Row(
                  children: [
                    Container(
                      height: 230,
                      width: 322,
                      color: Colors.transparent,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 110),
                            child: ListTile(
                              leading: CircleAvatar(
                                radius: 20,
                                backgroundImage: NetworkImage(
                                  "https://beingselfish.in/wp-content/uploads/2023/07/cute-girl-dp146.jpg",
                                ),
                              ),
                              title: Text(
                                "jenny_wirosa",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              subtitle: Text(
                                "Videographer",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                ),
                              ),
                              trailing: Container(
                                height: 40,
                                width: 75,
                                child: Center(
                                  child: Text(
                                    "Follow",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xffff4d67),
                                  borderRadius: BorderRadius.circular(40),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  radius: 12,
                                  backgroundImage: NetworkImage(
                                    "https://images.unsplash.com/photo-1615022702095-ff2c036f3360?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                                  ),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "Favorite Girl by Justin Bieber",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 70,
                      height: 240,
                      color: Colors.transparent,
                      child: Column(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.heart_broken,
                              color: Colors.red,
                              size: 30,
                            ),
                          ),
                          Text("12,267", style: TextStyle(color: Colors.white)),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.comment_outlined,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                          Text("9,237", style: TextStyle(color: Colors.white)),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.ios_share_sharp,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.share_arrival_time_outlined,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
