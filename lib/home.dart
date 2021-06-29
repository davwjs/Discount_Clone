import 'package:discount_app/model/near_you_data.dart';
import 'package:discount_app/model/near_you_model.dart';
import 'package:discount_app/page/appearancePage.dart';
import 'package:discount_app/page/beautyPage.dart';
import 'package:discount_app/page/foodAndBeveragePage.dart';
import 'package:discount_app/page/petPage.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double value = 0;

  @override
  Widget build(BuildContext context) {
    List<NearYouModel> NearYou = getNearYou.NearYou;
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Color(0xFF1d1d1f),
              Color(0xFF326549),
            ],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          )),
        ),
        Container(
          width: 200.0,
          padding: EdgeInsets.only(left: 20, top: 100, right: 8, bottom: 8),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.white,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "David Song",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      decoration: TextDecoration.none),
                ),
                SizedBox(
                  height: 80,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      value == 0 ? value = 1 : value = 0;
                    });
                  },
                  child: Container(
                    child: Row(
                      children: [
                        Icon(Icons.home),
                        SizedBox(
                          width: 50,
                        ),
                        Text(
                          "Home",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              decoration: TextDecoration.none),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  child: Row(
                    children: [
                      Icon(Icons.person),
                      SizedBox(
                        width: 50,
                      ),
                      Text(
                        "Profile",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            decoration: TextDecoration.none),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  child: Row(
                    children: [
                      Icon(Icons.settings),
                      SizedBox(
                        width: 50,
                      ),
                      Text(
                        "Settings",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            decoration: TextDecoration.none),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  child: Row(
                    children: [
                      Icon(Icons.exit_to_app),
                      SizedBox(
                        width: 50,
                      ),
                      Text(
                        "Log Out",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            decoration: TextDecoration.none),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        TweenAnimationBuilder(
          tween: Tween<double>(begin: 0, end: value),
          duration: Duration(milliseconds: 500),
          curve: Curves.easeIn,
          builder: (_, double val, __) {
            return (Transform(
              alignment: Alignment.center,
              transform: Matrix4.identity()
                ..setEntry(3, 2, 0.001)
                ..setEntry(0, 3, 200 * val)
                ..rotateY((pi / 6) * val),
              child: DefaultTabController(
                length: 4,
                child: Scaffold(
                    appBar: AppBar(
                      toolbarHeight: MediaQuery.of(context).size.height * 0.45,
                      title: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                icon: Icon(Icons.menu),
                                onPressed: () {
                                  setState(() {
                                    value == 0 ? value = 1 : value = 0;
                                  });
                                },
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.wb_sunny,
                                    size: 20,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "New York",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Container(
                            // padding: EdgeInsets.only(left: 20, right: 20),
                            child: Column(
                              children: [
                                Container(
                                  child: Column(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.only(left: 15),
                                        alignment: Alignment.centerLeft,
                                        height: 50,
                                        child: Text(
                                          "Near You",
                                          style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.3,
                                  width: MediaQuery.of(context).size.width,
                                  child: PageView.builder(
                                    controller:
                                        PageController(viewportFraction: 0.9),
                                    scrollDirection: Axis.horizontal,
                                    itemCount: NearYou.length,
                                    onPageChanged: (index) {},
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      NearYouModel nearYou = NearYou[index];
                                      return Container(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            ClipRRect(
                                              child: Stack(
                                                children: [
                                                  Image(
                                                    height: 200,
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.8,
                                                    image: AssetImage(
                                                        nearYou.image),
                                                    fit: BoxFit.fill,
                                                  ),
                                                  Container(
                                                    alignment: Alignment.center,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15),
                                                      color: Color(0xFFa5d9b3),
                                                    ),
                                                    margin: EdgeInsets.only(
                                                        top: 10, left: 240),
                                                    height: 40,
                                                    width: 80,
                                                    child: Text(
                                                      nearYou.distance,
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 18,
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(25),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Container(
                                              padding: EdgeInsets.only(
                                                left: 10,
                                              ),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    nearYou.name,
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  SizedBox(
                                                    height: 6,
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text(
                                                        nearYou.location,
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w200),
                                                      ),
                                                      Text(
                                                        ' | ',
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w200),
                                                      ),
                                                      Text(
                                                        nearYou.percentage,
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w200),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      bottom: TabBar(
                        labelPadding: EdgeInsets.symmetric(horizontal: 30),
                        isScrollable: true,
                        indicatorColor: Color(0xFF326549),
                        indicatorWeight: 3.0,
                        indicatorSize: TabBarIndicatorSize.label,
                        labelStyle: TextStyle(fontWeight: FontWeight.bold),
                        unselectedLabelStyle: TextStyle(fontSize: 10),
                        onTap: (index) {
                          setState(() {});
                        },
                        tabs: <Widget>[
                          Tab(
                            child: Text(
                              "Beauty",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ),
                          Tab(
                            child: Text(
                              "Food & Beverage",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ),
                          Tab(
                            child: Text(
                              "Pet",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ),
                          Tab(
                            child: Text(
                              "Appearance",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    body: TabBarView(
                      children: <Widget>[
                        BeautyPage(),
                        FoodAndBeveragePage(),
                        PetPage(),
                        AppearancePage()
                      ],
                    )),
              ),
            ));
          },
        ),
      ],
    );
  }
}
