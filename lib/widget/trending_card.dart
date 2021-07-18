import 'package:ebook/theme.dart';
import 'package:flutter/material.dart';

class TrendingCard extends StatelessWidget {
  final String imageUrl;
  final String actor;
  final String title;

  TrendingCard({
    this.imageUrl,
    this.actor,
    this.title,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 207,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              imageUrl,
              width: 110,
              height: 160,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            actor,
            style: subtitleTextStyle,
          ),
          Text(
            title,
            style: titleTextStyle,
          ),
        ],
      ),
    );
  }
}
