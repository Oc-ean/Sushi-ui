import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_ui/item_card.dart';
import 'package:food_ui/item_screen.dart';
import 'package:food_ui/model/food_model.dart';
import 'package:food_ui/package/sashimi_screen.dart';
import 'package:food_ui/package/sushi_screen.dart';

class PriceScreen extends StatefulWidget {
  static const String id = 'pricescreen';
  const PriceScreen({Key? key}) : super(key: key);

  @override
  State<PriceScreen> createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  bool isLiked = false;
  bool isTap = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3F3F3),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFF3F3F3),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
          color: Colors.black,
        ),
        actions: [
          IconButton(
              onPressed: () {
                isTap = !isTap;
                setState(() {});
              },
              icon: Icon(
                isTap ? CupertinoIcons.smiley_fill : CupertinoIcons.smiley,
                color: isTap ? Color(0xFFD4486E) : Colors.black,
                size: 35,
              ),
              color: Color(0xFFD4486E)),
        ],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.location_on_outlined,
              color: Color(0xFFB1464A),
            ),
            SizedBox(
              width: 10,
            ),
            Center(
              child: Text(
                'jakarta',
                style: TextStyle(
                  color: Colors.black45,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
                right: 29,
              ),
              child: Container(
                height: 120,
                width: 600,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xFFB1464A),
                ),
                margin: EdgeInsets.only(left: 30.0),
                child: Center(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: const Text(
                          'Get 32% Promo',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontFamily: 'LibreBaskerville'),
                        ),
                      ),
                      SizedBox(height: 10),
                      Card(
                        elevation: 4,
                        // color: Color(0xFFB1464A),
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Container(
                          width: 140,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color(0xFFB1464A).withOpacity(0.8),
                          ),
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const ItemsScreen()),
                              );
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Buy Food',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              height: 70,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white60,
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Icon(
                      CupertinoIcons.search,
                      size: 35,
                      color: Colors.grey.shade300,
                    ),
                    Text(
                      'Search here',
                      style: TextStyle(
                        color: Colors.grey.shade300,
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white70,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 1),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Image(
                              image: AssetImage(
                                'images/sushi rice.png',
                              ),
                              height: 40,
                              width: 70,
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 30),
                              child: Text(
                                'Sushi',
                                style: TextStyle(
                                    color: Color(
                                      0xFFB1464A,
                                    ),
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: 50,
                    width: 142,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.grey.shade50,
                    ),
                    child: Row(
                      children: const [
                        Image(
                          image: AssetImage('images/ramen.png'),
                          height: 38,
                          width: 70,
                        ),
                        Text(
                          'Ramen',
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 15),
                  Stack(
                    children: [
                      Container(
                        height: 50,
                        width: 142,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.grey.shade50,
                        ),
                        child: Row(
                          children: const [
                            Image(
                              image: AssetImage('images/ramen.png'),
                              height: 38,
                              width: 70,
                            ),
                            Text(
                              'Ramen',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 240,
              // color: Colors.green,
              padding: EdgeInsets.symmetric(vertical: 10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 240,
                      // width: 300,
                      child: ListView.builder(
                        itemCount: foodItems.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return ItemCard(
                            image: foodItems[index].image,
                            name: foodItems[index].name,
                            price: foodItems[index].price,
                            rating: foodItems[index].rating,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return SushiScreen(
                                      name: foodItems[index],
                                      food: foodItems[index],
                                    );
                                  },
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                    SizedBox(width: 25),
                  ],
                ),
              ),
            ),
            // const SizedBox(height: 10),
            // SingleChildScrollView(
            //   scrollDirection: Axis.horizontal,
            //   child: Row(
            //     children: [
            //       Row(
            //         children: [
            //           Stack(
            //             children: [
            //               Container(
            //                 margin: const EdgeInsets.only(left: 17),
            //                 height: 199,
            //                 width: 162,
            //                 decoration: const BoxDecoration(
            //                     borderRadius:
            //                         BorderRadius.all(Radius.circular(15)),
            //                     color: Colors.white70),
            //                 // ClipRRect(
            //                 //   borderRadius: BorderRadius.circular(15),
            //                 child: ClipRRect(
            //                   borderRadius: BorderRadius.circular(15),
            //                   child: GestureDetector(
            //                     onTap: () {
            //                       Navigator.push(
            //                         context,
            //                         MaterialPageRoute(
            //                             builder: (context) =>
            //                                 const SashimiScreen()),
            //                       );
            //                     },
            //                     child: Container(
            //                       height: 200,
            //                       width: 500,
            //                       child: Column(
            //                         crossAxisAlignment:
            //                             CrossAxisAlignment.start,
            //                         children: [
            //                           const Image(
            //                             image: AssetImage('images/shrimp.png'),
            //                             height: 127,
            //                             width: 130,
            //                           ),
            //                           SizedBox(
            //                             height: 1,
            //                           ),
            //                           Padding(
            //                             padding:
            //                                 const EdgeInsets.only(left: 15),
            //                             child: Text(
            //                               'shrimp Sushi',
            //                               style: TextStyle(
            //                                 color: Colors.grey,
            //                                 fontSize: 15.9,
            //                                 fontFamily: 'LibreBaskerville',
            //                               ),
            //                             ),
            //                           ),
            //                           SizedBox(
            //                             height: 10,
            //                           ),
            //                           Row(
            //                             mainAxisAlignment:
            //                                 MainAxisAlignment.spaceBetween,
            //                             children: [
            //                               Padding(
            //                                 padding:
            //                                     const EdgeInsets.only(left: 10),
            //                                 child: Text(
            //                                   '\$21.00',
            //                                   style: TextStyle(fontSize: 20),
            //                                 ),
            //                               ),
            //                               Text(
            //                                 '⭐ 4.8',
            //                                 style: TextStyle(
            //                                   color: Colors.grey.shade500,
            //                                   fontSize: 20,
            //                                 ),
            //                               ),
            //                             ],
            //                           ),
            //                         ],
            //                       ),
            //                     ),
            //                   ),
            //                 ),
            //               ),
            //               Positioned(
            //                 right: 10,
            //                 top: 5,
            //                 child: IconButton(
            //                   onPressed: () {
            //                     isLiked = !isLiked;
            //                     setState(() {});
            //                   },
            //                   icon: Icon(
            //                     isLiked
            //                         ? CupertinoIcons.heart_fill
            //                         : CupertinoIcons.heart,
            //                     color: isLiked
            //                         ? Color(0xFFB1464A)
            //                         : Colors.grey.shade500,
            //                   ),
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ],
            //       ),
            //       Row(
            //         children: [
            //           Stack(
            //             children: [
            //               Container(
            //                 margin: const EdgeInsets.only(left: 17),
            //                 height: 199,
            //                 width: 162,
            //                 decoration: const BoxDecoration(
            //                     borderRadius:
            //                         BorderRadius.all(Radius.circular(15)),
            //                     color: Colors.white70),
            //                 child: ClipRRect(
            //                   borderRadius: BorderRadius.circular(15),
            //                   child: Container(
            //                     height: 200,
            //                     width: 500,
            //                     child: Column(
            //                       crossAxisAlignment: CrossAxisAlignment.start,
            //                       children: [
            //                         const Image(
            //                           image: AssetImage('images/sashimi.png'),
            //                           height: 127,
            //                           width: 130,
            //                         ),
            //                         SizedBox(
            //                           height: 1,
            //                         ),
            //                         Padding(
            //                           padding: const EdgeInsets.only(left: 15),
            //                           child: Text(
            //                             'Sashimi Sushi',
            //                             style: TextStyle(
            //                               color: Colors.grey,
            //                               fontSize: 15.9,
            //                               fontFamily: 'LibreBaskerville',
            //                             ),
            //                           ),
            //                         ),
            //                         SizedBox(
            //                           height: 10,
            //                         ),
            //                         Row(
            //                           mainAxisAlignment:
            //                               MainAxisAlignment.spaceBetween,
            //                           children: [
            //                             Padding(
            //                               padding:
            //                                   const EdgeInsets.only(left: 10),
            //                               child: Text(
            //                                 '\$21.00',
            //                                 style: TextStyle(fontSize: 20),
            //                               ),
            //                             ),
            //                             Text(
            //                               '⭐ 4.8',
            //                               style: TextStyle(
            //                                 color: Colors.grey.shade500,
            //                                 fontSize: 20,
            //                               ),
            //                             ),
            //                           ],
            //                         ),
            //                       ],
            //                     ),
            //                   ),
            //                 ),
            //               ),
            //               Positioned(
            //                 right: 10,
            //                 top: 5,
            //                 child: IconButton(
            //                   onPressed: () {
            //                     isLiked = !isLiked;
            //                     setState(() {});
            //                   },
            //                   icon: Icon(
            //                     isLiked
            //                         ? CupertinoIcons.heart_fill
            //                         : CupertinoIcons.heart,
            //                     color: isLiked
            //                         ? Color(0xFFB1464A)
            //                         : Colors.grey.shade500,
            //                   ),
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ],
            //       ),
            //     ],
            //   ),
            // ),
            SizedBox(
              height: 6,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                children: [
                  Text(
                    'Popular Food',
                    style: TextStyle(
                      fontSize: 19,
                      color: Colors.black38,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 3,
            ),
            Stack(
              children: [
                Column(
                  children: [
                    Container(
                      height: 80,
                      width: 350,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                      ),
                      child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: (Row(
                            children: [
                              Image(
                                image: AssetImage('images/salmonegg.png'),
                              ),
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 20, top: 9),
                                        child: Column(
                                          children: [
                                            Column(
                                              children: [
                                                Row(
                                                  children: [
                                                    Text(
                                                      'Salmon Eggs',
                                                      style: TextStyle(
                                                        fontSize: 20,
                                                        fontFamily:
                                                            'LibreBaskerville',
                                                        color: Colors.black45,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Container(
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        '\$21.00',
                                                        style: TextStyle(
                                                            fontSize: 20),
                                                      ),
                                                      SizedBox(
                                                        width: 20,
                                                      ),
                                                      Text(
                                                        '⭐ 4.8',
                                                        style: TextStyle(
                                                          color: Colors
                                                              .grey.shade500,
                                                          fontSize: 20,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ))),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
