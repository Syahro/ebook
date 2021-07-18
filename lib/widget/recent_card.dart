import 'package:ebook/theme.dart';
import 'package:flutter/material.dart';

class RecentCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String downloadPercent;

  RecentCard({
    this.imageUrl,
    this.title,
    this.downloadPercent,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15),
      width: 228,
      height: 150,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: borderColor),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              imageUrl,
              width: 90,
              height: 120,
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Padding(
            padding: EdgeInsets.only(top: 15, bottom: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: titleTextStyle.copyWith(fontSize: 14),
                ),
                CircularProgressIndicator(
                  value: 0.8,
                ),
                Text(
                  '$downloadPercent% Completed',
                  style: subtitleTextStyle.copyWith(fontSize: 12),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
