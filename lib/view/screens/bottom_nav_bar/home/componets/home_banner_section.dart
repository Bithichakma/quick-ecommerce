
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
List<String> bannerImageLinks = [
  "https://img.freepik.com/free-psd/banner-template-online-shopping_23-2148559048.jpg?semt=ais_hybrid",
  "https://img.freepik.com/free-psd/e-commerce-concept-facebook-template_23-2151243790.jpg",
  "https://img.freepik.com/free-psd/online-shopping-banner-template-style_23-2148545562.jpg?semt=ais_hybrid",
  "https://img.freepik.com/free-psd/online-shopping-concept-banner-template_23-2148559464.jpg?semt=ais_hybrid",
];

class HomeBannerSection extends StatefulWidget {
  const HomeBannerSection({super.key});

  @override
  State<HomeBannerSection> createState() => _HomeBannerSectionState();
}

class _HomeBannerSectionState extends State<HomeBannerSection> {
  int currentSelectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
            items: [
              ...bannerImageLinks.map((value) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      value,
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                );
              }),
            ],
            options: CarouselOptions(
              enlargeCenterPage: false,
              aspectRatio: 16 / 9,
              onPageChanged: (index, reason) {
                currentSelectedIndex = index;
                setState(() {});
              },
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              viewportFraction: 0.8,
            )),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...bannerImageLinks.asMap().entries.map((Value) {
              return Container(
                height: 10,
                width: 10,
                margin:
                    const EdgeInsets.symmetric(vertical: 10.0, horizontal: 4.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: currentSelectedIndex == Value.key
                        ? Colors.blue
                        : Colors.orange),
              );
            })
          ],
        )
      ],
    );
  }
}