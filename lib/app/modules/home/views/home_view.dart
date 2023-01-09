import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:get/get.dart';
import 'package:movies/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';
import 'widgets/recMoviesWidgets.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0XFFFDFDFE),
            Color(0XFFF3F4F8),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Moviez',
                          style: TextStyle(
                            fontFamily: 'Avenir-Black',
                            fontSize: 28,
                            color: Color(0XFF0D0846),
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Watch much easier',
                          style: TextStyle(
                            fontFamily: 'Avenir-Book',
                            fontSize: 16,
                            color: Color(0XFF929292),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 45,
                      width: 55,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                        ),
                      ),
                      child: IconButton(
                        onPressed: () => Get.toNamed(Routes.SEARCH),
                        icon: Icon(
                          Icons.search,
                          color: Color(0XFF0D0846),
                        ),
                        iconSize: 30,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              RecMovie(),
              SizedBox(height: 30),
              Container(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  'From Disney',
                  style: TextStyle(
                    fontFamily: 'Avenir-Black',
                    fontSize: 24,
                    color: Color(0XFF0D0846),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    Container(
                      height: 127,
                      width: 253,
                      padding: EdgeInsets.all(15),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(21),
                            child: Image.asset(
                              'assets/images/image7.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Mulan Session',
                                style: TextStyle(
                                  fontFamily: 'Avenir-Heavy',
                                  fontSize: 20,
                                  color: Color(0XFF0D0846),
                                ),
                              ),
                              Text(
                                'History, War',
                                style: TextStyle(
                                  fontFamily: 'Avenir-Book',
                                  fontSize: 16,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(height: 20),
                              Container(
                                child: RatingBarIndicator(
                                  rating: 3,
                                  itemBuilder: (context, index) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  itemCount: 5,
                                  itemSize: 24,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 127,
                      width: 253,
                      padding: EdgeInsets.all(15),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(21),
                            child: Image.asset(
                              'assets/images/image6.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Beauty & Beast',
                                style: TextStyle(
                                  fontFamily: 'Avenir-Heavy',
                                  fontSize: 20,
                                  color: Color(0XFF0D0846),
                                ),
                              ),
                              Text(
                                'Sci-Fiction',
                                style: TextStyle(
                                  fontFamily: 'Avenir-Book',
                                  fontSize: 16,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(height: 20),
                              Container(
                                child: RatingBarIndicator(
                                  rating: 5,
                                  itemBuilder: (context, index) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  itemCount: 5,
                                  itemSize: 24,
                                ),
                                //     Row(
                                //   children: [
                                //     Icon(
                                //       Icons.star,
                                //       color: Colors.amber[600],
                                //     ),
                                //     Icon(
                                //       Icons.star,
                                //       color: Colors.amber[600],
                                //     ),
                                //     Icon(
                                //       Icons.star,
                                //       color: Colors.amber[600],
                                //     ),
                                //     Icon(
                                //       Icons.star,
                                //       color: Colors.amber[600],
                                //     ),
                                //     Icon(
                                //       Icons.star,
                                //       color: Colors.amber[600],
                                //     ),
                                //   ],
                                // ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
