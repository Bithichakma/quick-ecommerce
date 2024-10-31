
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 10),
        IconButton(onPressed: () {}, icon: Icon(Icons.qr_code_scanner)),
        Expanded(
          child: Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(width: 1.5, color: Colors.blue),
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [
                Icon(Icons.camera_alt),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: TextField(
                  decoration: InputDecoration(
                      hintText: "Search", border: InputBorder.none),
                )),
                IconButton(onPressed: () {}, icon: Icon(Icons.search)),
              ],
            ),
          ),
        ),
        IconButton(onPressed: () {}, icon: Icon(Icons.notifications_outlined)),
        const SizedBox(width: 10),
      ],
    );
  }
}