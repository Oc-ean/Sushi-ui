import 'package:flutter/material.dart';
import 'package:food_ui/price_screen.dart';

class DsnPage extends StatefulWidget {
  static const String id = 'dsn_page';
  const DsnPage({Key? key}) : super(key: key);

  @override
  State<DsnPage> createState() => _DsnPageState();
}

class _DsnPageState extends State<DsnPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'SUSHIMAN',
          style: TextStyle(
            fontSize: 40.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Image(
            image: AssetImage('images/Capture.PNG'),
            height: 400.0,
            width: 400.0,
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: EdgeInsets.only(left: 35.0),
            child: Column(
              children: [
                Text(
                  'THE TASTE OF JAPANESE FOOD',
                  // textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'LibreBaskerville',
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30.0),
                  child: Text(
                    'Feel the taste of most populars japanese foods from anywhere and anytime.',
                    style: TextStyle(
                      color: Colors.white54,
                      fontSize: 15,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(right: 40),
                  child: Card(
                    elevation: 4,
                    // color: Color(0xFFB1464A),
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Container(
                      width: 300,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color(0xFFB1464A).withOpacity(0.8),
                      ),
                      child: TextButton(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Get Started',
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(width: 10),
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                            ),
                          ],
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const PriceScreen()),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
