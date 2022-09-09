import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:awesome_icons/awesome_icons.dart';

class SashimiScreen extends StatefulWidget {
  static const String id = 'sashimi_screen';
  const SashimiScreen({Key? key}) : super(key: key);

  @override
  State<SashimiScreen> createState() => _SashimiScreenState();
}

class _SashimiScreenState extends State<SashimiScreen> {
  int num = 0;
  bool isLiked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        // flexibleSpace: Container(
        //   decoration: BoxDecoration(
        //     gradient: LinearGradient(
        //       begin: Alignment.topLeft,
        //       end: Alignment.bottomRight,
        //       colors: <Color>[
        //         Color(0xFFE1E1E1).withOpacity(0.9),
        //         Color(0xFFf7f5f5).withOpacity(0.9),
        //         Colors.white,
        //         Colors.white,
        //         Colors.white,
        //         Colors.white,
        //         Color(0xFFf7f5f5),
        //       ],
        //     ),
        //   ),
        // ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 30,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              isLiked = !isLiked;
              setState(() {});
            },
            icon: Icon(
              isLiked ? CupertinoIcons.heart_fill : CupertinoIcons.heart,
              color: isLiked ? Colors.red : Colors.black,
              size: 30,
            ),
          ),
        ],
      ),
      // body: Container(
      //   decoration: BoxDecoration(
      //     gradient: LinearGradient(
      //       colors: [
      //         Color(0xFFE1E1E1).withOpacity(0.9),
      //         Color(0xFFf7f5f5).withOpacity(0.9),
      //         Colors.white,
      //         Colors.white,
      //         Colors.white,
      //         Colors.white,
      //         Color(0xFFf7f5f5),
      //       ],
      //     ),
      //   ),
      // ),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Image(
            image: AssetImage('images/sashimi.png'),
            height: 150,
            width: 200,
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              '⭐ 4.8',
              style: TextStyle(fontSize: 18),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              'Original Sushi',
              style: TextStyle(
                  fontFamily: 'LibreBaskerville',
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 35),
            child: Text(
              'Ingredients',
              style: TextStyle(fontSize: 19),
            ),
          ),
          SizedBox(
            height: 15,
          ),
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
                      color: Colors.grey.shade50,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 1),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Image(
                            image: AssetImage(
                              'images/rice.png',
                            ),
                            height: 40,
                            width: 70,
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 30),
                            child: Text(
                              'Rice',
                              style: TextStyle(
                                  color: Colors.grey,
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
                        image: AssetImage('images/tuna.png'),
                        height: 38,
                        width: 70,
                      ),
                      Text(
                        'Tuna',
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(
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
                        image: AssetImage('images/oil.png'),
                        height: 38,
                        width: 70,
                      ),
                      Text(
                        'Oil',
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              'Description',
              style: TextStyle(
                fontSize: 25,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              'Sonogo, kireinamizu de gohan o araimasu ',
              style: TextStyle(fontSize: 17, color: Colors.grey.shade500),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              'Kireina nabe ni gohan o irete hi ni kakemasu',
              style: TextStyle(fontSize: 17, color: Colors.grey.shade500),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              'Sonogo, maikai gohan o chekkushitekudasai',
              style: TextStyle(fontSize: 17, color: Colors.grey.shade500),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              'Gohan ga mada yawarakakunai baai wa 5-bu',
              style: TextStyle(fontSize: 17, color: Colors.grey.shade500),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              'Gohan ni mizu o irete nabe o ōi, hi kara oroshimasu.',
              style: TextStyle(fontSize: 17, color: Colors.grey.shade500),
            ),
          )

          //
        ]),
      ),
      bottomNavigationBar: Container(
        height: 180,
        color: Color(0xFFB1464A),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 15),
                  child: Text(
                    '\$42.00',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontFamily: 'LibreBaskerville',
                    ),
                  ),
                ),
                FloatingActionButton(
                  mini: true,
                  onPressed: () {
                    setState(() {
                      num--;
                    });
                  },
                  child: Icon(
                    FontAwesomeIcons.minus,
                    size: 20,
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    '$num',
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(width: 20),
                FloatingActionButton(
                  mini: true,
                  onPressed: () {
                    setState(() {
                      num++;
                    });
                  },
                  child: Icon((FontAwesomeIcons.plus)),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Buy now',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  SizedBox(width: 10),
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
