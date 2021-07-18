import 'package:ebook/theme.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  final String title;
  final bool isActive;

  Categories({
    this.title,
    this.isActive,
  });
  @override
  Widget build(BuildContext context) {
    return isActive
        ? Container(
            width: 79,
            height: 41,
            decoration: BoxDecoration(
              color: greenColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                title,
                style: titleTextStyle.copyWith(
                  fontSize: 14,
                  color: whiteColor,
                ),
              ),
            ),
          )
        : Text(
            title,
            style: titleTextStyle.copyWith(
              fontSize: 12,
              color: greyColor,
            ),
          );
  }
}
