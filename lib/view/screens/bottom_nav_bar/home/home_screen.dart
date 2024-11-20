import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:quick_ecommerce/view/screens/bottom_nav_bar/home/componets/deals_section.dart';
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

class FlashSaleSection extends StatelessWidget {
  const FlashSaleSection(
      {super.key,
      required this.ImageLink,
      required this.mainPrice,
      required this.oldPrice});
  final String ImageLink;
  final String mainPrice;
  final String oldPrice;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.all(6),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HomeTitle(title: "Flash Sale"),
                TextButton(onPressed: () {}, child: Text("shop more"))
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FlashSalePtoductCard(),
                FlashSalePtoductCard(),
                FlashSalePtoductCard(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class FlashSalePtoductCard extends StatelessWidget {
  const FlashSalePtoductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(6),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
                width: 100,
                height: 100,
                fit: BoxFit.cover,
                "https://www.lightxeditor.com/photo-editing/ai-product-photo-editor/"),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "$mainPrice tk",
            style: TextStyle(color: Colors.orange),
          ),
          Text(
            "$oldPrice tk",
            style: TextStyle(
                decoration: TextDecoration.lineThrough, color: Colors.grey),
          )
        ],
      ),
    );
  }
}
