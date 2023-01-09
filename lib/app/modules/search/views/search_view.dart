import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:get/get.dart';

import '../controllers/search_controller.dart';

class SearchView extends GetView<SearchController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0XFFFBFBFD),
            Color(0XFFF0F1F6),
          ],
        ),
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: EdgeInsets.only(
            top: 26,
            left: 10,
            right: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 45,
                child: TextField(
                  onChanged: (value) => controller.filterMovie(value),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(
                      Icons.search,
                      size: 22,
                      color: Color(0XFF0D0846),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(21),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 35),
              Obx(
                () => Text(
                  'Search Reslut (${controller.moview.value.length})',
                  style: TextStyle(
                    fontFamily: 'Avenir-Heavy',
                    color: Color(0XFF0D0846),
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: Get.height * 0.7,
                child: Obx(
                  () => ListView.builder(
                    itemCount: controller.moview.value.length,
                    itemBuilder: (context, index) => Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 30),
                          width: 100,
                          height: 127,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(21),
                            child: Image.asset(
                                controller.moview.value[index].movie_url!),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 15),
                              child: Text(
                                controller.moview.value[index].title!,
                                style: TextStyle(
                                  fontFamily: 'Avenir-Heavy',
                                  color: Color(0XFF0D0846),
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              controller.moview.value[index].category!,
                              style: TextStyle(
                                fontFamily: 'Avenir-Book',
                                color: Colors.grey,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 20),
                            RatingBarIndicator(
                              rating: controller.moview.value[index].rating!,
                              itemBuilder: (context, index) => Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              itemCount: 5,
                              itemSize: 18,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 80),
                width: 220,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0XFF0D0846),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(37),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Suggest Movie',
                    style: TextStyle(
                      fontFamily: 'Avenir-Medium',
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
