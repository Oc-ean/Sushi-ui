import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ItemsScreen extends StatefulWidget {
  static const String id = 'item preview';

  const ItemsScreen({Key? key}) : super(key: key);

  @override
  State<ItemsScreen> createState() => _ItemsScreenState();
}

class _ItemsScreenState extends State<ItemsScreen> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFDBE1E6),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFE1E1E1),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[
                Color(0xFFE1E1E1).withOpacity(0.9),
                Color(0xFFf7f5f5).withOpacity(0.9),
                Colors.white,
                Colors.white,
                Colors.white,
                Colors.white,
                Color(0xFFf7f5f5),
              ],
            ),
          ),
        ),
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
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFE1E1E1).withOpacity(0.9),
              Color(0xFFf7f5f5).withOpacity(0.9),
              Colors.white,
              Colors.white,
              Colors.white,
              Colors.white,
              Color(0xFFf7f5f5),
            ],
          ),
        ),
        child: Column(
          children: [
            Image(
              image: AssetImage('images/c sushi.PNG'),
            ),
            Text(
              '⭐ 4.8',
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Original Sushi',
              style: TextStyle(
                fontFamily: 'LibreBaskerville',
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text('Ingredients'),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 200,
        color: Colors.red,
      ),
    );
  }
}
