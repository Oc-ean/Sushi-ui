import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ItemCard extends StatefulWidget {
  final VoidCallback? onTap;
  final String image;
  final String name;
  final double price;
  final double rating;

  const ItemCard({
    Key? key,
    this.onTap,
    required this.image,
    required this.name,
    required this.price,
    required this.rating,
  }) : super(key: key);

  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(left: 30),
          height: 219,
          width: 180,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              color: Colors.white70),
          child: Container(
            height: 200,
            width: 400,
            padding: EdgeInsets.only(bottom: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: GestureDetector(
                    onTap: widget.onTap,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Image(
                        image: AssetImage(widget.image),
                        height: 129,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 1,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 48),
                        child: Text(
                          widget.name,
                          maxLines: 2,
                          style: TextStyle(
                            fontSize: 15.9,
                            fontFamily: 'LibreBaskerville',
                            color: Colors.grey.shade500,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '\$${widget.price}',
                            style: TextStyle(fontSize: 20),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Text(
                              '⭐ ${widget.rating}',
                              style: TextStyle(
                                color: Colors.grey.shade500,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          right: 10,
          top: 5,
          child: IconButton(
            onPressed: () {
              isLiked = !isLiked;
              setState(() {});
            },
            icon: Icon(
              isLiked ? CupertinoIcons.heart_fill : CupertinoIcons.heart,
              color: isLiked ? Color(0xFFB1464A) : Colors.grey.shade500,
            ),
          ),
        ),
      ],
    );
  }
}
