


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.qr_code_scanner)),
                  Expanded(
                    child: Container(
                          color: Colors.blue,
                          child: Row(
                            children: [
                              Icon(Icons.camera_alt),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(child: TextField()),
                              Container(
                                color: Colors.blue,
                                child: Text("Search"),
                              ),
                            ],
                          ),
                          ),
                  ),
                  IconButton(onPressed: () {}, icon: Icon(Icons.notifications_outlined)),
              ],
            ),
            Center(child: Text("Home Screen")),
          ],
        ),
      ),
    );
  }
}