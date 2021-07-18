import 'package:ebook/theme.dart';
import 'package:ebook/widget/categories.dart';
import 'package:ebook/widget/floating_button.dart';
import 'package:ebook/widget/recent_card.dart';
import 'package:ebook/widget/trending_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: defaultMargin),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 430,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Categories(
                              title: 'All Books',
                              isActive: true,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Categories(
                              title: 'Comic',
                              isActive: false,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Categories(
                              title: 'Novel',
                              isActive: false,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Categories(
                              title: 'Manga',
                              isActive: false,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Categories(
                              title: 'Fairy Tales',
                              isActive: false,
                            ),
                            SizedBox(
                              width: defaultMargin,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Trending Now',
                        style: titleTextStyle,
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            TrendingCard(
                              imageUrl: 'assets/book3.png',
                              actor: 'Guy Kawasaki',
                              title: 'Enchantment',
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            TrendingCard(
                              imageUrl: 'assets/book4.png',
                              actor: 'Aaron Mahnke',
                              title: 'Lore',
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            TrendingCard(
                              imageUrl: 'assets/book5.png',
                              actor: 'Spencer Johnson, M.D',
                              title: 'Who Moved My Cheese',
                            ),
                            SizedBox(
                              width: defaultMargin,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 90,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 410,
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(35),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(defaultMargin),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Image.asset(
                            'assets/profile.png',
                            width: 50,
                            height: 50,
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Column(
                          children: [
                            Text(
                              'Hello Sarah,',
                              style: titleTextStyle,
                            ),
                            Text(
                              'Good Morning',
                              style: subtitleTextStyle,
                            ),
                          ],
                        ),
                        Spacer(),
                        Container(
                          width: 18,
                          height: 14,
                          child: Image.asset('assets/nav_icon.png'),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      right: defaultMargin,
                      bottom: defaultMargin,
                      left: defaultMargin,
                    ),
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width -
                          (2 * defaultMargin),
                      decoration: BoxDecoration(
                        color: lightGreyColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Find Your Favorite Book',
                              style: subtitleTextStyle,
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: greenColor,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Icon(
                                Icons.search,
                                color: whiteColor,
                                size: 30,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: 12,
                      left: defaultMargin,
                    ),
                    child: Text(
                      'Recent Book',
                      style: titleTextStyle,
                    ),
                  ),
                  SingleChildScrollView(
                    padding: EdgeInsets.only(
                      left: defaultMargin,
                    ),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        RecentCard(
                          imageUrl: 'assets/book1.png',
                          title: 'The Magic',
                          downloadPercent: '80',
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        RecentCard(
                          imageUrl: 'assets/book2.png',
                          title: 'The Martian',
                          downloadPercent: '50',
                        ),
                        SizedBox(
                          width: defaultMargin,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
