import 'package:ebook/theme.dart';
import 'package:flutter/material.dart';

class FloatingButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: whiteColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 1,
            spreadRadius: 1,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 66),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.home,
              color: greenColor,
              size: 28,
            ),
            Icon(
              Icons.bookmark_border,
              color: greyColor,
              size: 28,
            ),
            Icon(
              Icons.router_outlined,
              color: greyColor,
              size: 28,
            ),
            Icon(
              Icons.person_outline,
              color: greyColor,
              size: 28,
            ),
          ],
        ),
      ),
    );
  }
}
