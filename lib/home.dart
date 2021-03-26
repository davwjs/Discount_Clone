import 'package:discount_app/near_you_data.dart';
import 'package:discount_app/near_you_model.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    List<NearYouModel> NearYou = getNearYou.NearYou;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            SafeArea(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.menu),
                    onPressed: () {},
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
                            fontSize: 15, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 15),
                    alignment: Alignment.centerLeft,
                    height: 50,
                    child: Text(
                      "Near You",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.redAccent,
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width,
              child: PageView.builder(
                controller: PageController(viewportFraction: 0.9),
                scrollDirection: Axis.horizontal,
                itemCount: NearYou.length,
                onPageChanged: (index) {},
                itemBuilder: (BuildContext context, int index) {
                  NearYouModel nearYou = NearYou[index];
                  return Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClipRRect(
                          child: Stack(
                            children: [
                              Image(
                                height: 200,
                                width: MediaQuery.of(context).size.width * 0.9,
                                image: AssetImage(nearYou.image),
                                fit: BoxFit.cover,
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                  left: 10,
                                  top: 150,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      nearYou.name,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          nearYou.location,
                                          style: TextStyle(
                                            color: Colors.white70,
                                            fontSize: 15,
                                          ),
                                        ),
                                        Text(
                                          ' | ',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        Text(
                                          nearYou.percentage,
                                          style: TextStyle(
                                            color: Colors.white70,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(25),
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
    );
  }
}
