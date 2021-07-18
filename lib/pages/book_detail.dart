import 'package:flutter/material.dart';
import 'package:ebook/theme.dart';

class BookDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 450,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(
                    17,
                    50,
                    22,
                    50,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.chevron_left,
                        size: 30,
                      ),
                      Text(
                        'Book Detail',
                        style: titleTextStyle.copyWith(fontSize: 15),
                      ),
                      Icon(
                        Icons.share,
                        size: 25,
                      ),
                    ],
                  ),
                ),
                Image.asset(
                  'assets/book3.png',
                  width: 175,
                  height: 267,
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
          ListView(
            children: [
              SizedBox(
                height: 410,
              ),
              Stack(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 25,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(35),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(defaultMargin),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Enchantment',
                                        style: titleTextStyle.copyWith(
                                            fontSize: 20),
                                      ),
                                      Text(
                                        'Guy Kawasaki',
                                        style: subtitleTextStyle.copyWith(
                                            fontSize: 14),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    'Free Access',
                                    style: subtitleTextStyle.copyWith(
                                      fontSize: 14,
                                      color: greenColor,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: defaultMargin,
                              ),
                              Text(
                                'Description',
                                style: titleTextStyle.copyWith(
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                'Enchantment, as defined by bestselling business guru Guy Kawasaki, is not about manipulating people. It transforms situations and relationships.',
                                style: subtitleTextStyle.copyWith(
                                  fontSize: 12,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                height: 60,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  color: mediumGrey,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 20),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Rating',
                                            style: TextStyle(fontSize: 10),
                                          ),
                                          Text(
                                            '4.8',
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        height: 30,
                                        width: 1,
                                        color: blackColor,
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Number of pages',
                                            style: TextStyle(fontSize: 10),
                                          ),
                                          Text(
                                            '180 Page',
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        height: 30,
                                        width: 1,
                                        color: blackColor,
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Language',
                                            style: TextStyle(
                                              fontSize: 10,
                                            ),
                                          ),
                                          Text(
                                            'ENG',
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Container(
                                height: 50,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  color: greenColor,
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: Center(
                                  child: Text(
                                    'Read Now',
                                    style: titleTextStyle.copyWith(
                                      fontSize: 20,
                                      color: whiteColor,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 20),
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: greenColor,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Icon(
                          Icons.bookmark,
                          color: whiteColor,
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
