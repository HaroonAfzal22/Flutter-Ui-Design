import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ui_practice/mantalhealthapp/pages/design_01.dart';

void main() {
  runApp(const DesignNoOneScreen());
}


// Solution slou design
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.bottom]);
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Color(0xff2f343a),
          // appBar: PreferredSize(
          //   preferredSize: Size.fromHeight(150.0), // here the desired height
          //   child: AppBar(
          //     backgroundColor: Color(0xff2f343a),
          //    leading:  Icon((Icons.menu)),
          //    actions: [
          //      Container(
          //        height: 1,
          //        color: Colors.black26,
          //        child: Row(
          //          children: [
          //            FaIcon(Icons.diamond,color: Colors.purple ,),
          //            Container(
          //              child: Text('0',style: TextStyle(color: Colors.purple),),
          //            )
          //          ],
          //        ),
          //      ),
          //
          //      Icon((Icons.menu)),
          //      Icon((Icons.menu)),
          //
          //    ],
          //   ),
          // ),
          body: Container(
            padding: EdgeInsets.only(top: 30,),
            child: Column(
              children: [
//  First Row Start In App Bar
                // First row for menue
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 10),
                        alignment: Alignment.topLeft,
                        child: Icon(
                          (Icons.menu),
                          color: Colors.white,
                          size: 28,
                        )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        // Second Row
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                                child: const FaIcon(FontAwesomeIcons.solidGem,
                                    color: Colors.purple)),
                            Container(
                              width: 90,
                              height: 20,
                              color: Colors.black26,
                              child: const Center(
                                  child: Text(
                                '0',
                                style: TextStyle(
                                    color: Colors.purple,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              )),
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        // Third row with coin
                        Container(
                          decoration: const BoxDecoration(
                              color: Colors.black26,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  child: const FaIcon(FontAwesomeIcons.bitcoin,
                                      color: Colors.yellow)),
                              Container(
                                width: 90,
                                height: 20,
                                child: const Center(
                                    child: Text(
                                  '1205',
                                  style: TextStyle(
                                      color: Colors.yellow,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                )),
                              ),
                            ],
                          ),
                        ),
                        // Cart widget
                        Container(
                          width: 60,
                          height: 30,
                          transform: Matrix4.rotationZ(0.1),
                          decoration: const BoxDecoration(
                              color: Colors.yellow,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  bottomLeft: Radius.circular(5))),
                          child: const Center(
                              child: FaIcon(
                            Icons.shopping_cart,
                            color: Colors.black87,
                            size: 25,
                          )),
                        ),
                      ],
                    ),
                  ],
                ),
                // End App Bar First Row

                // Start Second App BAr Row Image Avatar
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10, top: 25),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.brown, width: 8),
                        color: Colors.blueGrey,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.brown,
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(5),
                            child: CircleAvatar(
                              foregroundImage: AssetImage(
                                'assets/carton.jpg',
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                        children: [
                          Text(
                            'User23156',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.w900),
                          ),
                          Text(
                            'Guest ID: 23156',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ],
                      ),
                    ),
// End of second Row
                  ],
                ),
                // Start Third Row Right icons
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        clipBehavior: Clip.none,
                        color: Colors.red,
                        elevation: 20,
                        child: Container(
                          height: 35,
                          width: 35,
                          clipBehavior: Clip.none,
                          decoration: BoxDecoration(
                              // borderRadius: BorderRadius.all(Radius.circular(5))
                              ),
                          child: Center(
                              child: FaIcon(
                            FontAwesomeIcons.coins,
                            color: Colors.yellow,
                            size: 25,
                          )),
                        ),
                      ),
                      Card(
                        elevation: 20,
                        clipBehavior: Clip.none,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        color: Colors.yellowAccent,
                        child: Container(
                          height: 35,
                          width: 35,
                          child: Center(
                              child: FaIcon(
                            FontAwesomeIcons.medal,
                            color: Colors.red,
                            size: 22,
                          )),
                        ),
                      ),
                      Card(
                        elevation: 20,
                        color: Colors.green,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Container(
                            height: 35,
                            width: 35,
                            child: Center(
                                child: FaIcon(
                              FontAwesomeIcons.gift,
                              color: Colors.yellow,
                              size: 22,
                            ))),
                      )
                    ],
                  ),
                ),
                // End of the App Bar--------

                // Start of body
                Container(
                  height: 70,
                  margin: EdgeInsets.only(top: 10),
                  color: Color(0XFF1d2025),
                  child: Row(
                    children: [
                      FaIcon(FontAwesomeIcons.angleLeft,),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 10),
                        height: 30.0,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          children: [
                            Container(
                                // color: Colors.pink,
                                width: 200,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    FaIcon(
                                      FontAwesomeIcons.shield,
                                      color: Colors.yellow,
                                      size: 20,
                                    ),
                                    Text(
                                      'Super Top',
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ],
                                )),

                          ],
                        ),
                      ),
                      FaIcon(FontAwesomeIcons.angleRight,),
                    ],
                  ),
                )

                // End of Body
              ],
            ),
          ),
        ));
  }
}
