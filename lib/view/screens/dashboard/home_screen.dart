


import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

List<String> bannerImageLinks = [
 "https://img.freepik.com/free-psd/banner-template-online-shopping_23-2148559048.jpg?semt=ais_hybrid",
 "https://img.freepik.com/free-psd/e-commerce-concept-facebook-template_23-2151243790.jpg",
 "https://img.freepik.com/free-psd/online-shopping-banner-template-style_23-2148545562.jpg?semt=ais_hybrid",
 "https://img.freepik.com/free-psd/online-shopping-concept-banner-template_23-2148559464.jpg?semt=ais_hybrid",
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 10,
            ),
            Row(
              children: [
                const SizedBox(width: 10),
                IconButton(onPressed: () {}, icon: Icon(Icons.qr_code_scanner)),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                         color: Colors.white,
                         border: Border.all(width: 1.5, color: Colors.blue ),
                         borderRadius: BorderRadius.circular(10)
                         ),
                          child: Row(
                            children:[
                              Icon(Icons.camera_alt),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(child: TextField(
                                decoration: InputDecoration(
                                  hintText: "Search",
                                  border: InputBorder.none),
                              )),
                              IconButton(onPressed: (){}, icon: Icon(Icons.search)),
                            ],
                          ),
                          ),
                  ),
                  IconButton(
                    onPressed: () {}, icon: Icon(Icons.notifications_outlined)),
                  const SizedBox(width: 10),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            CarouselSlider(items: [
              ...bannerImageLinks.map((value) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.network(
                    value,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                );

              }),
            ], options: CarouselOptions(
              enlargeCenterPage: false,
              aspectRatio: 16 / 9,
              viewportFraction: 0.8,
            ))
          ],
        ),
      ),
    );
  }
}