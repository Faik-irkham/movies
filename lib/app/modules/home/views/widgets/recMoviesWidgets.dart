import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RecMovie extends StatelessWidget {
  const RecMovie({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(left: 10, right: 15),
            height: 279,
            width: 300,
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(21),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0XFF757575),
                        blurRadius: 10.0,
                        offset: Offset(2, 8),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(21),
                    child: Image.asset(
                      'assets/images/image3.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'John Wick 4',
                          style: TextStyle(
                            fontFamily: 'Avenir-Heavy',
                            color: Color(0XFF0D0846),
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Action, Crime',
                          style: TextStyle(
                            fontFamily: 'Avenir-Book',
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
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
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(width: 10),
          Container(
            margin: EdgeInsets.only(right: 10),
            height: 279,
            width: 300,
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(21),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0XFF757575),
                        blurRadius: 10.0,
                        offset: Offset(2, 8),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(21),
                    child: Image.asset(
                      'assets/images/image4.png',
                      height: 200,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Bohemian',
                          style: TextStyle(
                            fontFamily: 'Avenir-Heavy',
                            color: Color(0XFF0D0846),
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Documentary',
                          style: TextStyle(
                            fontFamily: 'Avenir-Book',
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
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
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Column(
    //   children: [
    //     SingleChildScrollView(
    //       scrollDirection: Axis.horizontal,
    //       child: Row(
    //         mainAxisAlignment: MainAxisAlignment.start,
    //         children: [
    //           // for (int i = 1; i <= 6; i++)
    //           Column(
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             children: [
    //               Padding(
    //                 padding: EdgeInsets.only(left: 10, right: 10),
    //                 child: ClipRRect(
    //                   borderRadius: BorderRadius.circular(21),
    //                   child: Image.asset(
    //                     'images/image3.png',
    //                     height: 200,
    //                     width: 300,
    //                     fit: BoxFit.cover,
    //                   ),
    //                 ),
    //               ),
    //               SizedBox(height: 19),
    //               Row(
    //                 children: [
    //                   Container(
    //                     padding: EdgeInsets.only(left: 10),
    //                     child: Column(
    //                       // crossAxisAlignment: CrossAxisAlignment.start,
    //                       children: [
    //                         Text(
    //                           'John Wick 4',
    //                           style: TextStyle(fontSize: 20),
    //                         ),
    //                         SizedBox(height: 4),
    //                         Text(
    //                           'Action, Crime',
    //                           style: TextStyle(
    //                             color: Colors.grey,
    //                             fontSize: 16,
    //                           ),
    //                         ),
    //                       ],
    //                     ),
    //                   ),
    //                   Container(
    //                     child: Row(
    //                       children: [
    //                         Icon(
    //                           Icons.star,
    //                           color: Colors.amber,
    //                         )
    //                       ],
    //                     ),
    //                   )
    //                 ],
    //               ),
    //             ],
    //           ),
    //           // Column(
    //           //   children: [
    //           //     Padding(
    //           //       padding: EdgeInsets.only(left: 10, right: 10),
    //           //       child: ClipRRect(
    //           //         borderRadius: BorderRadius.circular(21),
    //           //         child: Image.asset(
    //           //           'images/image4.png',
    //           //           height: 200,
    //           //           width: 300,
    //           //           fit: BoxFit.cover,
    //           //         ),
    //           //       ),
    //           //     ),
    //           //     Row(
    //           //       children: [
    //           //         Column(
    //           //           children: [
    //           //             Text('John Wick 4'),
    //           //             Text('Action, Crime'),
    //           //           ],
    //           //         ),
    //           //         Icon(
    //           //           Icons.star,
    //           //           color: Colors.amber,
    //           //         ),
    //           //         Icon(
    //           //           Icons.star,
    //           //           color: Colors.amber,
    //           //         ),
    //           //         Icon(
    //           //           Icons.star,
    //           //           color: Colors.amber,
    //           //         ),
    //           //         Icon(
    //           //           Icons.star,
    //           //           color: Colors.amber,
    //           //         ),
    //           //         Icon(
    //           //           Icons.star,
    //           //           color: Colors.amber,
    //           //         ),
    //           //       ],
    //           //     ),
    //           //   ],
    //           // ),
    //         ],
    //       ),
    //     )
    //   ],
    // );

// SingleChildScrollView(
//       padding: EdgeInsets.only(left: 15, right: 15),
//       physics: BouncingScrollPhysics(),
//       scrollDirection: Axis.horizontal,
//       child: Row(
//         children: [
//           Container(
//             height: 207,
//             width: 300,
//             decoration: BoxDecoration(
//               color: Colors.blue,
//               borderRadius: BorderRadius.circular(14),
//             ),
//           ),
//           SizedBox(width: 15),
//           Container(
//             height: 207,
//             width: 300,
//             decoration: BoxDecoration(
//               color: Colors.orange,
//               borderRadius: BorderRadius.circular(14),
//             ),
//           ),
//         ],
//       ),
//     )
