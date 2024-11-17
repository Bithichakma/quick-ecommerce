
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quick_ecommerce/view/screens/bottom_nav_bar/home/componets/home%20title.dart';
import 'package:quick_ecommerce/view/screens/bottom_nav_bar/home/componets/home_app_bar.dart';
import 'package:quick_ecommerce/view/screens/bottom_nav_bar/home/componets/home_banner_section.dart';

List<String> bannerImageLinks = [
  "https://img.freepik.com/free-psd/banner-template-online-shopping_23-2148559048.jpg?semt=ais_hybrid",
  "https://img.freepik.com/free-psd/e-commerce-concept-facebook-template_23-2151243790.jpg",
  "https://img.freepik.com/free-psd/online-shopping-banner-template-style_23-2148545562.jpg?semt=ais_hybrid",
  "https://img.freepik.com/free-psd/online-shopping-concept-banner-template_23-2148559464.jpg?semt=ais_hybrid",
];

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentSelectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            HomeAppBar(),
            SizedBox(
              height: 10,
            ),
            HomeBannerSection(),
            DealsSection()
          ],
        ),
      ),
    );
  }
}

class DealsSection extends StatelessWidget {
  const DealsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HomeTitle(title: "New Deals Everyday"),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(10)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "7% OFF",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                    Text(
                      "Min. spend ৳ 3990 ",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                          color: Colors.blue),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Quick Voucher",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.orange),
                    ),
                    Container(
                      //color: Colors.blue,
                      width: 120,
                      child: Text(
                        "10-30-2024 to 11-06-2024",
                        maxLines: 1,
                        style: TextStyle(
                          overflow: TextOverflow.ellipsis,
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                            color: Colors.blue),
                      ),
                    ),
                  ],
                ),
               GestureDetector(onTap: () {}, 
                child: Text("Collect all"),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          HomeTitle(title: "Best Deals"),
          Container(
            color: Colors.deepPurple,
            height: 100,
            width: 200,
          ),
        ],
      ),
    );
  }
}